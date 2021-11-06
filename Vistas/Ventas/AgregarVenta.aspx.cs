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
    public partial class WebForm1 : System.Web.UI.Page
    {
        NegocioVenta ObjVenta = new NegocioVenta();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnAgregar_Click(object sender, EventArgs e)
        {
            Boolean Agregado = false;

            Agregado = ObjVenta.AgregarVenta(TxtCodCliente.Text, TxtTotalFactura.Text, TxtFecha.Text);
            if (Agregado == true)
            {
                LblMensaje.Text = "Venta agregada.";
            }
            else
            {
                LblMensaje.Text = "No se ha podido agregar la venta.";
            }
            LimpiarDatos();
        }
        public void LimpiarDatos()
        {
            TxtCodCliente.Text = "";
            TxtTotalFactura.Text = "";
            TxtFecha.Text = "";
        }
    }
}