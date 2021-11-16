using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Entidades;
using Negocio;

namespace Vistas.Producto
{
    public partial class AgregarProducto : System.Web.UI.Page
    {
        NegocioProducto objProd = new NegocioProducto();
        NegocioCategoria negCat = new NegocioCategoria();
        NegocioCategoria negCat2 = new NegocioCategoria();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usuario"] != null)
            {
                LblUsuario.Text = Session["Usuario"].ToString();
            }
            if (!IsPostBack)
            {
                //dropdowlist Categoria

                ddlCategoria.DataSource = negCat.getTablaCategorias();
                ddlCategoria.DataTextField = "NombreCategoria";
                ddlCategoria.DataBind();

                ddlProveedor.DataSource = negCat2.getTablaProveedores();
                ddlProveedor.DataTextField = "Cod_Proveedor_Pr";
                ddlProveedor.DataBind();
            }
        }

       


        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            Boolean agregado = false;

            agregado = objProd.AgregarProducto(txtNombre.Text,txtDescripcion.Text, txtPrecioU.Text, ddlCategoria.SelectedIndex.ToString(), txtStock.Text,ddlProveedor.SelectedValue);
            if (agregado == true)
            {
                lblMensaje.Text = "Producto Agregado";
            }
            else
            {
                lblMensaje.Text = "No se ha podido agregar producto";
            }

            LimpiarDatos();
        }


        public void LimpiarDatos()
        {
            txtNombre.Text = " ";
            txtDescripcion.Text = " ";
            txtPrecioU.Text = " ";
            txtStock.Text = " ";
        }

        protected void txtNombre_TextChanged(object sender, EventArgs e)
        {

        }
    }
}