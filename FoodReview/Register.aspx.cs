using DataLayer.DataHelper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FoodReview
{
    public partial class Register : System.Web.UI.Page
    {
        UserHelper userHelper = new UserHelper();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            EntityLayer.User usr = new EntityLayer.User();
            usr.Email = txtEmail.Text;
            usr.Name = txtName.Text;
            usr.Password = txtPassword.Text;
            usr.Username = txtUsername.Text;
            usr.UserType = "User";
            bool isAdded = userHelper.RegisterUser(usr);
            if (isAdded)
            {
                Response.Write("<script>alert('User registered successfully.');</script>");
            }
            else
            {
                Response.Write("<script>alert('Some error occured.');</script>");
            }
        }
    }
}