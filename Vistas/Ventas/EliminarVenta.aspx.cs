using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades;
using Negocio;

namespace Vistas.Ventas
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        NegocioVenta DeleteVenta = new NegocioVenta();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnEliminar_Click(object sender, EventArgs e)
        {
            int IdVenta = int.Parse(TxtIdVenta.Text);
            bool Eliminar = DeleteVenta.EliminarVenta(IdVenta);
            if (Eliminar == true)
            {
                LblMensaje.Text = "Se ha eliminado la venta.";
            }
            else
            {
                LblMensaje.Text = "No se ha podido eliminar la venta.";
            }
        }
    }
}