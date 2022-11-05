using DataLayer.DataHelper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FoodReview
{
    public partial class Home : System.Web.UI.Page
    {
        FoodHelper foodHelper = new FoodHelper();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                BindFood();
            }
        }

        public void BindFood()
        {
            lstOfFood.DataSource= foodHelper.GetAllFoods();
            lstOfFood.DataBind();
        }
    }
}