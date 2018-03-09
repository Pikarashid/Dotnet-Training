using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShoppingCart
{
    public partial class ShoppingCart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GetAllCartItem();
        }
        public void GetAllCartItem()
        {
            
            if (Convert.ToInt32(Session["UserId"]) == 0)
            {
                EmptyCart.Visible = true;
                CartItem.Visible = false;
            }
            else
            {

                EmptyCart.Visible = false;
                CartItem.Visible = true;

                List<CartItem_Result> objList = new List<CartItem_Result>();
                using (var entities = new ShoppingCartEntities())
                {
                    objList = entities.CartItem(Convert.ToInt32(Session["UserId"])).ToList<CartItem_Result>();
                }

                if (objList.Count != 0)
                {
                    EmptyCart.Visible = false;
                    CartItem.Visible = true;

                    cartListcartImg.DataSource = objList;
                    cartListcartImg.DataBind();
                }
                else
                {
                    EmptyCart.Visible = true;
                    CartItem.Visible = false;
                }

            }
        }

        protected void btnAddToCart_Click(object sender, EventArgs e)
        {
            using (var entities = new ShoppingCartEntities())
            {
                entities.CheckOut(Convert.ToInt32(Session["UserId"]));
            }
            ClientScript.RegisterStartupScript(this.GetType(), "Message", "alert('Successfully CheckOut !')", true);
        }
       

    }
}