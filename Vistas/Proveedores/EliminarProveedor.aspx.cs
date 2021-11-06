using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades;
using Negocio;

namespace Vistas.Proveedores
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        NegocioProveedores DeleteProveedor = new NegocioProveedores();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void BtnEliminar_Click(object sender, EventArgs e)
        {
            int IdProveedor = int.Parse(TxtIDProveedor.Text);
            bool Eliminar = DeleteProveedor.EliminarProveedor(IdProveedor);
            if (Eliminar == true)
            {
                LblMensaje.Text = "Se ha eliminado el proveedor.";
            }
            else
            {
                LblMensaje.Text = "No se ha podido eliminar el proveedor.";
            }
        }
    }
}