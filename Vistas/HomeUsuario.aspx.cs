using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using System.Data;

namespace Vistas
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            //LblMensaje.Text = Session["Usuario"].ToString();
            if(IsPostBack == false)
            {
               
                CrearTablaPedido();
            }
        }
        DataTable Dt;
        DataTable Carrito = new DataTable();
        public DataTable CrearTablaPedido()
        {
            
            if (Session["Pedido"] == null)
            {
                Dt = new DataTable("Carrito");
                Dt.Columns.Add("ID Artículo", System.Type.GetType("System.String"));
                Dt.Columns.Add("Descripción", System.Type.GetType("System.String"));
                Dt.Columns.Add("Precio Unitario", System.Type.GetType("System.Decimal"));
                Dt.Columns.Add("Cantidad", System.Type.GetType("System.Int32"));
                Dt.Columns.Add("Sub total", System.Type.GetType("System.Decimal"));

                Session["Pedido"] = Dt;
            }

            return Dt;
        }

        public void AgregarItem(string cod, string des, decimal precio)
        {
           
        }

        protected void BtnCerrarSesion_Click(object sender, EventArgs e)
        {
            Session["Usuario"] = null;
            LblMensaje.Text = "";
            Response.Redirect("LoginForm.aspx");
        }

        protected void BtnCarrito_Click(object sender, EventArgs e)
        {
            Response.Redirect("Carrito.aspx");
        }

        protected void BtnCarrito_Command(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "EventoAgregar")
            {
                NegocioProducto NegProd = new NegocioProducto();
                NegocioCarrito Carrito = new NegocioCarrito();
                Session["IdUsuario"] = "1";                                 //// SACAR
                String IdUsuario = Session["IdUsuario"].ToString();
                string IdArticulo = e.CommandArgument.ToString();
                string Descripcion = NegProd.GetDescripcion(IdArticulo);
                decimal Precio = NegProd.GetPrecio(IdArticulo);

                Boolean Agregado = Carrito.AgregarCarrito(Convert.ToInt32(IdUsuario), Convert.ToInt32(IdArticulo), Descripcion, Precio, 1, Precio, false);
                if (Agregado == true)
                {
                    LblProductoAgregado.Text = "PRODUCTO AGREGADO: " + Descripcion;
                }
                else
                {
                    LblProductoAgregado.Text = "EL PRODUCTO: '" + Descripcion + "' YA EXISTE";
                }
            }
        }
    }
}