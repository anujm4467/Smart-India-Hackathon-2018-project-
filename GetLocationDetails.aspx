<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultMaster.Master" AutoEventWireup="true" CodeFile="GetLocationDetails.aspx.cs" Inherits="GetLocationDetails" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .ddl
        {
            width:100%;
            height:40px;
            border-radius:5px;
            padding-left:10px;
        }
        .button{
            margin-top:10px;
        }
        .tableWeather{
            width:60%;
            height:150px;
            text-align:center;
            font-family:Calibri;
            font-size:24px;
            border:0px none;
            border-style:none;

        }
        #imgWeatherIcon
        {
    
        }
        .auto-style1 {
            left: 0px;
            top: 1px;
        }
        .desc{
            text-align:justify;
        }
    </style>
    <script type="text/javascript" src="http://maps.google.com/maps/api/js?key=AIzaSyAYEqxURtf3lLs5kftvkBEoKLzrFNbKurk&callback=initMap"></script>
    <script type="text/javascript">
        function initialize(lat,lon) {
            
   var latlng = new google.maps.LatLng(lat,lon);
    var map = new google.maps.Map(document.getElementById('map'), {
      center: latlng,
      zoom: 15
    });
 
    var marker = new google.maps.Marker({
      map: map,
      position: latlng,
      draggable: false,
      anchorPoint: new google.maps.Point(0, -30)
   });
    
}
//google.maps.event.addDomListener(window, 'load', initialize);
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <asp:UpdatePanel ID="GetLocation" runat="server">
        <ContentTemplate>

        
    <div class="container">
        <div class="col-lg-12 col-md-12 col-sm-12">
            <div class="col-lg-6 col-md-6 col-sm-6 col-lg-offset-3 col-md-offset-3 col-sm-offset-3">
                <div class="panel panel-default">
                  <div class="panel-body">
                      <div style="font:25px;font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;text-align:center;font-size:20px">Check Location Details</div>
                      <asp:DropDownList ID="ddlGetLocationDetails" CssClass="ddl" runat="server">
                          <asp:ListItem>Select Location</asp:ListItem>
                      </asp:DropDownList>
                      <asp:Button ID="Button1" OnClick="Button1_Click" runat="server" CssClass="button btn btn-success col-lg-offset-9" Text="Get Details" />
                  </div>
                </div>
            </div>
        </div>

        <div class="col-lg-12 col-md-12 col-sm-12">
            <div class="col-lg-6 col-md-6 col-sm-6">
                <asp:Panel ID="PanelDescription" runat="server" Visible="false">
                    <div class="panel panel-default">
                      <div class="panel-body" style="text-align:justify !important">
                          <asp:Label ID="lblDescription" runat="server" CssClass="desc" Text="Label"></asp:Label>
                      </div>
                    </div>
                </asp:Panel>
            </div>
            
             <div class="col-lg-6 col-md-6 col-sm-6">
                <asp:Panel ID="PanelImage" runat="server" Visible="false">
                    <div class="panel panel-default col-md-12 col-lg-12">
                      <div class="panel-body " >
                          <asp:Image ID="imgLocation"  runat="server" Width="100%"  />
                      </div>
                    </div>
                </asp:Panel>
              </div>
        </div>
        <div class="col-lg-12 col-md-12 col-sm-12">
            <!--Map Panel-->
            <div class="col-lg-12 col-md-12 col-sm-12 col col-lg-offset-0 col-md-offset-0 col-sm-offset-0">
                <asp:Panel ID="PanelMap" runat="server" Visible="false" >
               <div id="map" style="height:300px"></div>         
                </asp:Panel>
            </div>
            </div>
         <div class="col-lg-12 col-md-12 col-sm-12">   
           <div style=""></div>
            <div class="col-lg-6 col-md-6 col-sm-6 panel col-lg-offset-3 col-md-offset-3 col-sm-offset-3">
                <asp:Panel ID="Panel1" runat="server" Visible="false">
                    <div class="panel panel-default">
                      <div class="panel-body">
                          <div style="font:25px;font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;text-align:center;font-size:20px">Check Weather Details</div>
                          <div class="auto-style1 col-lg-6">
                          <asp:TextBox ID="txtDate" runat="server" CssClass="form-control col-lg-4 col-md-4 col-sm-4" placeholder="dd-mm-yyyy" BackColor="White">  </asp:TextBox>
                            <ajaxToolkit:CalendarExtender ID="CalendarExtender1" TargetControlID="txtDate" runat="server" Format="dd/MM/yyyy" PopupPosition="BottomLeft" TodaysDateFormat="MMMM d,yyyy" /> 
                          </div>
                          <div class="col-lg-2 col-md-2 col-sm-2">
                            <asp:Button ID="Date" runat="server" Text="Go" OnClick="Date_Click" CssClass="btn btn-primary" />
                          </div>
                      </div>
                    </div>
                </asp:Panel>
            </div>
            <updatepanel runat="server">
             <div style="height:20px"></div>
            <div class="col-lg-12 col-md-12 col-sm-12">
            <div class="col-lg-6 col-md-6 col-sm-6 col-lg-offset-4 col-sm-offset-4 col-md-offset-4">
                <asp:Panel ID="weather" runat="server" Visible="false">
                            <asp:Table ID="tblWeather" runat="server" BorderStyle="None" CssClass="tableWeather" BorderWidth="0px" GridLines="Both" Visible="False">
                                <asp:TableRow>
                                    <asp:TableCell ColumnSpan="2" BackColor="#3498DB  " >
                                        Weather Information
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell RowSpan="2">
                                        <asp:Image ID="imgWeatherIcon" runat="server" />
                                    </asp:TableCell>
                                    <asp:TableCell>
                                        <asp:Label ID="lblCity_Country" runat="server" Text="Label"></asp:Label>&nbsp
                                        <asp:Image ID="imgCountryFlag" runat="server" />&nbsp
                                        <asp:Label ID="lblDesc" runat="server" Text="Label"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell>
                                        <asp:Label ID="lblTempMin" runat="server" Text="Label"></asp:Label>
                                        &nbsp 
                                        <asp:Label ID="lblHumidity" runat="server" Text="Label"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>
                 </asp:Panel>
             </div>
             </div>
        </updatepanel>
                </div>
        
            
        </div>
    
    </ContentTemplate>
</asp:UpdatePanel>
</asp:Content>

