using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    User u = new User();
    UserController uc = new UserController();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["ResponseMessage"] != null)
        {
            string response = Session["ResponseMessage"].ToString();
            if (!string.IsNullOrWhiteSpace(response))
            {
                Utility.ShowMessage(MessageType.Information, response, ref lblMessage);
            }
            Session["ResponseMessage"] = null;
        }
    }
     
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        u.Email = txtEmail.Text;
        u.Password = txtPassword.Text;
        LoginMessage lm = LoginMessage.None;
        try
        {
            lm = uc.AuthenticateUser(ref u);
        }
        catch (Exception ex)
        {
            string msg = "Something Went Wrong!! Please try again later. \nIf issue is not resolved contact to administrator.";
            Utility.LogEntry(ex);
            Utility.ShowMessage(MessageType.Error, msg, ref lblMessage);
        }
        if (lm == LoginMessage.Authenticated && uc.UpdateLastLoginDate(u.UserID))
        {
            Session["UserID"] = u.UserID;
            Session["UserRole"] = u.Role.ToString();
            Session["UserName"] = u.Name;
            if (uc.IsActive(u.UserID))
            {
                if (u.Role == UserType.Administrator)
                    Response.Redirect("~/Administrator/");
                else if (u.Role == UserType.DTFC)
                    Response.Redirect("~/DTFC/");
                else if (u.Role == UserType.Stakeholder)
                    Response.Redirect("~/Stakeholder/");
                else if (u.Role == UserType.Applicant)
                    Response.Redirect("~/Applicant/");
            }
            else
            {
                Response.Redirect("~/User/UpdateDetails.aspx");
            }
        }
        else
        {
            txtPassword.Focus();
            Utility.ShowMessage(MessageType.Warning, "Incorrect Email or password", ref lblMessage);
        }
    }
}