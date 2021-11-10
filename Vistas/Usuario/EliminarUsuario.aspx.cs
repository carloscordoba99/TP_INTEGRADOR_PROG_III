using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades;
using Negocio;

namespace Vistas.Usuario
{
    public partial class EliminarUsuario : System.Web.UI.Page
    {
        NegocioUsuarios deleteUser = new NegocioUsuarios();
         protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usuario"] != null)
            {
                LblUsuario.Text = Session["Usuario"].ToString();
            }
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            int id = int.Parse(txtIdUsuario.Text);
            bool borrado = deleteUser.EliminarUsuario(id);
            if (borrado == true)
            {
                lblMensaje.Text = "El usuario ha sido eliminado";
                LimpiarCampo();
            }
            else
            {
                lblMensaje.Text = "El usuario no ha podido ser eliminado";
            }
        }

        public void LimpiarCampo()
        {
            txtIdUsuario.Text = " ";
        }
    }
}