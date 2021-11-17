using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades;
using Negocio;
using System.Data;

namespace Vistas
{
    public partial class AgregarCategoria : System.Web.UI.Page
    {
        NegocioCategoria negCat = new NegocioCategoria();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usuario"] != null)
            {
                LblUsuario.Text = Session["Usuario"].ToString();
            }

            if (IsPostBack == false)
            {
                CargarCategorias();
            }
            
        }

       
        private void CargarCategorias()
        {
            grdCategorias.DataSource = negCat.getTablaCategorias();
            grdCategorias.DataBind();
        }

        protected void btnCrear_Click(object sender, EventArgs e)
        {
            Boolean agregar = false;

            agregar = negCat.AgregarCategoria(txtNombreCat.Text, txtDescripcion.Text);
            if (agregar == true)
            {
                lblmensaje.Text = "Categoria agregada con Exito";
            }
            else
            {
                lblmensaje.Text = "No se pudo agregar sucursal";
            }

            LimpiarDatos();

            CargarCategorias();

        }

        public void LimpiarDatos()
        {
            txtNombreCat.Text = " ";
            txtDescripcion.Text = " ";
        }

        protected void grdCategorias_RowEditing(object sender, GridViewEditEventArgs e)
        {
            grdCategorias.EditIndex = e.NewEditIndex;
            CargarCategorias();
        }

        protected void grdCategorias_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            grdCategorias.EditIndex = -1;
            CargarCategorias();
        }

        protected void grdCategorias_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            String s_codcat = ((Label)grdCategorias.Rows[e.RowIndex].FindControl("lbl_eit_CodCat")).Text;
            String s_nomcat = ((TextBox)grdCategorias.Rows[e.RowIndex].FindControl("txt_eit_Nombre")).Text;
            String s_desc = ((TextBox)grdCategorias.Rows[e.RowIndex].FindControl("txt_eit_Descripcion")).Text;

            NegocioCategoria negcat2 = new NegocioCategoria();

            negcat2.ModificarCategoria(s_codcat, s_nomcat,s_desc);

            grdCategorias.EditIndex = -1;
            
            CargarCategorias();
        }
    }
}