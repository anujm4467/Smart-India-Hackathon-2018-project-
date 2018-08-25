<%@ Page Title="Contact Us" Language="C#" MasterPageFile="~/DefaultMaster.Master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
         #menu1 #contact{
       color:white;
   }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br><br>
<!-- Jumbotron-->

<div class="container">
    <%--<img src="/Image/dag/bgpic.jpg" width="100%" height="100%" position="fixed" />--%>
  <div class="row">
      <div class="container">
        <div class="page-header">
          <h1 style="font-family: Segoe Print">Contact Us</h1>      
        </div>    
      </div>

      <div class="panel panel-info">
      <div class="panel-heading headpanel">DELHI TOURISM AND TRANSPORTATION DEVELOPMENT CORPORATION</div>
      
      </div>

      <div class="row">
        <div class="col-sm-4">
          <div class="panel panel-success">
            
            <div class="panel-body font-to-Rajdhani font-change"><b>18-A, D.D.A.SCO Complex</b><br>
                Defence Colony,<br>
                New Delhi - 24,<br>
                Ph: 91-11-24647005, 24698431, 24618026<br>
                Fax : 91-11-24697352, 24610500
            </div>
          </div>

        </div>
        <div class="col-sm-4">
          <div class="panel panel-success">
            
            <div class="panel-body font-change"><b>Tourist Central Reservation Office</b><br><br>
                Ph: 91-11-23365358, 23363607<br>
                Fax: 91-11-23367322<br>
                E-mail: tourism@delhitourism.gov.in<br>

            </div>
          </div>

        </div>
        <div class="col-sm-4">
          <div class="panel panel-success">
            
            <div class="panel-body font-change"><b>Tourist City Information Service</b><br><br>
                Ph: 91-11-1280<br><br><br>

            </div>
          </div>

        </div>
        
      </div>


  </div>
</div>

<div class="container">
  <div class="row">
      <div class="panel panel-default">
      <div class="panel-heading headpanel">Tourist Information cum Booking office in Delhi </div>
      </div>
    </div>
  </div>

<div class="container">
  <div class="row">
      
        <div class="col-sm-4">
            <div class="panel panel-default">
            <div class="panel-body font-change">
              Central Reservation Office, Coffee Home-1,<br> Baba Kharak Singh Marg, 
                New Delhi-110001,<br>
                Ph: 23365358, 23363607, Fax: 23367322
            </div>
            </div>

        </div>
        <div class="col-sm-4">
          <div class="panel panel-default">
            <div class="panel-body font-change">
              I-Center, Baba Kharak Singh Marg,<br> New Delhi-110001<br><br>
            </div>
            </div>

        </div>
        <div class="col-sm-4">
          <div class="panel panel-default">
            <div class="panel-body font-change">
               New Delhi Railway Station <br>(PaharGanj side, Near Exit Gate no. 1)<br>
                Ph: 011-23741871

            </div>
            </div>
        </div>




        <div class="row">
          <div class="col-sm-2"></div>
          <div class="col-sm-4">
            <div class="panel panel-default">
            <div class="panel-body font-change">
                Dilli Haat - INA,
                  Ph: 011-65390009


            </div>
            </div>

          </div>
          <div class="col-sm-4">
            
            <div class="panel panel-default">
            <div class="panel-body font-change">
                 Domestic Airport- T-1 (Arrival), 
                  PH: 011-25675609


            </div>
            </div>
          </div>
          <div class="col-sm-2"></div>
        </div>
      

  </div>
</div>

<div class="container">
  <div class="row">
      <div class="panel panel-default">
      <div class="panel-heading headpanel">Tourist Information cum Booking office outside Delhi </div>
      </div>
    </div>
  </div>

  <div class="container">
  <div class="row">
      
        <div class="col-sm-2">
          
        </div>


        <div class="col-sm-4">
            <div class="panel panel-default">
            <div class="panel-body font-change">
              <b> Kolkata</b><br>
                Mrs. Joy Shree Sinha Roy<br>
                Ballygunge, new AC market, 46/31/1, Gariahat Road<br>
                Kolkatta-700029<br>
                Mobile: 08622854095, 08334973844

            </div>
            </div>

        </div>
        <div class="col-sm-4">
          <div class="panel panel-default">
            <div class="panel-body font-change">
              <b>Chennai</b><br>
                Mr. Radhakrishnan,
                C/O Delhi Tourism<br>
                Tamilnadu tourism Complex,<br>
                Wallajan Road,
                Chennai-600002<br>
                Mobile: 09283497985

            </div>
            </div>

        </div>
        <div class="col-sm-2">
          
        </div>

      </div>
    </div>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#linkIncrease').click(function () {
                modifyFontSize('increase');
            });

            $('#linkDecrease').click(function () {
                modifyFontSize('decrease');
            });

            $('#linkReset').click(function () {
                modifyFontSize('reset');
            })

            function modifyFontSize(flag) {
                var divElement = $('.font-change');
                var currentFontSize = parseInt(divElement.css('font-size'));

                if (flag == 'increase')
                    currentFontSize += 1;
                else if (flag == 'decrease')
                    currentFontSize -= 1;
                else
                    currentFontSize = 16;

                divElement.css('font-size', currentFontSize);
            }
        });
    </script>
</asp:Content>

