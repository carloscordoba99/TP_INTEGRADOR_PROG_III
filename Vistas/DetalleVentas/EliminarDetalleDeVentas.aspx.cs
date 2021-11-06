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
    public partial class WebForm3 : System.Web.UI.Page
    {
        NegocioDetalleDeVentas DeleteDetVenta = new NegocioDetalleDeVentas();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnEliminar_Click(object sender, EventArgs e)
        {
            int IdDetVenta = int.Parse(TxtIdDetVenta.Text);
            bool Eliminar = DeleteDetVenta.EliminarDetalleDeVenta(IdDetVenta);
            if (Eliminar == true)
            {
                LblMensaje.Text = "Se ha eliminado el detalle de venta.";
            }
            else
            {
                LblMensaje.Text = "No se ha podido eliminar el detalle de venta.";
            }
        }
    }
}