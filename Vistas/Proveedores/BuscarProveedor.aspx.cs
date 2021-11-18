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


            if (IsPostBack == false)
            {
                AgregarGrid();
            }
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

        protected void GrdProveedores_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GrdProveedores.EditIndex = e.NewEditIndex;
            AgregarGrid();
        }

        protected void GrdProveedores_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GrdProveedores.EditIndex = -1;
            AgregarGrid();
        }

        protected void GrdProveedores_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            String codprov = ((Label)GrdProveedores.Rows[e.RowIndex].FindControl("lbl_eit_CodPro")).Text;
            String razonSocial = ((TextBox)GrdProveedores.Rows[e.RowIndex].FindControl("txt_eit_RazonSocial")).Text;
            String marca = ((TextBox)GrdProveedores.Rows[e.RowIndex].FindControl("txt_eit_Marca")).Text;
            String direccion = ((TextBox)GrdProveedores.Rows[e.RowIndex].FindControl("txt_eit_Direccion")).Text;
            String ciudad = ((TextBox)GrdProveedores.Rows[e.RowIndex].FindControl("txt_eit_Ciudad")).Text;
            String provincia = ((TextBox)GrdProveedores.Rows[e.RowIndex].FindControl("txt_eit_Provincia")).Text;
            String cuit = ((TextBox)GrdProveedores.Rows[e.RowIndex].FindControl("txt_eit_Cuit")).Text;
            String telefono = ((TextBox)GrdProveedores.Rows[e.RowIndex].FindControl("txt_eit_Telefono")).Text;
            String contacto = ((TextBox)GrdProveedores.Rows[e.RowIndex].FindControl("txt_eit_Contacto")).Text;
            String web = ((TextBox)GrdProveedores.Rows[e.RowIndex].FindControl("txt_eit_Web")).Text;
            String email = ((TextBox)GrdProveedores.Rows[e.RowIndex].FindControl("txt_eit_Email")).Text;
            String cbu = ((TextBox)GrdProveedores.Rows[e.RowIndex].FindControl("txt_eit_CBU")).Text;

            NegocioProveedores auxProv = new NegocioProveedores();

            auxProv.ActualizarProveedor(codprov, razonSocial, marca, direccion, ciudad, provincia, cuit, telefono, contacto, web, email, cbu);

            GrdProveedores.EditIndex = -1;
            AgregarGrid();

        }
    }
}