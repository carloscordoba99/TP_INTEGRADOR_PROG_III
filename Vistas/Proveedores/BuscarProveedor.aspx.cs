using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades;
using Negocio;

namespace Vistas.Proveedores
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        NegocioProveedores SearchProveedores = new NegocioProveedores();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usuario"] != null)
            {
                LblUsuario.Text = Session["Usuario"].ToString();
            }
            AgregarGrid();
        }

        protected void BtnBuscar_Click(object sender, EventArgs e)
        {
            string IdProveedor = TxtIdProveedor.Text;

            GrdProveedores.DataSource = SearchProveedores.GetProveedor(IdProveedor);
            GrdProveedores.DataBind();
            TxtIdProveedor.Text = " ";
        }
        protected void btnMostarTodos_Click(object sender, EventArgs e)
        {
            AgregarGrid();
        }
        private void AgregarGrid()
        {
            GrdProveedores.DataSource = SearchProveedores.GetTablaProveedores();
            GrdProveedores.DataBind();
        }
    }
}