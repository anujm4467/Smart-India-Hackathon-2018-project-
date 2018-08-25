<%@ Page Title="Sign Up" EnableEventValidation="false" Language="C#" MasterPageFile="~/DefaultMaster.Master" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="User_SignUp" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>




<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="/css/MyCss.css" rel="stylesheet" type="text/css">
  
         <script type="text/javascript">
    $(document).ready(function(){
      $('.customer-logos').slick({
        slidesToShow: 6,
        slidesToScroll: 1,
        autoplay: true,
        autoplaySpeed: 1000,
        arrows: false,
        dots: false,
          pauseOnHover: false,
          responsive: [{
          breakpoint: 768,
          settings: {
            slidesToShow: 4
          }
        }, {
          breakpoint: 520,
          settings: {
            slidesToShow: 3
          }
        }]
      });
    });
  </script>
    <style>
    .search
        {
          background:url('/image/icon/calender.png')right no-repeat;
            
            border:1px solid #ccc;
        }
        </style>

   </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server" >
    <asp:UpdatePanel ID="userSignUp" runat="server">
        <ContentTemplate>
            <br />
            <br />
          <div class="row">
		<div class="col-xs-8 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-5 col-lg-4 col-md-offset-3 col-lg-offset-4">
			<div class="login-panel panel panel-default">
				<div class="panel-heading"><b style="font-size:22px; font-family:'Comic Sans MS'">Register</b></div>
				<div class="panel-body">
					<!--<form role="form">-->
						<fieldset>
                           <div class="container" style="margin-bottom:5px"> <asp:Label ID="lblError" runat="server" Text="" cssClass="alert-danger"></asp:Label> </div> 
							<div class="form-group col-md-6 col-lg-6 col-sm-6"  >
                               
                                 <asp:TextBox CssClass="form-control" Style="height:40px;" ID="signuptxtFirstName" placeholder="FirstName" runat="server" ClientIDMode="Static" onblur="requiredField('signuptxtFirstName')" ToolTip="First Name"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" SetFocusOnError="true" ControlToValidate="signuptxtFirstName" runat="server" ErrorMessage="Required" ValidationGroup="signuptxtButton" cssClass="label label-danger"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group col-md-6 col-lg-6 col-sm-6"  >
                     <asp:TextBox CssClass="form-control" ID="signuptxtLastName" Style="height:40px;" placeholder="Last Name" runat="server" ClientIDMode="Static" onblur="requiredField('signuptxtLastName')" ToolTip="Last Name"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" SetFocusOnError="true" ControlToValidate="signuptxtLastName" runat="server" ErrorMessage="Required" ValidationGroup="signuptxtButton" cssClass="label label-danger"></asp:RequiredFieldValidator>
                            </div>
                            
                            <div class="form-group col-md-12 col-lg-12 col-sm-12">
                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                    <ContentTemplate>
                                        <asp:TextBox CssClass="form-control" ID="signuptxtEmail" AutoPostBack="true" Style="height: 40px;" type="email" placeholder="E-mail" runat="server" ClientIDMode="Static" onblur="requiredField('signuptxtEmail')" OnTextChanged="signuptxtEmail_TextChanged" ToolTip="Email"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" SetFocusOnError="true" ControlToValidate="signuptxtEmail" runat="server" ErrorMessage="Required" ValidationGroup="signuptxtButton" CssClass="label label-danger"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" ValidationGroup="signuptxtButton" ControlToValidate="signuptxtEmail" runat="server" ErrorMessage="Enter a valid email id" CssClass="label label-danger" ValidationExpression="^\w+[\w-\.]*\@\w+((-\w+)|(\w*))\.[a-z]{2,3}$"></asp:RegularExpressionValidator>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                            </div>
							<div class="form-group col-md-12 col-lg-12 col-sm-12">
								
                                <asp:TextBox CssClass="form-control" ID="signuptxtPassword" Style="height:40px;" type="password" placeholder="Enter Password" runat="server" ClientIDMode="Static" onblur="requiredField('signuptxtPassword')" ToolTip="Enter password"></asp:TextBox>
                                <ajaxToolkit:BalloonPopupExtender runat="server" UseShadow="false" BalloonPopupControlID="Panel1" ExtenderControlID=""  CustomCssUrl=""  BehaviorID="signuptxtPassword_BalloonPopupExtender" TargetControlID="signuptxtPassword" ID="signuptxtPassword_BalloonPopupExtender"></ajaxToolkit:BalloonPopupExtender>
                                <asp:Panel ID="Panel1" runat="server" BackColor="White" Font-Size="Small">Minimum 8 charecters<br />A capital upper case letter <br />A lower case letter <br /> A number<br />A special Charecter </asp:Panel>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="signuptxtPassword" ValidationGroup="signuptxtButton" runat="server" ErrorMessage="" ValidationExpression=''></asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" SetFocusOnError="true" ControlToValidate="signuptxtPassword" runat="server" ErrorMessage="Required" ValidationGroup="signuptxtButton" cssClass="label label-danger"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group col-md-12 col-lg-12 col-sm-12">
							
                                <asp:TextBox CssClass="form-control" ID="signuptxtConfirmPassword" Style="height:40px;" type="password"  placeholder="Confirm Password" runat="server" ClientIDMode="Static" onblur="requiredField('signuptxtConfirmPassword')" ToolTip="confirm password"></asp:TextBox>
                                <asp:CompareValidator ID="CompareValidator1"  SetFocusOnError="true" ControlToValidate="signuptxtConfirmPassword" ControlToCompare="signuptxtPassword" runat="server" ErrorMessage="Password do not match" ValidationGroup="signuptxtButton" cssClass="label label-danger"></asp:CompareValidator>
                                </div>
                            
                            
                        
                             <div class="form-group col-md-4 col-lg-4 col-sm-4">
                                
                  <span >DOB</span> 
                                 </div>
                            <div class="form-group col-md-8 col-lg-8 col-sm-8">
                           <asp:TextBox ID="txtDob" CssClass="search form-control" runat="server" placeholder="dd-mm-yyyy" BackColor="White">  </asp:TextBox>
                            <ajaxToolkit:CalendarExtender ID="CalendarExtender1" TargetControlID="txtDob"  runat="server" format="dd/MM/yyyy" PopupPosition="BottomLeft" TodaysDateFormat="MMMM d,yyyy" />
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="signuptxtButton" SetFocusOnError="true" ControlToValidate="txtDob" runat="server" ErrorMessage="Required" cssClass="label label-danger col-md-4 col-lg-4 col-sm-4"></asp:RequiredFieldValidator>
                            </div>

                   
                    
                            <div class="form-group col-md-4 col-lg-4 col-sm-4">
                                 <span>Gender</span>
                            </div>
                            <div class="form-group col-md-8 col-lg-8 col-sm-8 ">
                                
                                 <asp:RadioButtonList ID="radioButtonListGender" runat="server" BackColor="White" Font-Size="Small" ForeColor="Gray" Height="35px" RepeatDirection="Horizontal" Width="264px">
                                       <asp:ListItem Selected="True">Male</asp:ListItem>
                                       <asp:ListItem>Female</asp:ListItem>
                                       <asp:ListItem>Other</asp:ListItem>
                                   </asp:RadioButtonList>
                                </div>
                            <div class="form-group col-md-12 col-lg-12 col-sm-12">
                  <asp:TextBox CssClass="form-control" ID="signuptxtPhoneNumber" Style="height:40px;"  placeholder="Phone Number" runat="server" ClientIDMode="Static" onblur="requiredField('signuptxtPhoneNumber')" Font-Overline="False"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator4" SetFocusOnError="true" ControlToValidate="signuptxtPhoneNumber" runat="server" ErrorMessage="Required" ValidationGroup="signuptxtButton" cssClass="label label-danger"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ValidationGroup="signuptxtButton" runat="server" ErrorMessage="Enter a valid 10 digit mobile number" ControlToValidate="signuptxtPhoneNumber" cssClass="label label-danger" ValidationExpression="^[6789][0-9]{9}"></asp:RegularExpressionValidator> 
                                </div>
                        <div class="form-group col-md-12 col-lg-12 col-sm-12">
                            <asp:TextBox CssClass="form-control" ID="signuptxtAdhaarId" Style="height:40px;" placeholder="Adhaar Id" runat="server" ClientIDMode="Static" onblur="requiredField('signuptxtAdhaarId')"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" SetFocusOnError="true" ControlToValidate="signuptxtAdhaarId" runat="server" ErrorMessage="Required" ValidationGroup="signuptxtButton" cssClass="label label-danger"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" ControlToValidate="signuptxtAdhaarId" ValidationGroup="signuptxtButton" runat="server" ErrorMessage="Enter a valid 12 digit valid adhaar ID" cssClass="label label-danger" ValidationExpression="^[0-9]{12}"></asp:RegularExpressionValidator>
                        </div>


                        

