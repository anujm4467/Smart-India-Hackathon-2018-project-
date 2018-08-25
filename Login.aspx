<%@ Page Title="Login" EnableEventValidation="false" Language="C#" MasterPageFile="~/DefaultMaster.Master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
   
    <link href="/css/MyCss.css" rel="stylesheet" type="text/css">
      <link rel="stylesheet" href="Resources/css/UserCss.css" type="text/css" />
    <script src="Resources/js/jquery-3.3.1.min.js" type="text/javascript"></script>
    <script src="Resources/js/userScript.js" type="text/javascript"></script>
    <style>
        .logForm
        {
            width:100%;
            height:40px;
            border-radius:4px;

        }
    </style>
   
    
   </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:UpdatePanel ID="upLogin" runat="server">
        <ContentTemplate>
            <br />
            <br />
            <div class="row">
                <div class="col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-4 col-md-offset-4">
                    <div class="login-panel panel panel-default alertForError">
                        <div class="panel-heading"><b style="font-size:22px; font-family:'Comic Sans MS'">Login</b></div>
                        <div class="panel-body">
                            <form role="form">
                                <fieldset>
                                    <div class="form-group">
                                        <asp:Label runat="server" ID="lblMessage" Visible="false"></asp:Label>
                                    </div>
                                    <div class="form-group">
                                   <asp:TextBox CssClass="form-control " ID="txtEmail" placeholder="E-mail" runat="server" ClientIDMode="Static" TextMode="Email" onblur="requiredField('txtEmail')"></asp:TextBox>  <!-- onblur="requiredField('txtEmail')"    ---->
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required" ControlToValidate="txtEmail" SetFocusOnError="true" ValidationGroup="btnLogin" CssClass="label label-danger" Font-Size="8pt" Font-Strikeout="False" ToolTip="This field is required"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="txtPassword" placeholder="Password" runat="server" TextMode="Password" ClientIDMode="Static" onblur="requiredField('txtPassword')"></asp:TextBox>
                                           <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required" ControlToValidate="txtPassword" SetFocusOnError="true" ValidationGroup="btnLogin" CssClass="label label-danger" Font-Size="8pt" Font-Strikeout="False" ToolTip="This field is required"></asp:RequiredFieldValidator>

                                    </div>

                                    <div class="col-lg-7 col-md-7 col-sm-7">
                                    <asp:Button CssClass="btn btn-primary loginBtn  buttonStyle" runat="server" ID="btnLogin" Text="Login" ValidationGroup="btnLogin" CausesValidation="false" OnClick="btnLogin_Click"  />
                                    <a href="javascript:void(0)" class="btn btn-primary resetBtn  buttonStyle" id="txtbtn" onclick="resetField()">Reset</a>
                                    </div>
                                    <div class="form-group col-lg-5  col-md-5 ">
                                        <a href="/ForgetPassword.aspx" class="forgotLink">Forget Password?</a>
                                    </div>
                                    <div class="col-lg-12 col-md-12 col-sm-12">
                                        <p style="text-align:center; margin-top:10px">Need an account ?&nbsp; <a href="/SignUp.aspx">Register</a></p>
                                    </div>
                                    
                                 </fieldset>

                            </form>
                        </div>
                    </div>
                </div>
            </div>


        </ContentTemplate>
    </asp:UpdatePanel>

</asp:Content>


