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
            Response.Redirect("Proveedores/AgregarProveedor.aspx");
        }

        protected void btnUsuarios_Click(object sender, EventArgs e)
        {
            Response.Redirect("Usuario/AgregarUsuario.aspx");
        }

        protected void btnVentas_Click(object sender, EventArgs e)
        {
            Response.Redirect("Ventas/AgregarVenta.aspx");
        }

        protected void BtnReportes_Click(object sender, EventArgs e)
        {
            Response.Redirect("reportes/ReporteVentas.aspx");
        }

        protected void BtnCerrarSesion_Click(object sender, EventArgs e)
        {
            Session["Usuario"] = null;
            Session["IdUsuario"] = null;
            LblUsuario.Text = "";
            Response.Redirect("LoginForm.aspx");
        }

        protected void BtnProvincias_Click(object sender, EventArgs e)
        {
            Response.Redirect("Provincias/AgregarProvincia.aspx");
        }

        protected void BtnLocalidades_Click(object sender, EventArgs e)
        {
            Response.Redirect("Localidades/AgregarLocalidad.aspx");
        }
    }
}