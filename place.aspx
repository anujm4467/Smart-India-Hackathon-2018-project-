<%@ Page Title="Delhi Places" Language="C#" MasterPageFile="~/DefaultMaster.Master" AutoEventWireup="true" CodeFile="place.aspx.cs" Inherits="place" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
         #menu1 #dag{
       color:white;
   }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <br><br>
<!-- Jumbotron-->

<div class="container">
  <div class="jumbotron">   
    <div class="page-header">
    <h1 style="text-align: center;">Delhi at a Glance! <img src="image/dag/look.gif" style="height:70px; width:130px;"></h1>      
  </div>
    <div class="row1" style="background-color: #f5f5f5 ">
    <div class="container">
      <section class="customer-logos slider ">
        <div class="slide"><img src="image/dag/indiagate.jpg" alt="india gate" style="width:220px;height: 170px"></div>
        <div class="slide"><img src="image/dag/redfort.jpg" alt="red fort" style="width:220px;height: 170px"></div>
        <div class="slide"><img src="image/dag/agrasen.jpg" alt="agrasen" style="width:220px;height: 170px"></div>
        <div class="slide"><img src="image/dag/chandni.jpg" alt="chandni chowk" style="width:220px;height: 170px"></div>
        <div class="slide"><img src="image/dag/ConnaughtPlace.jpg" alt="cannought" style="width:220px;height: 170px"></div>
        <div class="slide"><img src="image/dag/du.jpg" alt="delhi university" style="width:220px;height: 170px"></div>
        <div class="slide"><img src="image/dag/hazrat.jpg"alt="hazrat nizamuddin" style="width:220px;height: 170px"></div>
        <div class="slide"><img src="image/dag/tughlaqabad.jpg" alt="tughlaqabad" style="width:220px;height: 170px"></div>
        <div class="slide"><img src="image/dag/lodhigarden.jpg" alt="lodhi garden" style="width:220px;height: 170px"></div>
        <div class="slide"><img src="image/dag/jamamasjid.jpg" alt="jama masjid" style="width:220px;height: 170px"></div>
        <div class="slide"><img src="image/dag/qutub.jpg" alt="qutub minar" style="width:220px;height: 170px"></div>
        <div class="slide"><img src="image/dag/humayun.jpg" alt="humayun" style="width:220px;height: 170px"></div>
      </section>
    </div>
  </div>
  </div>     
</div>








<!--Vertical division line-->

<div class="container">
  <div class="page-header">
    <h1 style="font-family: Segoe Print">Some Famous Spots</h1>      
  </div>    
</div>

<!--collapsable container-->


        

<!-- Panel-->
<div class="container font-change fontuse">   
  <div class="row">
    <div class="col-md-3" >
      <h3 style="font-family: Poor Richard; text-align: center">Chandni Chowk</h3>
      <div class="panel-group" >
        <div class="panel panel-default">
        <div class="panel-heading"><div class="zoom"><a href="https://en.wikipedia.org/wiki/Chandni_Chowk"><img src="image/dag/chandni.jpg" alt="chandni" width=100% height= 175px></a></div></div>
        <div class="panel-body ">The Chandni Chowk (Moonlight Square) is one of the oldest and busiest markets in Old Delhi, India. Chandni Chowk is located close to Old Delhi Railway Station. The Red Fort monument is located within the market. It was built in the 17th century by Mughal Emperor of India Shah Jahan and designed by his daughter Jahanara.</div>
        </div>
        </div>
      </div>
    <div class="col-md-3" >
      <h3 style="font-family: Poor Richard; text-align: center">Connaught Place</h3>
      <div class="panel-group">
        <div class="panel panel-default">
        <div class="panel-heading"><div class="zoom"><a href="https://en.wikipedia.org/wiki/Connaught_Place,_New_Delhi"><img src="image/dag/ConnaughtPlace.jpg" alt="cannaught place" width=100% height= 175px></a></div></div>
        <div class="panel-body ">Connaught Place is one of the largest financial, commercial and business centres in New Delhi, India. It is often abbreviated as CP and houses the headquarters of several noted Indian firms. The main commercial area of the new city, New Delhi, occupies a place of pride in the city and are counted among the top heritage structures in New Delhi.</div>
        </div>    
      </div>
    </div>
    <div class="col-md-3" >
      <h3 style="font-family: Poor Richard; text-align: center">Delhi University</h3>
      <div class="panel-group">
        <div class="panel panel-default">
        <div class="panel-heading"><div class="zoom"><a href="https://en.wikipedia.org/wiki/University_of_Delhi"><img src="image/dag/du.jpg" alt="delhi university" width=100% height= 175px></a></div></div>
        <div class="panel-body ">The University of Delhi, informally known as Delhi University (DU), is a collegiate public central university, located in New Delhi, India. It was founded in 1922 by an Act of the Central Legislative Assembly. As a collegiate university, its main functions are divided between the academic departments of the university and affiliated colleges.</div>
        </div>   
      </div>
    </div>
    <div class="col-md-3" >
      <h3 style="font-family: Poor Richard; text-align: center">Nizamuddin Dargah</h3>
      <div class="panel-group">
        <div class="panel panel-default">
        <div class="panel-heading"><div class="zoom"><a href="https://en.wikipedia.org/wiki/Nizamuddin_Dargah"><img src="image/dag/hazrat.jpg" alt="hazrat" width=100% height=175px></a></div></div>
        <div class="panel-body ">Nizamuddin Dargah is the dargah of one of the Sufi saints, Khwaja Nizamuddin Auliya (1238 - 1325 CE). Situated in the Nizamuddin West area of Delhi, the dargah is visited by thousands of people every week. The neighborhood surrounding the dargah is named after the saint, is divided into 2 parts: Nizamuddin West and Upper Nizamuddin Railway Station.</div>
        </div>   
      </div>
    </div>
  </div>
