using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;

namespace Vistas.Localidades
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        NegocioLocalidades NegLocal = new NegocioLocalidades();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usuario"] != null)
            {
                LblUsuario.Text = Session["Usuario"].ToString();
            }
            if (IsPostBack == false)
            {
                AgregarListaLocalidades();
            }
        }
        protected void BtnBuscar_Click(object sender, EventArgs e)
        {
            string id = txtIdLocalidad.Text;
            grdLocalidades.DataSource = NegLocal.GetLocalidad(id);
            grdLocalidades.DataBind();
            txtIdLocalidad.Text = "";
        }
        public void AgregarListaLocalidades()
        {
            grdLocalidades.DataSource = NegLocal.GetTablaLocalidades();
            grdLocalidades.DataBind();
        }

        protected void BtnMostrarTodos_Click(object sender, EventArgs e)
        {
            AgregarListaLocalidades();
        }

        protected void grdLocalidades_RowEditing(object sender, GridViewEditEventArgs e)
        {
            grdLocalidades.EditIndex = e.NewEditIndex;
            AgregarListaLocalidades();
        }

        protected void grdLocalidades_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            String IdLocalidad = ((Label)grdLocalidades.Rows[e.RowIndex].FindControl("lbl_eit_IdLocalidad")).Text;
            String NombreLocalidad = ((TextBox)grdLocalidades.Rows[e.RowIndex].FindControl("txt_eit_NombreLocalidad")).Text;
            String IdProvincia = ((TextBox)grdLocalidades.Rows[e.RowIndex].FindControl("txt_eit_IdLocalidad")).Text;

            NegLocal.ModificarProvincia(IdLocalidad, NombreLocalidad, IdProvincia);

            grdLocalidades.EditIndex = -1;
            AgregarListaLocalidades();
        }
    }
}