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
    public partial class EditProduct : System.Web.UI.Page
    {
        //ProductHelper productHelper = new ProductHelper();
        int productid;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                //productid = Convert.ToInt32(Request.QueryString["id"].ToString());
                //ProductData product = productHelper.GetProductByProductID(productid).Where(x => x.ProductID == productid).FirstOrDefault();
                //txtPrice.Text = product.ProductBasePrice;
                //txtName.Text = product.ProductName;
                //txtDescription.Text = product.Description;
            }
        }

        protected void btnEditProduct_Click(object sender, EventArgs e)
        {
            //productid = Convert.ToInt32(Request.QueryString["id"].ToString());
            //string flName = "";
            //ProductData product = new ProductData();
            //if (productImage.HasFile)
            //{
            //    flName = DateTime.Now.Ticks + productImage.FileName;
            //    productImage.SaveAs(Server.MapPath("~/Uploads/" + flName));
            //    product.ProductImage = "~/Uploads/" + flName;
            //}
            //else
            //{
            //    product.ProductImage = "";
            //}
            
            //product.Description = txtDescription.Text;
            //product.ProductName = txtName.Text;
            //product.ProductBasePrice = txtPrice.Text;
            
            //product.UserID = Convert.ToInt32(Session["UserID"].ToString());
            //product.ProductID = productid;
            //bool isEdited = productHelper.EditProduct(product);
            //if (isEdited)
            //{
            //    Response.Write("<script>alert('Product updated successfully.');</script>");
            //}
            //else
            //{
            //    Response.Write("<script>alert('Some error occured.');</script>");
            //}
        }
    }
}