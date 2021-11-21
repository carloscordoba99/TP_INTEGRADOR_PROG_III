using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Negocio;

namespace Vistas
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack == false)
            {
                CargarGridView();
            }
        }

        public void CargarGridView()
        {
            NegocioCarrito Carrito = new NegocioCarrito();
            Session["IdUsuario"] = "1";                   //// SACAR
            String CodUsuario = Session["IdUsuario"].ToString();
            
            GrdCarrito.DataSource = Carrito.GetCarrito(CodUsuario); ;
            GrdCarrito.DataBind();


        }

        protected void GrdCarrito_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            String IdArticulo = ((Label)GrdCarrito.Rows[e.RowIndex].FindControl("LblCarrito")).Text;

            NegocioCarrito Carrito = new NegocioCarrito();
            Boolean estado = Carrito.EliminarCarrito(Convert.ToInt32(IdArticulo));
            LblIdTotal.Text = Convert.ToString(estado);
            CargarGridView();
        }

        protected void GrdCarrito_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GrdCarrito.EditIndex = -1;
            CargarGridView();
        }

    }
}