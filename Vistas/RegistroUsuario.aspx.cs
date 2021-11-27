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
            if(IsPostBack == false)
            {
                //DdlProvincias.Items.Add("-- Seleccione una provincia --");
                ListItem lst = new ListItem("-- Seleccione una provincia --", "0");
                DdlProvincias.Items.Insert(DdlProvincias.Items.Count, lst);
            }
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            Boolean agregado = false;

            agregado = negUsuarios.AgregarUsuario(txtNom.Text, txtApellido.Text, txtEmail.Text, txtNumCel.Text, txtDni.Text, TxtDireccion.Text, DdlProvincias.SelectedValue.ToString(), txtContraseña.Text, 0);
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