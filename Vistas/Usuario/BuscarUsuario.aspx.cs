using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Entidades;
using Negocio;

namespace Vistas.Usuario
{
    public partial class BuscarUsuario : System.Web.UI.Page
    {
        NegocioUsuarios negUsuarios = new NegocioUsuarios();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usuario"] != null)
            {
                LblUsuario.Text = Session["Usuario"].ToString();
            }
            CargarGridViewUsuarios();
        }

        private void CargarGridViewUsuarios()
        {
            grdUsuarios.DataSource = negUsuarios.getTablaUsuarios();
            grdUsuarios.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string id = txtUsuario.Text;

            grdUsuarios.DataSource = negUsuarios.getUsuario(id);
            grdUsuarios.DataBind();
            txtUsuario.Text = " ";
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            CargarGridViewUsuarios();
        }
    }
}