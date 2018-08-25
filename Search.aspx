<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultMaster.Master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Search" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
    .box{
    width:100%;
    height:40px;
    border-radius:5px;
    padding-left:10px;
}

     .boxTable{
    width:100%;
    height:40px;
    border-radius:2px;
    padding-left:2px;
    border:1px solid;
}

    .search
        {
          background:url('/image/icon/calender.png')right no-repeat;
            
            border:1px solid #ccc;
        } 
    .form{
        margin-top:10px;
    }

    .border{
        border:1px solid ;
    }
    .even{
        background-color:#f2f2f2;
    }
    .hei{
        height:30px;
    }
    .th{
        width:40px;
    }
    .btn{
        float:right;
        background-color:dodgerblue;
        border-radius:2px;
    }

    
        </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <br /><br />
    <div class="container">
        <div class="col-lg-6 col-md-6 col-sm-6">
            <div class="panel panel-info">
              <div class="panel-body"><h3 style="text-align:center">Want to Search!</h3>
                  <p style="text-align:center">Just type the location name and get know about the places..</p>
                  <p style="text-align:center">Just select the location and date to get details about the places.</p>
              </div>
            </div>
        </div>
        <div class="col-lg-2 col-sm-2 col-md-2"></div>
        
        
        <div class="col-md-5 col-lg-5 col-sm-5">
            <div class="panel panel-default">
                <div class="panel-body">
              
            
            <asp:DropDownList ID="ddlLocation" runat="server" CssClass="box " AutoPostBack="false">
                <asp:ListItem>Select Location</asp:ListItem>
            </asp:DropDownList>
            <br />
            <asp:TextBox ID="txtLocationDate" CssClass="box form search" runat="server" placeholder="dd-mm-yyyy" BackColor="White">  </asp:TextBox>
            <ajaxToolkit:CalendarExtender ID="CalendarExtender1" TargetControlID="txtLocationDate"  runat="server" format="MM/dd/yyyy" PopupPosition="BottomLeft" TodaysDateFormat="MMMM d,yyyy" />
            <asp:Button ID="btnSearch" OnClick="btnSearch_Click" runat="server" CssClass="btn-primary form btn" Text="Search" />
                  </div> 
                </div>
            </div>
                    
                    <%--<div style="height:40px">&nbsp</div>--%>
            <%--<div class="col-md-5 col-lg-5 col-sm-5 col-lg-offset-7 col-md-offset-7">
            <div class="panel panel-default">
                <div class="panel-body">--%>
                    
                    <asp:Panel ID="PanelStatusTable" runat="server" Visible="false">
                    <div class="col-md-5 col-lg-5 col-sm-5 col-lg-offset-6 col-md-offset-6">
                    <div class="panel panel-default">
                    <div class="panel-body">
                            <div  class="form" style="">
                                <table id="tblLocationStatus"  style="width:100%; text-align:center;">
                                    <tr style="background-color:#20496A; width:40px" class="border">
                                        <td style="color:white; font-size:18px">Date </td>
                                        <td style="color:white;font-size:18px">Status </td>
                                    </tr>

                                    <tr class=" hei ">
                                        <td> <asp:Label ID="lblDay1" runat="server" CssClass="" Text=""></asp:Label> </td>
                                        <td> <asp:Label ID="lblStatus1" runat="server" CssClass="" Text=""></asp:Label></td>
                                    </tr>

                                     <tr class="even hei">
                                        <td> <asp:Label ID="lblDay2" runat="server" Text=""></asp:Label> </td>
                                        <td> <asp:Label ID="lblStatus2" runat="server" Text=""></asp:Label></td>
                                    </tr>

                                     <tr class=" hei">
                                        <td> <asp:Label ID="lblDay3" runat="server" Text=" "></asp:Label> </td>
                                        <td> <asp:Label ID="lblStatus3" runat="server" Text=""></asp:Label></td>
                                    </tr>

                                     <tr class="hei even ">
                                        <td> <asp:Label ID="lblDay4" runat="server" Text=""></asp:Label> </td>
                                        <td> <asp:Label ID="lblStatus4" runat="server" Text=""></asp:Label></td>
                                    </tr>

                                     <tr class=" hei">
                                        <td> <asp:Label ID="lblDay5" runat="server" Text=""></asp:Label> </td>
                                        <td> <asp:Label ID="lblStatus5" runat="server" Text=""></asp:Label></td>
                                    </tr>

                                     <tr class="hei even">
                                        <td> <asp:Label ID="lblDay6" runat="server" Text=""></asp:Label> </td>
                                        <td> <asp:Label ID="lblStatus6" runat="server" Text=""></asp:Label></td>
                                    </tr>
                            
                                    <tr class=" hei">
                                        <td> <asp:Label ID="lblDay7" runat="server" Text=""></asp:Label> </td>
                                        <td> <asp:Label ID="lblStatus7" runat="server" Text=""></asp:Label></td>
                                    </tr>

                                    <tr class=" hei even">
                                        <td> <asp:Label ID="lblDay8" runat="server" Text=""></asp:Label> </td>
                                        <td> <asp:Label ID="lblStatus8" runat="server" Text=""></asp:Label></td>
                                    </tr>
                                </table>
                             </div>
                            </div>
                            </div>     
                            </div>
                         </asp:Panel>
                        <div class="col-lg-4 col-sm-4 col-md-4 col-lg-offset-0 col-md-offset-0 col-sm-offset-0">
                             <div class="panel panel-default">
                                  
                                  <div class="panel-body">
                                      <a href="/GetLocationDetails.aspx"><h2 style="text-align:center">Get Location Details</h2></a>
                                  </div>
                                </div>
                        </div>
                    </div>            


    
</asp:Content>

