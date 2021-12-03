using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades;
using System.Data;
using Negocio;



namespace Vistas.Usuario
{
    public partial class AgregarUsuario : System.Web.UI.Page
    {
        NegocioUsuarios negUsuarios = new NegocioUsuarios();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usuario"] != null)
            {
                LblUsuario.Text = Session["Usuario"].ToString();
            }

           
           
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            Boolean agregado = false;

            lblMensaje.Text = DdlProvincias.SelectedValue.ToString();

            agregado = negUsuarios.AgregarUsuario(txtNom.Text, txtApellido.Text, txtEmail.Text, txtNumCel.Text, txtDni.Text, TxtDireccion.Text, DdlProvincias.SelectedValue.ToString() , txtContrasenia.Text, Convert.ToInt32 (ddlTipo.SelectedValue.ToString()));
            if (agregado == true)
            {
                lblMensaje.Text = "El Usuario ha sido agregado";
            }
            else
            {
                lblMensaje.Text = "El Usuario no ha sido Agregado, porque ya existe usuario con ese DNi";
            }

            LimpiarTexbox();
          
        }

        public void LimpiarTexbox()
        {
            txtNom.Text = "";
            txtApellido.Text = "";
            txtEmail.Text = "";
            txtNumCel.Text = "";
            TxtDireccion.Text = "";
            txtDni.Text = "";
            txtContrasenia.Text = "";
            txtContraseniaRevision.Text = "";
            ddlTipo.SelectedIndex = 0;
            DdlProvincias.SelectedIndex = 0;
        }
        
    }
}