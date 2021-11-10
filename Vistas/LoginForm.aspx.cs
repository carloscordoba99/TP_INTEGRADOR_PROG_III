using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using Negocio;

namespace Vistas
{
    public partial class LoginForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["Usuario"] != null)
            {
                LblUsuario.Text = Session["Usuario"].ToString();
            }
        }
        protected void BtnIniciarSesion_Click(object sender, EventArgs e)
        {
            if (Session["Usuario"] == null)
            {
                if (ValidarUsuario() == true)
                {
                    Session["Usuario"] = TraerNombreYApellido();
                    Session["IdUsuario"] = TraerIdUsuario();

                    string TipoUsuario = TraerTipoUsuario();
                    TxtContraseña.Text = "";
                    TxtUsuario.Text = "";
                    
                    if (TipoUsuario == "True")
                    {
                        Response.Redirect("PanelAdm.aspx");
                    }
                    else
                    {
                        Response.Redirect("HomeUsuario.aspx");
                    }
                }
                else
                {
                    LblMensaje.Text = "Error. Se ingresaron mal los datos o el usuario no existe.";
                }
            }
            else
            {
                LblMensaje.Text = "Ya hay un usuario logeado.";
            }
        }
        public bool ValidarUsuario()
        {
            NegocioUsuarios NegUsuario = new NegocioUsuarios();
            bool Existe = NegUsuario.ValidarUsuario(TxtUsuario.Text, TxtContraseña.Text);
            if (Existe == true) return true;
            else return false;
        }
        public string TraerNombreYApellido()
        {
            NegocioUsuarios NegUsuario = new NegocioUsuarios();
            string NombreCompleto = NegUsuario.GetNombreYApellidoUsuario(TxtUsuario.Text, TxtContraseña.Text);
            return NombreCompleto;
        }
        public string TraerTipoUsuario()
        {
            NegocioUsuarios NegUsuario = new NegocioUsuarios();
            string TipoUsuario = NegUsuario.GetTraerTipoUsuario(TxtUsuario.Text, TxtContraseña.Text);
            return TipoUsuario;
        }
        public string TraerIdUsuario()
        {
            NegocioUsuarios NegUsuario = new NegocioUsuarios();
            string Idcliente = NegUsuario.GetTraerIdUsuario(TxtUsuario.Text, TxtContraseña.Text);
            return Idcliente;
        }
        
        protected void BtnCerrarSesion_Click(object sender, EventArgs e)
        {
            Session["Usuario"] = null;
            Session["IdUsuario"] = null;
            LblUsuario.Text = "";
        }

        protected void Registrarse_Click(object sender, EventArgs e)
        {
            // Response.Redirect("Usuario/RegistroUsuario.aspx");
        }
       
    }
}