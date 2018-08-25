<%@ Page Title="Home" Language="C#" MasterPageFile="~/DefaultMaster.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<link rel="icon" type="image/ico" href="Image/icon/brain.ico" />
    <style>
         #menu1 #default{
       color:white;
   }
        .bgstyle
        {
      
            background-image: url("/Image/location/dbg.jpg");
            color:white;
            font-size:20px;
            height:100%;
            width:100%;
            font-family:'Bradley Hand ITC';
        }
        .centered {
            position: absolute;
            top: 40%;
            left:30%;
            transform: translate(-50%, -50%);
            font-size:16px;
            font-family:'Bookman Old Style';
            color:azure;            font-weight:bolder;
        }
        .dlt{
            margin-left:35%;
            margin-right:auto;
            height:100px;
            width:30%;
            text-align:center;
        }
        
    </style>
    

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height:5px">&nbsp</div>

      <!-- Slider images-->
    
<div class="container" style="width:100%; padding-left:5px !important; padding-right:5px !important " >
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators" style="margin-left:auto;margin-right:auto">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides--> 
    <div class="carousel-inner" style="z-index:auto">

      <div class="item active">
        <img src="image/slider/delhi1.jpg" alt="India gate" style="width:100%;">
        <div class="carousel-caption font-change">
          <h3>India Gate</h3>
          <p>Delhi is always so much fun!</p>
        </div>
      </div>

      <div class="item">
        <img src="image/slider/delhi2.jpg" alt="Red Fort" style="width:100%;">
        <div class="carousel-caption font-change">
          <h3>Red Fort</h3>
          <p>Thank you, Delhi!</p>
        </div>
      </div>
    
      <div class="item">
        <img src="image/slider/delhi3.jpg" alt="jama masjid" style="width:100%;">
        <div class="carousel-caption font-change">
          <h3>Jama Masjid</h3>
          <p>Holy Peace</p>
        </div>
      </div>
  
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class=""></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class=""></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
    <!--language translator-->
   

    <!-- jumbotron-->

    <div class="jumbotron font-change">
    <h1 style="text-align: center;"> Welcome to Delhi</h1>      
    <p style="text-align:center; font-family:Harrington; font-weight:bolder">Need a perfect location to shoot ?</p>
        <img src="Image/header/dltour.png" class="dlt"/>
  </div>

    
    <!--div class-->

    <div class="container">
  <div class="row">
    <div class="col-sm-4">
      <h3 style="text-align:center">India Gate</h3>
      <div class="panel panel-default" >
      <div class="panel-heading"><a id=""  href="https://en.wikipedia.org/wiki/India_Gate"><img src="image/location/indiagate.jpg" alt="india gate" style="width: 100%;height: 100%"></a></div>
      <div class="panel-body font-change" style="text-align:justify;text-justify:inter-word;font-family:Bahnschrift SemiLight">The India Gate (originally called the All India War Memorial) is a war memorial located astride the Rajpath, on the eastern edge of the "ceremonial axis" of New Delhi, India, formerly called Kingsway.<br /></div>
    </div>
    </div>
    <div class="col-sm-4">
      <h3 style="text-align:center">Jama Masjid</h3>
      <div class="panel panel-default" >
      <div class="panel-heading"><a id=""  href="https://en.wikipedia.org/wiki/Jama_Masjid,_Delhi"><img src="image/location/jama.jpg" alt="jama masjid" style="width: 100%;height: 100%"></a></div>
      <div class="panel-body font-change" style="text-align:justify;text-justify:inter-word;font-family:Bahnschrift SemiLight" ">The Masjid-i Jahān-Numā (Persian/Urdu: مسجدِ جہاں نما‬, Devanagari: मस्जिद जहान नुमा, the 'World-reflecting Mosque'), commonly known as the Jama Masjid of Delhi, is one of the largest mosques in India<br /></div>
    </div>    
  </div>
    <div class="col-sm-4">
      <h3 style="text-align:center">Red Fort</h3>        
      <div class="panel panel-default" >
      <div class="panel-heading " ><a id=""  href="https://en.wikipedia.org/wiki/Red_Fort"><img src="image/location/redfort.jpg" alt="red fort" style="width: 100%;height: 247px"></a></div>
      <div class="panel-body font-change font-family-use " style="text-align:justify;text-justify:inter-word; text-overflow:ellipsis; font-family:Bahnschrift SemiLight">The Red Fort is a historic fort in the city of Delhi in India. It was the main residence of the emperors of the Mughal dynasty for nearly 200 years, until 1856. It is located in the center of Delhi and houses a number of museums.</div>
    </div>    </div>
  </div>
</div>

    <div class="container">
        <div class="col-lg-12 col-md-12 col-sm-12">
            <%--<div class="col-lg-3 col-md-3 col-sm-3">
                 <div class="panel panel-default">
                     
                      <div class="panel-body bgstyle" style="text-align:center; color:azure;height:240px">
                          <b>Join Us</b><br /><hr />
                          <b>To register </b>&nbsp;:&nbsp;&nbsp;<div style="background-color:azure; width:60px; display:inline; font-size:16px;"><a href="/SignUp.aspx">&nbsp;click here</a></div> 
                     <br /> <br />     <b> For Log In </b>&nbsp;:&nbsp;&nbsp;<div style="background-color:azure; ; display:inline; font-size:16px;"> <a href="/Login.aspx">click here</a></div>
                      </div>
                 </div>
            </div>--%>
            <div class="col-lg-3 col-md-3 col-sm-3">
                <div class="panel panel-default">
                
                  <div class="panel-body">
                      <a href="https://www.mygov.in/"><img src="/Image/dag/mygov.jpg" width="100%"></a>
                  </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3">
                <div class="panel panel-default">
                  <div class="panel-body">
                      <a href="#"><img src="/Image/location/dbg.jpg" width="100%">
                      <div><p class="centered" style="background-color:beige;color:black">Login </p><a href="/Login.aspx" class="centered" style="font-size:15px; left:70%; font-family:'Bradley Hand ITC'" >Click here</a></div>
                  <div><p class="centered" style="background-color:beige;color:black;top:60%"> Register&nbsp; </p><a href="/SignUp.aspx" class="centered" style="font-size:15px; left:70%;top:60%; font-family:'Bradley Hand ITC'" >Click here</a></div></a>
                  </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3">
                <div class="panel panel-default">
                  <div class="panel-body">
                     <a href="http://www.delhitourism.gov.in/delhitourism/index.jsp"><img src="/Image/dag/dtourism.jpg" width="100%"></a>
                  </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3">
                <div class="panel panel-default">
                  <div class="panel-body">
                     <a href="https://i4c.in/"><img src="/Image/dag/i4c.jpg" width="100%" height="216px"></a>
                  </div>
                </div>
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

