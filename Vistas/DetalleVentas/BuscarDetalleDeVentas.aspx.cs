using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades;
using Negocio;

namespace Vistas.DetalleDeVentas
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        NegocioDetalleDeVentas SearchDetVenta = new NegocioDetalleDeVentas();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usuario"] != null)
            {
                LblUsuario.Text = Session["Usuario"].ToString();
            }
            AgregarGrid();
        }

        protected void BtnAgregar_Click(object sender, EventArgs e)
        {
            string IdDetVenta = TxtIdDetVenta.Text;

            GrdDetVentas.DataSource = SearchDetVenta.GetDetalleDeVenta(IdDetVenta);
            GrdDetVentas.DataBind();
            TxtIdDetVenta.Text = " ";
        }

        protected void BtnMostrarTodos_Click(object sender, EventArgs e)
        {
            AgregarGrid();
        }

        private void AgregarGrid()
        {
            GrdDetVentas.DataSource = SearchDetVenta.GetTablaDetalleDeVentas();
            GrdDetVentas.DataBind();
        }
    }
}