﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Vistas
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack == false)
            {
                CargarGridView();
                Decimal Total = GrdCarrito.Rows.Cast<GridViewRow>().Sum(x => Convert.ToDecimal(x.Cells[4].Text));
                LblIdTotal.Text = Convert.ToString(Total);
            }
        }

        public void CargarGridView()
        {
            DataTable dt = (DataTable)Session["Pedido"];       
            GrdCarrito.DataSource = dt;
            GrdCarrito.DataBind();
        }
        public void CargarTotal()
        {
            Decimal Total = GrdCarrito.Rows.Cast<GridViewRow>().Sum(x => Convert.ToDecimal(x.Cells[3].Text));
            LblIdTotal.Text = Convert.ToString(Total);
        }
        protected void GrdCarrito_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            DataTable dt = (DataTable)Session["Pedido"];

            DataRow IdArticulo = dt.Rows[e.RowIndex];
            IdArticulo.Delete();
            CargarGridView();
            CargarTotal();
    
            //String IdArticulo = dt.Rows[e.RowIndex].Delete();
            //String IdArticulo = (GrdCarrito.Rows[e.RowIndex].FindControl("ID Artículo")).Text;
            //Label1.Text = IdArticulo;
            /*foreach (DataRow dr in dt.Rows)
            {
                if (dr["ID Artículo"].ToString() == IdArticulo) dr.Delete();
            }
            CargarGridView();*/

            /*String IdArticulo = GrdCarrito.Rows[e.RowIndex].FindControl("ID Artículo");
            String Descripcion = GrdCarrito.Rows[e.RowIndex].FindControl("Descripción").ToString();
            String Precio = GrdCarrito.Rows[e.RowIndex].FindControl("Precio Unitario").ToString();
            String Cantidad = GrdCarrito.Rows[e.RowIndex].FindControl("Cantidad").ToString();
            String SubTotal = GrdCarrito.Rows[e.RowIndex].FindControl("Sub total").ToString();*/
        }

        protected void GrdCarrito_RowEditing(object sender, GridViewEditEventArgs e)
        {
            DataTable dt = (DataTable)Session["Pedido"];
            DataRow IdArticulo = dt.Rows[e.NewEditIndex];
            /*CargarGridView();
            CargarTotal();*/
        }

        protected void GrdCarrito_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            /*DataTable dt = (DataTable)Session["Pedido"];
            DataRow Fila = dt.Rows[e.RowIndex];
            //IdArticulo.get
            //dt.Rows[]["Cantidad"] = "3";

            foreach (DataRow row in dt.Rows)
            {
                if (Convert.ToInt32(row["ID Artículo"].ToString()) == Convert.ToInt32(TxtId.Text))
                {
                    dt.Rows[e.RowIndex]["Cantidad"] = TxtCantidad.Text;
                }
            }
            GrdCarrito.EditIndex = -1;
            CargarGridView();*/


            DataTable dt = (DataTable)Session["Pedido"];
            GridViewRow row = GrdCarrito.Rows[e.RowIndex];

            decimal Cantidad = Convert.ToDecimal(((TextBox)row.Cells[4].Controls[0]).Text);
            decimal PrecioUnitario = Convert.ToDecimal(((TextBox)row.Cells[3].Controls[0]).Text);
            decimal NuevoPrecio = PrecioUnitario * Cantidad;
            dt.Rows[row.DataItemIndex]["Cantidad"] = Cantidad;
            dt.Rows[row.DataItemIndex]["Sub total"] = NuevoPrecio;

            GrdCarrito.EditIndex = -1;
            CargarGridView();
            CargarTotal();
        }

        protected void GrdCarrito_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GrdCarrito.EditIndex = -1;
            CargarGridView();
            CargarTotal();
        }

    }
}