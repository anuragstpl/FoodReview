using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FoodReview
{
    public partial class FoodMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"] == null)
            {
                loginbtn.Visible = true;
                logoutbtn.Visible = false;
            }
            else
            {
                loginbtn.Visible = false;
                logoutbtn.Visible = true;
            }
        }

        protected void logoutbtn_Click(object sender, EventArgs e)
        {
            Session["UserID"] = null;
            Response.Redirect("Login.aspx");
        }
    }
}