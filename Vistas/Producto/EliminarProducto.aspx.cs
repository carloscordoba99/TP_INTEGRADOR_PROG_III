using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades;
using Negocio;

namespace Vistas.Producto
{
    public partial class EliminarProducto : System.Web.UI.Page
    {
        NegocioProducto deleteProducto = new NegocioProducto();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usuario"] != null)
            {
                LblUsuario.Text = Session["Usuario"].ToString();
            }
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            int Codigo = int.Parse(txtProducto.Text);
            bool eliminado = deleteProducto.EliminarProducto(Codigo);
            if(eliminado == true)
            {
                lblMensaje.Text = "No se ha podido eliminar el Producto";
            }
            else
            {
                lblMensaje.Text =  "Se ha eliminado el Producto";
            }
        }

        
        
    }
}