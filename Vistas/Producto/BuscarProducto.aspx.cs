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
            AgregarGrid();
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
    }

    
}