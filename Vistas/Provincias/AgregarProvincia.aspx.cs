using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;

namespace Vistas.Provincias
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        NegocioProvincia ObjProvincia = new NegocioProvincia();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usuario"] != null)
            {
                LblUsuario.Text = Session["Usuario"].ToString();
            }

            if (IsPostBack == false)
            {
                AgregarListaProvincias();
            }
        }

        protected void BtnAgregar_Click(object sender, EventArgs e)
        {
            bool agregado = ObjProvincia.AgregarProvincia(TxtNombreProvincia.Text);
            if(agregado == true)
            {
                LblMensaje.Text = "provincia agregada correctamente.";
            }
            else
            {
                LblMensaje.Text = "No se ha podido agregar la provincia.";
            }
            TxtNombreProvincia.Text = "";
        }
        public void AgregarListaProvincias()
        {
            grdProvincias.DataSource = ObjProvincia.GetTablaProvincias();
            grdProvincias.DataBind();
        }
    }
}