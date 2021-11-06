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
            LblMensaje.Text = Session["Usuario"].ToString();

            /*String Nombre = "", Apellido = "", TipoUsuario = "";
            HttpCookie TraerNombre = Request.Cookies["Nombre"];
            HttpCookie Traer2 = Request.Cookies["Apellido"];
            HttpCookie Traer3 = Request.Cookies["TipoUsuario"];
            if (TraerNombre != null)
            {
                Nombre = TraerNombre["Nombre"].ToString();
                Apellido = Traer2["Apellido"].ToString();
                TipoUsuario = Traer3["TipoUsuario"].ToString();
                LblMensaje.Text = Nombre + " " + Apellido + " " + TipoUsuario;
            }
            */
        }

        protected void BtnCerrarSesion_Click(object sender, EventArgs e)
        {
            Session["Usuario"] = null;
            LblMensaje.Text = "";
            Response.Redirect("LoginForm.aspx");
        }
    }
}