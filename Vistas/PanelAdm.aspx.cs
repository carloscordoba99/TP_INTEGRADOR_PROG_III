using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vistas
{
    public partial class PanelAdm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usuario"] != null)
            {
                LblUsuario.Text = Session["Usuario"].ToString();
            }
        }

        protected void btnProductos_Click(object sender, EventArgs e)
        {
            Response.Redirect("Producto/AgregarProducto.aspx");
        }

        protected void btnCategorias_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Categoria/AgregarCategoria.aspx");
        }

        protected void btnDetalleventas_Click(object sender, EventArgs e)
        {
            Response.Redirect("DetalleVentas/AgregarDetalleDeVentas.aspx");
        }

        protected void btnProveedores_Click(object sender, EventArgs e)
        {
            Response.Redirect("Proveedores/AgregarProveedeor.aspx");
        }

        protected void btnUsuarios_Click(object sender, EventArgs e)
        {
            Response.Redirect("Usuario/AgregarUsuario.aspx");
        }

        protected void btnVentas_Click(object sender, EventArgs e)
        {
            Response.Redirect("Ventas/AgregarVenta.aspx");
        }
    }
}