using System;
using System.Web;
using System.Configuration;


namespace WebApplication
{
    public partial class Registeration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SubmitButtonClick(object sender, EventArgs e)
        {
           
                User user = new User();
                user.FirstName = txtFirstName.Text;
                user.LastName = txtLastName.Text;
                user.Age = Convert.ToInt16(txtAge.Text);
                user.City= DropDownList.SelectedItem.Text;
                if (rdbMale.Checked)
                    user.Gender = rdbMale.Text;
                else
                    user.Gender = rdbFemale.Text;
                user.LocationAddress = txtAddress.Text;
                user.Email = txtemail.Text;
                user.Pincode = txtPincode.Text;
                user.SetPassword = txtPassword.Text;
                user.ConfirmPassword = txtCP.Text;
                UserRespository.ExecuteInsert(user);
                Response.Write("Record was successfully added!");
                Response.Redirect("Login.aspx");
              
        
    }
        public static string GetConnectionString()
        {
            return ConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;
        }
        
    }
}