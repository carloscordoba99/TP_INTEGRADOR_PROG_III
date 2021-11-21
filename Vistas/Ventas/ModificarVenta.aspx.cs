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
        }


        /*private void CargarGridViewVentas()
        {
            grdVentas.DataSource = UpdateVenta.ObtenerTodasLasVentas();
            grdVentas.DataBind();
        }*/
    }
}