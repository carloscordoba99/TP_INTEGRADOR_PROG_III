using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using System.Data;
using Entidades; 

namespace Vistas.Usuario
{
    public partial class EditarUsuario : System.Web.UI.Page
    {
        NegocioUsuarios negUsuarios = new NegocioUsuarios();
        protected void Page_Load(object sender, EventArgs e)
        {
            CargarGridViewUsuarios();
        }

        private void CargarGridViewUsuarios()
        {
            grdUsuarios.DataSource = negUsuarios.getTablaUsuarios();
            grdUsuarios.DataBind();
        }

        protected void grdUsuarios_RowEditing(object sender, GridViewEditEventArgs e)
        {
            grdUsuarios.EditIndex = e.NewEditIndex;
            CargarGridViewUsuarios();
        }

        protected void grdUsuarios_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            grdUsuarios.EditIndex = -1;
            CargarGridViewUsuarios();
        }

        protected void grdUsuarios_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            String s_IdUsuario = ((Label)grdUsuarios.Rows[e.RowIndex].FindControl("lbl_eit_idUsuario")).Text;
            String s_Nombre = ((TextBox)grdUsuarios.Rows[e.RowIndex].FindControl("txt_eit_Nombre")).Text;
            string s_Apellido = ((TextBox)grdUsuarios.Rows[e.RowIndex].FindControl("txt_eit_Apellido")).Text;
            String s_Provincia = ((TextBox)grdUsuarios.Rows[e.RowIndex].FindControl("txt_eit_Provincia")).Text;
            String s_Celular = ((TextBox)grdUsuarios.Rows[e.RowIndex].FindControl("txt_eit_Celular")).Text;
            String s_Dni = ((TextBox)grdUsuarios.Rows[e.RowIndex].FindControl("txt_eit_Dni")).Text;
            String s_Direccion = ((TextBox)grdUsuarios.Rows[e.RowIndex].FindControl("txt_eit_Direccion")).Text;
            String s_Email = ((TextBox)grdUsuarios.Rows[e.RowIndex].FindControl("txt_eit_Email")).Text;
            String s_Contrasena = ((TextBox)grdUsuarios.Rows[e.RowIndex].FindControl("txt_eit_contrasena")).Text;
            String s_tipousuario = ((TextBox)grdUsuarios.Rows[e.RowIndex].FindControl("txt_eit_TipoUsuario")).Text;

            negUsuarios.ModificarUsuario(s_IdUsuario, s_Nombre, s_Apellido, s_Provincia, s_Celular, s_Dni, s_Direccion, s_Email, s_Contrasena, s_tipousuario);
            
            grdUsuarios.EditIndex = -1;
            CargarGridViewUsuarios();


        }

       
    }

}