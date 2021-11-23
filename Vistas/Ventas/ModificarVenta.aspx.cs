using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Entidades;
using Negocio;

namespace Vistas.Ventas
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        NegocioVenta UpdateVenta = new NegocioVenta();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usuario"] != null)
            {
                LblUsuario.Text = Session["Usuario"].ToString();
            }

            if (IsPostBack == false)
            {
                CargarGridViewVentas();
            }
        }


        private void CargarGridViewVentas()
        {
            grdVentas.DataSource = UpdateVenta.ObtenerTodasLasVentas();
            grdVentas.DataBind();
        }

        protected void grdVentas_RowEditing(object sender, GridViewEditEventArgs e)
        {
            grdVentas.EditIndex = e.NewEditIndex;
            CargarGridViewVentas();
        }

        protected void grdVentas_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            grdVentas.EditIndex = -1;
            CargarGridViewVentas();
        }

        protected void grdVentas_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            String codventa = ((Label)grdVentas.Rows[e.RowIndex].FindControl("lbl_eit_CodVenta")).Text;
            String codcliente = ((Label)grdVentas.Rows[e.RowIndex].FindControl("lbl_eit_CodCliente")).Text;
            String totalventa = ((TextBox)grdVentas.Rows[e.RowIndex].FindControl("txt_eit_Totalfact")).Text;
            String fechafact = ((TextBox)grdVentas.Rows[e.RowIndex].FindControl("txt_eit_FechaF")).Text;

            NegocioVenta UpdateVenta2 = new NegocioVenta();
            UpdateVenta2.ActualizarVenta(codventa, codcliente, totalventa, fechafact);

            grdVentas.EditIndex = -1;
            CargarGridViewVentas();

        }

       
    }
}