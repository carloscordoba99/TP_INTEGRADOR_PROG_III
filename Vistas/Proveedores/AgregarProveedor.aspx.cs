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
    public partial class WebForm1 : System.Web.UI.Page
    {
        NegocioProveedores ObjProv = new NegocioProveedores();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void BtnAgregar_Click(object sender, EventArgs e)
        {
            Boolean Agregado = false;

            Agregado = ObjProv.AgregarProveedor(TxtRazonSocial.Text,TxtMarca.Text,TxtDireccion.Text,TxtCiudad.Text,TxtProvincia.Text,TxtCuit.Text,TxtTelefono.Text,TxtContacto.Text,TxtEmail.Text,TxtWeb.Text,TxtCBU.Text);
            if (Agregado == true)
            {
                LblMensaje.Text = "Proveedor Agregado.";
            }
            else
            {
                LblMensaje.Text = "No se ha podido agregar el proveedor.";
            }

            LimpiarDatos();

        }
        public void LimpiarDatos()
        {
            TxtRazonSocial.Text = "";
            TxtMarca.Text = "";
            TxtDireccion.Text = "";
            TxtCiudad.Text = "";
            TxtProvincia.Text = "";
            TxtCuit.Text = "";
            TxtTelefono.Text = "";
            TxtContacto.Text = "";
            TxtEmail.Text = "";
            TxtWeb.Text = "";
            TxtCBU.Text = "";
        }
    }
}