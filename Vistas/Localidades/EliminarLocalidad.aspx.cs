using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;

namespace Vistas.Localidades
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        NegocioLocalidades neglocal = new NegocioLocalidades();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usuario"] != null)
            {
                LblUsuario.Text = Session["Usuario"].ToString();
            }
        }

        protected void BtnAgregar_Click(object sender, EventArgs e)
        {
            bool eliminado = neglocal.EliminarLocalidad(Convert.ToInt32(txtIdLocalidad.Text));
            if (eliminado == true)
            {
                LblMensaje.Text = "Se eliminó la localidad.";
            }
            else
            {
                LblMensaje.Text = "No se eliminó la localidad.";
            }
            txtIdLocalidad.Text = "";
        }
    }
}