using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;

namespace Vistas.Provincias
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        NegocioProvincia ObjProvincia = new NegocioProvincia();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usuario"] != null)
            {
                LblUsuario.Text = Session["Usuario"].ToString();
            }
            if (IsPostBack == false)
            {
                AgregarListaProvincias();
            }
        }
        protected void BtnBuscar_Click(object sender, EventArgs e)
        {
            string id = txtIdProvincia.Text;
            grdProvincias.DataSource = ObjProvincia.GetProvincia(id);
            grdProvincias.DataBind();
            txtIdProvincia.Text = "";
        }
        public void AgregarListaProvincias()
        {
            grdProvincias.DataSource = ObjProvincia.GetTablaProvincias();
            grdProvincias.DataBind();
        }

        protected void BtnMostrarTodos_Click(object sender, EventArgs e)
        {
            AgregarListaProvincias();
            txtIdProvincia.Text = "";
        }

        protected void grdProvincias_RowEditing(object sender, GridViewEditEventArgs e)
        {
            grdProvincias.EditIndex = e.NewEditIndex;
            AgregarListaProvincias();
        }

        protected void grdProvincias_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            grdProvincias.EditIndex = -1;
            AgregarListaProvincias();
        }

        protected void grdProvincias_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            String IdProvincia = ((Label)grdProvincias.Rows[e.RowIndex].FindControl("lbl_eit_IdProvincia")).Text;
            String NombreProvincia = ((TextBox)grdProvincias.Rows[e.RowIndex].FindControl("txt_eit_NombreProvincia")).Text;

            NegocioProvincia negProvincia = new NegocioProvincia();

            negProvincia.ModificarProvincia(IdProvincia,NombreProvincia);

            grdProvincias.EditIndex = -1;
            AgregarListaProvincias();
        }
    }
}