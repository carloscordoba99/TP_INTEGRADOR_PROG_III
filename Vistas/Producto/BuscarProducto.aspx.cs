using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades;
using Negocio;

namespace Vistas.Producto
{
    public partial class BuscarProducto : System.Web.UI.Page
    {
        NegocioProducto negProd = new NegocioProducto();
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
            string id = txtIdProd.Text;

            grdProductos.DataSource = negProd.GetProducto(id);
            grdProductos.DataBind();
            txtIdProd.Text = " ";
        }

        protected void btnMostarTodos_Click(object sender, EventArgs e)
        {
            AgregarGrid();
        }

        
        private void AgregarGrid()
        {
            
            grdProductos.DataSource = negProd.GetTablaProductos();
            grdProductos.DataBind();
        }

        protected void grdProductos_RowEditing(object sender, GridViewEditEventArgs e)
        {
            grdProductos.EditIndex = e.NewEditIndex;
            AgregarGrid();
        }

        protected void grdProductos_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            grdProductos.EditIndex = -1;
            AgregarGrid();
        }

        protected void grdProductos_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            
            String aux_codart = ((Label)grdProductos.Rows[e.RowIndex].FindControl("lbl_eit_CodigoArticulo")).Text;
            String aux_NomArt = ((TextBox)grdProductos.Rows[e.RowIndex].FindControl("txt_eit_NombreArt")).Text;
            String aux_Desc = ((TextBox)grdProductos.Rows[e.RowIndex].FindControl("txt_eit_Descripcion")).Text;
            String aux_pu = ((TextBox)grdProductos.Rows[e.RowIndex].FindControl("txt_eit_PrecioUnitario")).Text;
            String aux_Estado = ((TextBox)grdProductos.Rows[e.RowIndex].FindControl("txt_eit_Estado")).Text;
            String aux_CodCat = ((TextBox)grdProductos.Rows[e.RowIndex].FindControl("txt_eit_CodCat")).Text;
            String aux_Stock = ((TextBox)grdProductos.Rows[e.RowIndex].FindControl("txt_eit_Stock")).Text;
            
            String aux_CodProv = ((TextBox)grdProductos.Rows[e.RowIndex].FindControl("txt_eit_CodProveedor")).Text;

            NegocioProducto negProd2 = new NegocioProducto();

            negProd2.ModficarProducto(aux_codart, aux_NomArt, aux_Desc, aux_pu, aux_Estado, aux_CodCat, aux_Stock, aux_CodProv);

            grdProductos.EditIndex = -1;
            AgregarGrid();
        }
    }

    
}