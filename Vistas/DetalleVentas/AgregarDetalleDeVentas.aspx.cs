using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades;
using Negocio;


namespace Vistas.DetalleDeVentas
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        NegocioDetalleDeVentas ObjDetVenta = new NegocioDetalleDeVentas();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usuario"] != null)
            {
                LblUsuario.Text = Session["Usuario"].ToString();
            }
        }

        protected void BtnAgregar_Click(object sender, EventArgs e)
        {
            Boolean Agregado = false;

            Agregado = ObjDetVenta.AgregarDetalleDeVenta(TxtCodVenta.Text, TXtCodArt.Text, TxtCantidad.Text,TxtPrecioUnitario.Text);
            if (Agregado == true)
            {
                LblMensaje.Text = "Detalle de venta Agregado.";
            }
            else
            {
                LblMensaje.Text = "No se ha podido agregar el detalle de venta.";
            }

            LimpiarDatos();
        }
        public void LimpiarDatos()
        {
            TxtCodVenta.Text = "";
            TXtCodArt.Text = "";
            TxtCantidad.Text = "";
            TxtPrecioUnitario.Text = "";
        }
    }
}