using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Search : System.Web.UI.Page
{
    ApplicantController applicant = new ApplicantController();
    Query query = new Query();
    protected void Page_Load(object sender, EventArgs e)
    {
    if(!IsPostBack)
        {
            ddlLocation.DataSource = applicant.GetLocation();
            ddlLocation.DataTextField = "locationname";
            ddlLocation.DataValueField = "locationid";
            ddlLocation.DataBind();
        }
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {   
        bool[] flag = new bool[8];
        string locid = ddlLocation.SelectedValue;
        DateTime startdate = Convert.ToDateTime(txtLocationDate.Text);
        int startday = startdate.Day;
        List<string> dates = new List<string>();
        string enddate = startdate.AddDays(6).ToShortDateString();
        for (int i = 0; i < 8; i++)
        {
            dates.Add(startdate.AddDays(i).ToShortDateString());
        }

        string selectquery1 = $"SELECT unavaildates from datesavail where loacationid='{ddlLocation.SelectedValue}' " +
            $"and unavaildates >= '{startdate.ToShortDateString()}' and unavaildates <= '{enddate}'";
        string selectquery2 = $"select date as status from requestedshotinglocations where " +
            $"date >= '{txtLocationDate.Text}' and date <= '{enddate}' and locationid = '{locid}'";
        DataTable dt1 = query.Select(selectquery1);
        DataTable dt2 = query.Select(selectquery2);

        foreach (DataRow dr in dt1.Rows)
        {
            if (dates.Contains(dr["unavaildates"].ToString()))
            {
                int count = Convert.ToDateTime(dr["unavaildates"].ToString()).Day - startday ;
                Label lbday = (Label)PanelStatusTable.FindControl($"lblDay{count+1}");
                lbday.Text = dr["unavaildates"].ToString();
                Label lbstatus = (Label)PanelStatusTable.FindControl($"lblStatus{count+1}");
                lbstatus.Text = "Not Available";
                flag[count] = true;
            }
        }

        foreach (DataRow dr in dt2.Rows)
        {
            if (dates.Contains(dr["unavaildates"].ToString()))
            {
                int count = Convert.ToDateTime(dr["unavaildates"].ToString()).Day - startday;
                Label lbday = (Label)PanelStatusTable.FindControl($"lblDay{count+1}");
                lbday.Text = dr["unavaildates"].ToString();
                Label lbstatus = (Label)PanelStatusTable.FindControl($"lblStatus{count+1}");
                lbstatus.Text = "InProcess";
                flag[count] = true;
            }
        }

        for (int i = 0;i < flag.Length; i++)
        {
            if(!flag[i])
            {
                Label lbday = (Label)PanelStatusTable.FindControl($"lblDay{i+1}");
                lbday.Text = startdate.AddDays(i).ToShortDateString();
                Label lbstatus = (Label)PanelStatusTable.FindControl($"lblStatus{i+1}");
                lbstatus.Text = "Available";
            }
        }
        PanelStatusTable.Visible = true;
    }



}