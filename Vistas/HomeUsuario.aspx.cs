using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vistas
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LblMensaje.Text = Session["Usuario"].ToString() + Session["IdUsuario"].ToString();
        }

        protected void BtnCerrarSesion_Click(object sender, EventArgs e)
        {
            Session["Usuario"] = null;
            LblMensaje.Text = "";
            Response.Redirect("LoginForm.aspx");
        }
    }
}