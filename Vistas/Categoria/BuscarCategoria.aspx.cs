using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades;
using Negocio;
using System.Data;

namespace Vistas.Categoria
{
    public partial class BuscarCategoria : System.Web.UI.Page
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
                AgregarGrid();

            }
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            string cod = txtIdCategoria.Text;

            grdCategorias.DataSource = negCat.getCategoria(cod);
            grdCategorias.DataBind();
            txtIdCategoria.Text = " ";
        }

        private void AgregarGrid()
        {
            grdCategorias.DataSource = negCat.TablaCategorias();
            grdCategorias.DataBind();
        }

        protected void grdCategorias_RowEditing(object sender, GridViewEditEventArgs e)
        {
            grdCategorias.EditIndex = e.NewEditIndex;
            AgregarGrid();
        }

        protected void grdCategorias_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            grdCategorias.EditIndex = -1;
            AgregarGrid();
        }

        protected void grdCategorias_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            String s_codcat = ((Label)grdCategorias.Rows[e.RowIndex].FindControl("lbl_eit_CodCat")).Text;
            String s_nomcat = ((TextBox)grdCategorias.Rows[e.RowIndex].FindControl("txt_eit_Nombre")).Text;
            String s_desc = ((TextBox)grdCategorias.Rows[e.RowIndex].FindControl("txt_eit_Descripcion")).Text;

            NegocioCategoria negcat2 = new NegocioCategoria();

            negcat2.ModificarCategoria(s_codcat, s_nomcat, s_desc);

            grdCategorias.EditIndex = -1;
            AgregarGrid();
        }

        protected void btnTodos_Click(object sender, EventArgs e)
        {
            AgregarGrid();
        }
    }
}