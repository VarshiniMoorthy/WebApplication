using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void SubmitButtonClick(object sender, EventArgs e)
        {
            string EmailId = txtEmailId.Text.Trim();
            string Password = txtCorrectPassword.Text.Trim();
            
            if (UserRespository.ExecuteLogin(EmailId, Password) == 1)
            {
                //Session["Email"] = Email;
                Response.Write("SuccessFully login");
                Response.Redirect("HomePage.aspx");
            }
            else
            {
                Response.Write("Invalid email and password");
            }
        }
    }
}