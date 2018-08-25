using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Text;

public partial class User_SignUp : System.Web.UI.Page
{
    User user = new User();
    UserController usercontroller = new UserController();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
            FillCapctha();
    }


    //protected void signuptxtButton_Click(object sender, EventArgs e)
    //{
    //    try
    //    {
    //        if (Session["captcha"].ToString().Equals(txtCaptchaTest.Text))
    //        {
    //            user.Email = signuptxtEmail.Text;
    //            user.Name = $"{signuptxtFirstName.Text}  {signuptxtLastName.Text} ";
    //            user.PhoneNO = signuptxtPhoneNumber.Text;
    //            user.Role = UserType.Applicant;
    //            user.Password = signuptxtPassword.Text;
    //            user.AdhaarID = signuptxtAdhaarId.Text;
    //            user.DateOfBirth = txtDob.Text;
    //            user.Gender = ValueConverter.ToGender(radioButtonListGender.SelectedValue);
    //            if (!usercontroller.IsUserExist(user.Email))
    //            {
    //                if (usercontroller.CreateUser(user))
    //                {
    //                    Session["ResponseMessage"] = "Registration Successfull!!!!.</br> You May Login now.";
    //                    Response.Redirect("~/Login.aspx?Registeredsuccessful");

    //                }
    //                else
    //                {
    //                    ResponseMessage.Error(this);
    //                }
    //            }
    //            else
    //                ResponseMessage.Warning("You are already registered!! If you forget your password you can reset by clicking forgot password!! ", this);
    //        }

    //        else
    //        {
    //            lblError.Text = "Captcha does not match!!";
    //            Page.MaintainScrollPositionOnPostBack = false;
    //            Page.SetFocus(lblError);
    //        }
    //    }
    //    catch
    //    {
    //        ResponseMessage.Error(this);
    //    }
    //}

    protected void ibtnRefresh_Click(object sender, ImageClickEventArgs e)
    {
        FillCapctha();
    }
    void FillCapctha()
    {
        try
        {
            Random random = new Random();
            string combination = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
            StringBuilder captcha = new StringBuilder();
            for (int i = 0; i < 6; i++)
            {
                captcha.Append(combination[random.Next(combination.Length)]);
            }
            Session["captcha"] = captcha.ToString();
            imagCaptcha.ImageUrl = "GenerateCaptcha.aspx?" + DateTime.Now.Ticks.ToString();
        }
        catch (Exception ex)
        {
            ResponseMessage.Warning("<b>ERROR!</b> ERROR IN CAPTCHA CODE, PLEASE TRY AGAIN OR CONTACT THE ADMINISTRATOR.", this);
        }
    }

    protected void signuptxtEmail_TextChanged(object sender, EventArgs e)
    {
        if (usercontroller.IsUserExist(signuptxtEmail.Text))
            lblError.Text = "Email Already registered!! Please use another email";
    }

    protected void signuptxtButton_Click1(object sender, EventArgs e)
    {
        try
        {
            if (Session["captcha"].ToString().Equals(txtCaptchaTest.Text))
            {
                user.Email = signuptxtEmail.Text;
                user.Name = $"{signuptxtFirstName.Text}  {signuptxtLastName.Text} ";
                user.PhoneNO = signuptxtPhoneNumber.Text;
                user.Role = UserType.Applicant;
                user.Password = signuptxtPassword.Text;
                user.AdhaarID = signuptxtAdhaarId.Text;
                user.DateOfBirth = txtDob.Text;
                user.Gender = ValueConverter.ToGender(radioButtonListGender.SelectedValue);
                if (!usercontroller.IsUserExist(user.Email))
                {
                    if (usercontroller.CreateUser(user))
                    {
                        Session["ResponseMessage"] = "Registration Successfull!!!!.</br> You May Login now.";
                        Response.Redirect("~/Login.aspx?Registeredsuccessful");

                    }
                    else
                    {
                        ResponseMessage.Error(this);
                    }
                }
                else
                    ResponseMessage.Warning("You are already registered!! If you forget your password you can reset by clicking forgot password!! ", this);
            }

            else
            {
                lblError.Text = "Captcha does not match!!";
                Page.MaintainScrollPositionOnPostBack = false;
                Page.SetFocus(lblError);
            }
        }
        catch
        {
            ResponseMessage.Error(this);
        }
    }
}