<%--                        <div Class="col-lg-12 col-md-12 col-sm-12">
                            <div class=" col-lg-5 col-md-5 col-sm-5 ">
                                <asp:Label ID="Label2" runat="server" Text="Enter Here" style="margin-top:100px"></asp:Label>
                            </div>

                            <div class=" col-lg-7 col-md-7 col-sm-7 col-lsg-offset-5 col-md-offset-5 col-sm-offset-5 ">
                                <asp:TextBox ID="txtCaptchaTest" CssClass="form-control" Style="height:40px;" placeholder="Captcha" ClientIDMode="Static" onblur="requiredField('txtCaptchaTest')" runat="server"  />      
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator5" SetFocusOnError="true" ControlToValidate="txtCaptchaTest" runat="server" ErrorMessage="Required" ValidationGroup="signuptxtButton" cssClass="label label-danger"></asp:RequiredFieldValidator>
                              </div>
                                </div>--%>
                            
                                <div class="col-lg-6 col-md-6 col-sm-6">
                                <asp:UpdatePanel ID ="upCaptcha" runat="server">
                                    <ContentTemplate>

                                        <asp:Image ID="imagCaptcha" runat="server" />&nbsp;&nbsp;<asp:ImageButton ID="ibtnRefresh" runat="server" ImageUrl="~/Image/Icon/icoRefresh.png" onclick="ibtnRefresh_Click" style=""/>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6">
                                <asp:TextBox ID="txtCaptchaTest" CssClass="form-control" Style="height:40px;" placeholder="Captcha" ClientIDMode="Static" onblur="requiredField('txtCaptchaTest')" runat="server"  />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" SetFocusOnError="true" ControlToValidate="txtCaptchaTest" runat="server" ErrorMessage="Required" ValidationGroup="signuptxtButton" cssClass="label label-danger"></asp:RequiredFieldValidator>
                                </div>
                                
<%--                                <asp:Image ID="imagCaptcha" runat="server" ImageUrl="~/User/CaptchaImage.aspx" Width="200px" Height="40px" />--%>
                            <%--</div>--%>
                          <div class=" col-lg-12 col-md-12 col-sm-12" style="height:20px">
                            </div>
                   
                            <div class="form-group col-md-6 col-lg-6 col-sm-6">
                            <asp:Button ID="signuptxtButton" CssClass="form-control btn btn-primary col-md-4 col-lg-4 col-sm-4" runat="server" Text="SignUp" OnClick="signuptxtButton_Click1" />
                           <%-- <button runat="server" class="btn btn-primary resetBtn col-md-3 col-lg-3 col-lg-offset-1 buttonStyle" onclick="">Reset</button>--%>
                            </div>
                                <div class="form-group col-md-6 col-lg-6 col-sm-6">
                                <input id="Reset1" type="reset" value="reset" class="form-control btn btn-primary col-md-4 col-lg-4 col-sm-4 " />
                            </div>
							</fieldset>
					<!--</form> -->
				</div>
			</div>
		</div>
	</div>
            
          
             </ContentTemplate>
      
    </asp:UpdatePanel>
   
	  
</asp:Content>

