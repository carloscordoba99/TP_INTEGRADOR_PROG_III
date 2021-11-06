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
    public partial class AgregarUsuario : System.Web.UI.Page
    {
        NegocioUsuarios negUsuarios = new NegocioUsuarios();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarGridViewUsuarios();
            }

        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            Boolean agregado = false;

            agregado = negUsuarios.AgregarUsuario(txtNom.Text, txtApellido.Text, txtEmail.Text, txtNumCel.Text, txtDni.Text, TxtDireccion.Text, txtContraseña.Text, ddlTipo.SelectedItem.Text);
            if (agregado == true)
            {
                lblMensaje.Text = "El Usuario ha sido agregado";
            }
            else
            {
                lblMensaje.Text = "El Usuario no ha sido Agregado";
            }

            LimpiarTexbox();
            CargarGridViewUsuarios();
        }

        public void LimpiarTexbox()
        {
            txtNom.Text = " ";
            txtApellido.Text = " ";
            txtEmail.Text = "";
            txtNumCel.Text = " ";
            TxtDireccion.Text = " ";
            txtDni.Text = " ";
            txtContraseña.Text = " ";

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
            String s_Email = ((TextBox)grdUsuarios.Rows[e.RowIndex].FindControl("txt_eit_Email")).Text;
            String s_Celular = ((TextBox)grdUsuarios.Rows[e.RowIndex].FindControl("txt_eit_Celular")).Text;
            String s_Dni = ((TextBox)grdUsuarios.Rows[e.RowIndex].FindControl("txt_eit_Dni")).Text;
            String s_Direccion = ((TextBox)grdUsuarios.Rows[e.RowIndex].FindControl("txt_eit_Direccion")).Text;
            String s_Contrasena = ((TextBox)grdUsuarios.Rows[e.RowIndex].FindControl("txt_eit_Contrasena")).Text;
            String s_tipousuario = ((TextBox)grdUsuarios.Rows[e.RowIndex].FindControl("txt_eit_tipo_usuario")).Text;

            negUsuarios.ModificarUsuario(s_IdUsuario, s_Nombre, s_Apellido, s_Email, s_Celular, s_Dni, s_Direccion, s_Contrasena, s_tipousuario);

            grdUsuarios.EditIndex = -1;

            CargarGridViewUsuarios();
        }



        /*protected void grdUsuarios_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            String s_IdUsuario = ((Label)grdUsuarios.Rows[e.RowIndex].FindControl("lbl_eit_idUsuario")).Text;
            String s_Nombre = ((TextBox)grdUsuarios.Rows[e.RowIndex].FindControl("txt_eit_Nombre")).Text;
            string s_Apellido = ((TextBox)grdUsuarios.Rows[e.RowIndex].FindControl("txt_eit_Apellido")).Text;
            String s_Email = ((TextBox)grdUsuarios.Rows[e.RowIndex].FindControl("txt_eit_Email")).Text;
            String s_Celular = ((TextBox)grdUsuarios.Rows[e.RowIndex].FindControl("txt_eit_Celular")).Text;
            String s_Dni= ((TextBox)grdUsuarios.Rows[e.RowIndex].FindControl("txt_eit_Dni")).Text;
            String s_Direccion = ((TextBox)grdUsuarios.Rows[e.RowIndex].FindControl("txt_eit_Contrasena")).Text;
            String s_Contrasena = ((TextBox)grdUsuarios.Rows[e.RowIndex].FindControl("txt_eit_tipo_usuario")).Text;

            Usuario user = new Vistas.Usuario();

           /* Producto prod = new Producto();
            prod.IdProd = Convert.ToInt32(s_IdProducto);
            prod.NombreProd = s_NombreProducto;
            prod.CantXUnidad = s_CantXUnidad;
            prod._precio = Convert.ToDecimal(s_Precio);

            GestionProductos gProductos = new GestionProductos();
            gProductos.ActualizarProducto(prod);

            gdvProductos.EditIndex = -1;
            CargarGridView();*/
        // }
    }
}