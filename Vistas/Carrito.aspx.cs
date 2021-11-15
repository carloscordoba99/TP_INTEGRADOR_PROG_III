using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Vistas
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack == false)
            {
                CargarGridView();
            }
        }

        public void CargarGridView()
        {
            DataTable dt = (DataTable)Session["Pedido"];
            GrdCarrito.DataSource = dt;
            GrdCarrito.DataBind();
        }

        protected void GrdCarrito_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            DataTable dt = (DataTable)Session["Pedido"];

            //String IdArticulo = dt.Rows[e.RowIndex].Delete();
            //String IdArticulo = (GrdCarrito.Rows[e.RowIndex].FindControl("ID Artículo")).Text;
            //Label1.Text = IdArticulo;
            /*foreach (DataRow dr in dt.Rows)
            {
                if (dr["ID Artículo"].ToString() == IdArticulo) dr.Delete();
            }
            CargarGridView();*/

            /*String IdArticulo = GrdCarrito.Rows[e.RowIndex].FindControl("ID Artículo");
            String Descripcion = GrdCarrito.Rows[e.RowIndex].FindControl("Descripción").ToString();
            String Precio = GrdCarrito.Rows[e.RowIndex].FindControl("Precio Unitario").ToString();
            String Cantidad = GrdCarrito.Rows[e.RowIndex].FindControl("Cantidad").ToString();
            String SubTotal = GrdCarrito.Rows[e.RowIndex].FindControl("Sub total").ToString();*/
        }

        protected void GrdCarrito_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }
    }
}