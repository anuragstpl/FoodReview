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
    public partial class ListProducts : System.Web.UI.Page
    {
        //ProductHelper productHelper = new ProductHelper();
        int userid = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                this.BindProduct();
            }
        }

        private void BindProduct()
        {
            //userid = Convert.ToInt32(Session["UserID"].ToString());
            //List<ProductData> lstProduct = productHelper.GetProductByID(userid);
            //lstProducts.DataSource = lstProduct;
            //lstProducts.DataBind();
        }

        protected void lstProducts_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            if (e.CommandName == "Edit")
            {
                Response.Redirect("EditProduct.aspx?id=" + e.CommandArgument);
            }
            else
                if (e.CommandName == "Delete")
                {
                    //productHelper.DeleteProduct(Convert.ToInt32(e.CommandArgument));
                    //this.BindProduct();
                }
        }

        protected void lstProducts_PagePropertiesChanging(object sender, PagePropertiesChangingEventArgs e)
        {
            (lstProducts.FindControl("DataPager1") as DataPager).SetPageProperties(e.StartRowIndex, e.MaximumRows, false);
            this.BindProduct();
        }

        protected void addProduct_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddProduct.aspx");
        }

        protected void lstProducts_ItemDeleting(object sender, ListViewDeleteEventArgs e)
        {

        }
    }
}