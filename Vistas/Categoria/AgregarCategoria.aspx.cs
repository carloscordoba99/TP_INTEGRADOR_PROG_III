using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades;
using Negocio;
using System.Data;

namespace Vistas
{
    public partial class AgregarCategoria : System.Web.UI.Page
    {
        NegocioCategoria negCat = new NegocioCategoria();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usuario"] != null)
            {
                LblUsuario.Text = Session["Usuario"].ToString();
            }

            
            CargarCategorias();
        }

       
        private void CargarCategorias()
        {
            grdCategoria.DataSource = negCat.getTablaCategorias();
            grdCategoria.DataBind();
        }

        protected void btnCrear_Click(object sender, EventArgs e)
        {
            Boolean agregar = false;

            agregar = negCat.AgregarCategoria(txtNombreCat.Text, txtDescripcion.Text);
            if (agregar == true)
            {
                lblmensaje.Text = "Categoria agregada con Exito";
            }
            else
            {
                lblmensaje.Text = "No se pudo agregar sucursal";
            }

            LimpiarDatos();

            CargarCategorias();

        }

        public void LimpiarDatos()
        {
            txtNombreCat.Text = " ";
            txtDescripcion.Text = " ";
        }

        
    }
}