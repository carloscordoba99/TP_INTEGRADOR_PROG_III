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
            AgregarGrid();
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            string cod = txtIdCategoria.Text;

            grdCategoria.DataSource = negCat.getCategoria(cod);
            grdCategoria.DataBind();
            txtIdCategoria.Text = " ";
        }

        private void AgregarGrid()
        {
            grdCategoria.DataSource = negCat.getTablaCategorias();
            grdCategoria.DataBind();
        }
    }
}