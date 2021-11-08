using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using Negocio;
/// <summary>
///  ESTE HAY QUE ELIMINAR
/// </summary>
namespace Vistas
{
    public partial class LoginForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void BtnIniciarSesion_Click(object sender, EventArgs e)
        {
            if (Session["Usuario"] == null)
            {
                if (ValidarUsuario() == true)
                {
                    //CrearCookie();

                    Session["Usuario"] = TraerNombreYApellido();
                    //string Nombre = TraerNombreYApellido();
                    //AgregarFila((DataTable)Session["Usuario"], Nombre);
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
            
        }

        public DataTable InicioSesion()
        {
            DataTable Dt = new DataTable();
            DataColumn Columna = new DataColumn("NombreUsuario", System.Type.GetType("System.String"));
            Dt.Columns.Add(Columna);

            return Dt;
        }
        public void AgregarFila(DataTable Tabla, String NombreUsuario)
        {
            DataRow Dr = Tabla.NewRow();
            Dr["NombreUsuario"] = NombreUsuario;
            Tabla.Rows.Add(Dr);
        }

        /*public void CrearCookie()
        {
            NegocioUsuarios NegUsuario = new NegocioUsuarios();
            DataTable Dt = NegUsuario.getUsuario(TxtUsuario.Text);
            HttpCookie Usuario = new HttpCookie("Usuario");
            Usuario.Expires = DateTime.Now.AddDays(1);
            Response.Cookies["IdCliente"].Value = Dt.Rows[0]["IdCliente"].ToString();
            Response.Cookies["Nombre"].Value = Dt.Rows[0]["Nombre"].ToString();
            Response.Cookies["Apellido"].Value = Dt.Rows[0]["Apellido"].ToString();
            Response.Cookies["Email"].Value = Dt.Rows[0]["Email"].ToString();
            Response.Cookies["Celular"].Value = Dt.Rows[0]["Celular"].ToString();
            Response.Cookies["Dni"].Value = Dt.Rows[0]["Dni"].ToString();
            Response.Cookies["Direccion"].Value = Dt.Rows[0]["Direccion"].ToString();
            Response.Cookies["Contrasena"].Value = Dt.Rows[0]["Contrasena"].ToString();
            Response.Cookies["TipoUsuario"].Value = Dt.Rows[0]["Tipo_Usuario"].ToString();
            Response.Cookies.Add(Usuario);
        }*/

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
        
        protected void BtnCerrarSesion_Click(object sender, EventArgs e)
        {
            Session["Usuario"] = null;
        }

        protected void Registrarse_Click(object sender, EventArgs e)
        {
            // Response.Redirect("Usuario/RegistroUsuario.aspx");
        }
    }
}