</div>

<!-- div line-->

<div class="container">
  <div class="page-header">   
  </div>    
</div>

<!--panel 2-->

<div class="container font-change fontuse">   
  <div class="row">
    <div class="col-md-3" >
      <h3 style="font-family: Poor Richard; text-align: center">Red Fort</h3>
      <div class="panel-group" >
        <div class="panel panel-default">
        <div class="panel-heading"><div class="zoom"><a href="https://en.wikipedia.org/wiki/Red_Fort"><img src="image/dag/redfort.jpg" alt="red fort" width=100% height=175px></a></div></div>
        <div class="panel-body ">The Red Fort (Hindi: लाल क़िला, Urdu: لال قلعہ‬‎) is a historic fort in the city of Delhi in India. It was the main residence of the emperors of the Mughal dynasty for nearly 200 years, until 1856. It is located in the center of Delhi and houses a number of museums. In addition to accommodating the emperors and their households.</div>
        </div>
        </div>
      </div>
    <div class="col-md-3" >
      <h3 style="font-family: Poor Richard; text-align: center">Qutub Minar</h3>
      <div class="panel-group">
        <div class="panel panel-default">
        <div class="panel-heading"><div class="zoom"><a href="https://en.wikipedia.org/wiki/Qutb_Minar"><img src="image/dag/qutub.jpg" alt="qutub minar" width=100% height=175px></a></div></div>
        <div class="panel-body ">The Qutub Minar ( कुतुब मिनार, قطب مینار‬‎) is a minaret that forms a part of the Qutab complex, a UNESCO World Heritage Site in the Mehrauli area of Delhi, India. Qutub Minar is a 73-metre (239.5 feet) tall tapering tower of five storeys, with a 14.3 metres (47 feet) base diameter, reducing to 2.7 metres (9 feet) at the peak.It contains a spiral staircase of 379 steps.</div>
        </div>    
      </div>
    </div>
    <div class="col-md-3" >
      <h3 style="font-family: Poor Richard; text-align: center">Tughlaqabad Fort</h3>
      <div class="panel-group">
        <div class="panel panel-default">
        <div class="panel-heading"><div class="zoom"><a href="https://en.wikipedia.org/wiki/Tughlaqabad_Fort"><img src="image/dag/tughlaqabad.jpg" alt="tughlaqabad" width=100% height= 175px></a></div></div>
        <div class="panel-body ">Tughlaqabad Fort is a ruined fort in Delhi, built by Ghiyas-ud-din Tughlaq, the founder of Tughlaq dynasty, of the Delhi Sultanate of India in 1321, as he established the third historic city of Delhi, which was later abandoned in 1327. It lends its name to the nearby Tughlaqabad residential-commercial area as well as the Tughlaqabad Institutional Area.</div>
        </div>   
      </div>
    </div>
    <div class="col-md-3" >
      <h3 style="font-family: Poor Richard; text-align: center">Lodi Garden</h3>
      <div class="panel-group">
        <div class="panel panel-default">
        <div class="panel-heading"><div class="zoom"><a href="https://en.wikipedia.org/wiki/Lodi_Gardens"><img src="image/dag/lodhigarden.jpg" alt="lodhigarden" width=100% height=175px></a></div></div>
        <div class="panel-body ">Lodi Gardens or Lodhi Gardens is a city park situated in New Delhi, India. Spread over 90 acres (360,000 m2),[1] it contains, Mohammed Shah's Tomb, Tomb of Sikandar Lodi, Shisha Gumbad and Bara Gumbad,[2] architectural works of the 15th century by Lodis- who ruled parts of northern India and Punjab and Khyber Pakhtunkhwa province.</div>
        </div>   
      </div>
    </div>
  </div>
