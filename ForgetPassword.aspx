<%@ Page Title="Forget Password" Language="C#" MasterPageFile="~/DefaultMaster.master" AutoEventWireup="true" CodeFile="ForgetPassword.aspx.cs" Inherits="User_ForgetPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="/css/MyCss.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="Resources/css/UserCss.css" type="text/css" />
    <script src="Resources/js/jquery-3.3.1.min.js" type="text/javascript"></script>
    <script src="Resources/js/userScript.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:UpdatePanel ID="upForgetPassword" runat="server">
        <ContentTemplate>
            <br />
            <br />
            <div class="row">
                <div class="col-md-4 col-lg-4 col-sm-4 col-lg-offset-4 col-md-offset-4" >
                <%--<div class="col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-6 col-md-offset-4 col-lg-6">--%>
                    <div class="login-panel panel panel-default alertForError">
                       <%-- <div class="panel-heading">Forget Password</div>--%>
                        <div class="panel-body">
                            <form role="form">
                                <fieldset>

                                    <div >
                                        <h3>Did you forget your password?</h3>
                                        
                                        <h6 style="text-align:justify">Don't worry, it happens to the best of us. Just fill out this request and system will immediately send you a link to reset your password.</h6>
                                    </div>
                                    <div class="form-group">
                                        <asp:Label runat="server" ID="lblMessage" Visible="false"></asp:Label>
                                    </div>
                                    
                                    <div class="form-group">
                                        
                                   <asp:TextBox CssClass="form-control" ID="txtEmail" placeholder="Enter your E-mail" runat="server" ClientIDMode="Static" TextMode="Email" onblur="requiredField('txtEmail')"></asp:TextBox>  <!-- onblur="requiredField('txtEmail')"    ---->
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required" ControlToValidate="txtEmail" SetFocusOnError="true" ValidationGroup="btnForget" CssClass="label label-danger" Font-Size="8pt" Font-Strikeout="False" ToolTip="This field is required" Display="Dynamic"></asp:RequiredFieldValidator>
                                    </div>
                                    <asp:Button ID="btnForget" CssClass="btn btn-primary loginBtn col-md-6 col-lg-6 col-md-offset-3 col-lg-offset-3 buttonStyle" runat="server" Text="Send Password Reset Link"  OnClick="btnForget_Click"  />
                                </fieldset>

                            </form>
                        </div>
                    </div>
                </div>
            </div>


        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

