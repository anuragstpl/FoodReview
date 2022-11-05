using DataLayer;
using DataLayer.DataHelper;
//using DataLayer.DataHelper;
//using EntityLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineBidding
{
    public partial class AddProduct : System.Web.UI.Page
    {
        FoodHelper foodHelper = new FoodHelper();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddProduct_Click(object sender, EventArgs e)
        {
            string flName = "";
            if (productImage.HasFile)
            {
                flName = DateTime.Now.Ticks + productImage.FileName;
                productImage.SaveAs(Server.MapPath("~/Admin/Uploads/" + flName));
            }
            Food food = new Food();
            food.Description = txtDescription.Text;
            food.AddedOn = DateTime.Now.ToString();
            food.FoodCategory = ddlFoodCategory.SelectedItem.Text;
            food.FoodImage = "Admin/Uploads/" + flName;
            food.FoodName = txtName.Text;
            bool isAdded = foodHelper.AddFood(food);
            if (isAdded)
            {
                Response.Write("<script>alert('Food added successfully.');</script>");
            }
            else
            {
                Response.Write("<script>alert('Some error occured.');</script>");
            }
        }
    }
}