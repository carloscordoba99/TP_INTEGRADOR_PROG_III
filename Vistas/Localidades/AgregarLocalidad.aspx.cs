using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;

namespace Vistas.Localidades
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        NegocioLocalidades NegLocalidades = new NegocioLocalidades();
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
            bool agregado = NegLocalidades.AgregarLocalidad(TxtNombreLocalidad.Text, TxtIdProvincia.Text);
            if (agregado == true)
            {
                LblMensaje.Text = "localidad agregada correctamente.";
            }
            else
            {
                LblMensaje.Text = "No se ha podido agregar la localidad.";
            }
            TxtNombreLocalidad.Text = "";
            TxtIdProvincia.Text = "";
        }
        public void AgregarListaProvincias()
        {
            grdLocalidades.DataSource = NegLocalidades.GetTablaLocalidades();
            grdLocalidades.DataBind();
        }
    }
}