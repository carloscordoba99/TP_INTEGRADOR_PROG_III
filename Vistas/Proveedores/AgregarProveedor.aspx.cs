using Negocio;
using System;

namespace Vistas.Proveedores
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        NegocioProveedores ObjProv = new NegocioProveedores();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usuario"] != null)
            {
                LblUsuario.Text = Session["Usuario"].ToString();
            }

            if(IsPostBack == false)
            {
                AgregarListaProveedores();
            }
        }
        protected void BtnAgregar_Click(object sender, EventArgs e)
        {
            Boolean Agregado = false;

            String localidad = DdlLocalidad.SelectedValue.ToString();
            String Provincia = DdlProvincias.SelectedIndex.ToString();

            Agregado = ObjProv.AgregarProveedor(TxtRazonSocial.Text,TxtMarca.Text,TxtDireccion.Text,localidad,Provincia,TxtCuit.Text,TxtTelefono.Text,TxtContacto.Text,TxtEmail.Text,TxtWeb.Text,TxtCBU.Text);
            if (Agregado == true)
            {
                LblMensaje.Text = "Proveedor Agregado.";

            }
            else
            {
                LblMensaje.Text = "No se ha podido agregar el proveedor.";
            }

            LimpiarDatos();
            AgregarListaProveedores();

        }
        public void LimpiarDatos()
        {
            TxtRazonSocial.Text = "";
            TxtMarca.Text = "";
            TxtDireccion.Text = "";
            TxtCuit.Text = "";
            TxtTelefono.Text = "";
            TxtContacto.Text = "";
            TxtEmail.Text = "";
            TxtWeb.Text = "";
            TxtCBU.Text = "";
            DdlProvincias.SelectedIndex = 0;
            DdlLocalidad.SelectedIndex = 0;
        }

        public void AgregarListaProveedores()
        {
            grdListaProveedores.DataSource = ObjProv.GetTablaProveedores();
            grdListaProveedores.DataBind();
        }

    }
}