</div>


<!-- div line-->

<div class="container">
  <div class="page-header">   
  </div>    
</div>

<!-- panel list 3-->

<div class="container font-change fontuse">   
  <div class="row">
    <div class="col-md-3" >
      <h3 style="font-family: Poor Richard; text-align: center">Humayun's Tomb</h3>
      <div class="panel-group" >
        <div class="panel panel-default">
        <div class="panel-heading"><div class="zoom"><a href="https://en.wikipedia.org/wiki/Humayun%27s_Tomb"><img src="image/dag/humayun.jpg" alt="humayun" width=100% height=175px></a></div></div>
        <div class="panel-body ">Humayun's tomb (Maqbaera e Humayun) is the tomb of the Mughal Emperor Humayun in Delhi, India. The tomb was commissioned by Humayun's first wife and chief consort, Empress Bega Begum (also known as Haji Begum), in 1569-70, and designed by Mirak Mirza Ghiyas, a Persian architect chosen by her.</div>
        </div>
        </div>
      </div>
    <div class="col-md-3" >
      <h3 style="font-family: Poor Richard; text-align: center">India Gate</h3>
      <div class="panel-group">
        <div class="panel panel-default">
        <div class="panel-heading"><div class="zoom"><a href="https://en.wikipedia.org/wiki/India_Gate"><img src="image/dag/indiagate.jpg" alt="india gate" width=100% height=175px></a></div></div>
        <div class="panel-body ">The India Gate (originally called the All India War Memorial) is a war memorial located astride the Rajpath, on the eastern edge of the "ceremonial axis" of New Delhi, India. 13,218 war dead are commemorated by name on the India Gate. Due to security reasons access to read the names on the memorial is restricted.</div>
        </div>    
      </div>
    </div>
    <div class="col-md-3" >
      <h3 style="font-family: Poor Richard; text-align: center">Jama Masjid</h3>
      <div class="panel-group">
        <div class="panel panel-default">
        <div class="panel-heading "><div class="zoom"><a href="https://en.wikipedia.org/wiki/Jama_Masjid,_Delhi"><img src="image/dag/jamamasjid.jpg" alt="jama masjid" width=100% height=175px></a></div></div>
        <div class="panel-body ">The Masjid-i Jahān-Numā (Persian/Urdu: مسجدِ جہاں نما‬, Devanagari: मस्जिद जहान नुमा, the 'World-reflecting Mosque'), commonly known as the Jama Masjid (Hindi: जामा मस्जिद) of Delhi, is one of the largest mosques in India. It was built by Mughal emperor Shah Jahan at a cost of 1 million rupees.</div>
        </div>   
      </div>
    </div>
    <div class="col-md-3" >
      <div class="panel-group">
        <h3 style="font-family: Poor Richard; text-align: center">Agrasen ki Baoli</h3>
        <div class="panel panel-default">
        <div class="panel-heading"><div class="zoom"><a href="https://en.wikipedia.org/wiki/Agrasen_ki_Baoli"><img src="image/dag/agrasen.jpg" alt="agrasen" width=100% height=175px></a></div></div>
        <div class="panel-body ">Agrasen ki Baoli (also known as Agrasen ki Baodi), designated a protected monument by the Archaeological Survey of India (ASI) under the Ancient Monuments and Archaeological Sites and Remains Act of 1958, is a 60-meter long and 15-meter wide historical step well  near Connaught Place, India.</div>
        </div>   
      </div>
    </div>
  </div>
</div>


    <!-- font change script -->

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

