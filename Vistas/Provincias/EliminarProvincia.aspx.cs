using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;

namespace Vistas.Provincias
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        NegocioProvincia negProvincia = new NegocioProvincia();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usuario"] != null)
            {
                LblUsuario.Text = Session["Usuario"].ToString();
            }
        }

        protected void BtnAgregar_Click(object sender, EventArgs e)
        {
            bool eliminado = negProvincia.EliminarProvincia(Convert.ToInt32(txtIdProvincia.Text));
            if(eliminado == true)
            {
                LblMensaje.Text = "Se eliminó la provincia.";
            }
            else
            {
                LblMensaje.Text = "No se eliminó la provincia.";
            }
            txtIdProvincia.Text = "";
        }
    }
}