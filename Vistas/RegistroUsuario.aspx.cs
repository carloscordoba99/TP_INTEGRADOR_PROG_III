using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;

namespace Vistas
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        NegocioUsuarios negUsuarios = new NegocioUsuarios();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            Boolean agregado = false;

            agregado = negUsuarios.AgregarUsuario(txtNom.Text, txtApellido.Text, txtEmail.Text, txtNumCel.Text, txtDni.Text, TxtDireccion.Text, TxtProvincia.Text, txtContraseña.Text, 0);
            if (agregado == true)
            {
                lblMensaje.Text = "El Usuario ha sido agregado";

            }
            else
            {
                lblMensaje.Text = "El Usuario no ha sido Agregado";
            }
        }
    }
}