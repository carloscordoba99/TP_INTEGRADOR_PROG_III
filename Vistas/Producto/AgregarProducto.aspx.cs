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
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //dropdowlist Categoria

                ddlCategoria.DataSource = negCat.getTablaCategorias();
                ddlCategoria.DataTextField = "NombreCategoria";
                ddlCategoria.DataBind();
            }
        }

       


        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            Boolean agregado = false;

            agregado = objProd.AgregarProducto(txtNombre.Text, txtMarca.Text, txtPrecioU.Text, ddlCategoria.SelectedIndex.ToString(), txtStock.Text);
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
            txtMarca.Text = " ";
            txtPrecioU.Text = " ";
            txtStock.Text = " ";
        }

        protected void txtNombre_TextChanged(object sender, EventArgs e)
        {

        }
    }
}