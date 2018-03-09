using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShoppingCart
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToInt32(Session["UserId"]) == 0)
            {
                btnLogin.Visible = true;
                btnLogout.Visible = false;
            }
            else
            {
                btnLogin.Visible = false;
                btnLogout.Visible = true;
            }
            GetAllProducts();
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session["UserId"] = 0;
            Response.Redirect("Home.aspx");
        }

        public void GetAllProducts()
        {
            List<ProductSelectAll_Result> objList = new List<ProductSelectAll_Result>();
            using (var entities = new ShoppingCartEntities())
            {
                objList = entities.ProductSelectAll().ToList<ProductSelectAll_Result>();
            }

            productContent.DataSource = objList;
            productContent.DataBind();

        }

        protected void btnAddtoCart_Command(object sender, CommandEventArgs e)
        {
            if (Convert.ToInt32(Session["UserId"]) != 0)
            {
                using (var entities = new ShoppingCartEntities())
                {
                    entities.AddToCart(Convert.ToInt32(Session["UserId"]), Convert.ToInt32(e.CommandArgument));
                }
                ClientScript.RegisterStartupScript(this.GetType(), "Message" , "alert('Successfully added to cart !')", true);
            }
            else
            {
                Response.Redirect("Login.aspx");

            }
        }
    }

}