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
    public partial class Dashboard : System.Web.UI.Page
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
            //List<ProductData> lstProduct = productHelper.GetProductByID(userid).Take(5).OrderByDescending(x => x.PostedOn).ToList();
            //lstProducts.DataSource = lstProduct;
            //lstProducts.DataBind();
        }

        protected void lstProducts_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            if (e.CommandName == "Review")
            {
                Response.Redirect("ReviewBids.aspx?productid=" + e.CommandArgument);
            }
        }
    }
}