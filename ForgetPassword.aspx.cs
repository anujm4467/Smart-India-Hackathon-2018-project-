using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_ForgetPassword : System.Web.UI.Page
{
    UserController userController = new UserController();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnForget_Click(object sender, EventArgs e)
    {
        string response = "You are not registered with our system";
        if (userController.ForgotPassword(txtEmail.Text))
            response = "An email sent you successfully to reset your password!!";
       Utility.ShowMessage(MessageType.Success, response, ref lblMessage);
    }
}