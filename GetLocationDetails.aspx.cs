using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Threading.Tasks;
using System.Net;
using System.Web.Script.Serialization;


public partial class GetLocationDetails : System.Web.UI.Page
{
    AdminController adminc = new AdminController();
    DataTable dt = new DataTable();
    Query q = new Query();
    protected void Page_Load(object sender, EventArgs e)
    {
        PanelDescription.Visible = false;
        PanelImage.Visible = false;
        if(!IsPostBack)
        { 
            dt = adminc.GetLocations();
            ddlGetLocationDetails.DataSource = dt;
            ddlGetLocationDetails.DataTextField = ("locationname");
            ddlGetLocationDetails.DataValueField = ("locationid");
            ddlGetLocationDetails.DataBind();
            ddlGetLocationDetails.Items.Insert(0, "Select Location");
            ddlGetLocationDetails.SelectedIndex = 0;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //Adding location description and image
        Location lc = adminc.GetLocation(ddlGetLocationDetails.SelectedValue.ToString());
        string st = ddlGetLocationDetails.SelectedValue;
        lblDescription.Text = lc.LocationDescription;
        PanelDescription.Visible = true;
        imgLocation.ImageUrl = "/Image/Location/"+ (lc.ImagePath).ToString();
        PanelMap.Visible = true;
        PanelImage.Visible = true;
        Panel1.Visible = true;
        string lat = "";
        string lon = "";
        lat = q.GetSingleValue("select latitude from location where locationname='"+ddlGetLocationDetails.SelectedItem.ToString()+"'");
        lon = q.GetSingleValue("select longitude from location where locationname='"+ ddlGetLocationDetails.SelectedItem.ToString() + "'");
        ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "text", "initialize('" + lat + "','" + lon + "')", true);


        //adding weather forcasting


    }
    protected void ShowWeather(string date)
    {



    }

    protected void txtDob_TextChanged(object sender, EventArgs e)
    {
          weather.Visible = true;
          Panel1.Visible = true;
        PanelMap.Visible = true;
    }

    protected void Date_Click(object sender, EventArgs e)
    {
        PanelImage.Visible = true;
        PanelDescription.Visible = true;
        PanelMap.Visible = true;
        weather.Visible = true;
        Panel1.Visible = true;
        GetWeatherInfo();
        PanelImage.Visible = true;
        Panel1.Visible = true;
        string lat = "";
        string lon = "";
        lat = q.GetSingleValue("select latitude from location where locationname='" + ddlGetLocationDetails.SelectedItem.ToString() + "'");
        lon = q.GetSingleValue("select longitude from location where locationname='" + ddlGetLocationDetails.SelectedItem.ToString() + "'");
        ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "text", "initialize('" + lat + "','" + lon + "')", true);
    }



    public void GetWeatherInfo()
    {
        string appId = "06a28f5811a329ffb49428d16e601bcb";
        string url = "http://api.openweathermap.org/data/2.5/weather?q=Delhi&units=metric&APPID=25b42f0574c57c619e027b235aec4996";
        // string url = "http://api.openweathermap.org/data/2.5/weather?q=Berlin&APPID=25b42f0574c57c619e027b235aec4996";
        using (WebClient client = new WebClient())
        {
            string json = client.DownloadString(url);
            var s = new JavaScriptSerializer();
            dynamic result = s.DeserializeObject(json);

            WeatherInfo weatherInfo = (new JavaScriptSerializer()).Deserialize<WeatherInfo>(json);
            lblCity_Country.Text = Convert.ToString(result["name"]) + "," + Convert.ToString(result["sys"]["country"]);
            string countrypic = Convert.ToString(result["sys"]["country"]);
            imgCountryFlag.ImageUrl = "http://openweathermap.org/images/flags/" + countrypic.ToLower() + ".png";



            Dictionary<string, object> desc = result["weather"][0];


            lblDesc.Text = desc["description"].ToString();
            imgWeatherIcon.ImageUrl = "http://openweathermap.org/img/w/" + Convert.ToString(desc["icon"]) + ".png";


            lblTempMin.Text = result["main"]["temp_min"] + "°С";

             //lblTempMax.Text = Convert.ToString(Math.Round(FtoC(Convert.ToDouble(result["main"]["temp_max"])), 1)) + "°С";

            
           // lblTempDay.Text = Convert.ToString(Math.Round(FtoC(Convert.ToDouble(result["main"]["temp"])), 1)) + "°С";

            //lblTempNight.Text = Convert.ToString(Math.Round(FtoC(Convert.ToDouble(result["main"]["temp"])), 1)) + "°С";

            lblHumidity.Text = "Humidity: "+Convert.ToString(result["main"]["humidity"]);

            tblWeather.Visible = true;

        }


    }

    public double FtoC(double F)
    {
        return F;
        //return (F - 273);
    }



    public class WeatherInfo
    {
        public City city { get; set; }
        public List<List> list { get; set; }
    }

    public class City
    {
        public string name { get; set; }
        public string country { get; set; }
    }

    public class Temp
    {
        public double day { get; set; }
        public double min { get; set; }
        public double max { get; set; }
        public double night { get; set; }
    }

    public class Weather
    {
        public string description { get; set; }
        public string icon { get; set; }
    }

    public class List
    {
        public Temp temp { get; set; }
        public int humidity { get; set; }
        public List<Weather> weather { get; set; }
    }





}