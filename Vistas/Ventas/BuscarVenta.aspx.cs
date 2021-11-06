using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades;
using Negocio;

namespace Vistas.Ventas
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        NegocioVenta SearchVenta = new NegocioVenta();
        protected void Page_Load(object sender, EventArgs e)
        {
            AgregarGrid();
        }

        protected void BtnBuscar_Click(object sender, EventArgs e)
        {
            string IdVenta = TxtIdVenta.Text;

            GrdVenta.DataSource = SearchVenta.GetVenta(IdVenta);
            GrdVenta.DataBind();
            TxtIdVenta.Text = " ";
        }

        private void AgregarGrid()
        {
            GrdVenta.DataSource = SearchVenta.GetTablaVentas();
            GrdVenta.DataBind();
        }

        protected void btnMostarTodos_Click(object sender, EventArgs e)
        {
            AgregarGrid();
        }
    }
}