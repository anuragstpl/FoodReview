using DataLayer.DataHelper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EntityLayer;

namespace FoodReview
{
    public partial class Login : System.Web.UI.Page
    {
        UserHelper docHelper = new UserHelper();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            User user = new User();
            user = docHelper.LoginUser(txtUsername.Text, txtPassword.Text, "User");
            if (user != null)
            {
                Session["UserID"] = user.UserID;
                Session["Name"] = user.Name;
                Response.Redirect("Home.aspx");
            }
            else
            {
                Response.Write("<script>alert('Incorrect Credentials.');</script>");
            }
        }
    }
}