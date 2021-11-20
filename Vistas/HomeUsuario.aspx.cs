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
            if(ControlarSiExiste(cod) == false)
            {
                decimal total;
                int cantidad = 1;
                total = precio * cantidad;
                Carrito = (DataTable)Session["Pedido"];
                DataRow fila = Carrito.NewRow();
                fila[0] = cod;
                fila[1] = des;
                fila[2] = precio;
                fila[3] = (int)cantidad;
                fila[4] = total;
                Carrito.Rows.Add(fila);
                Session["Pedido"] = Carrito;
                LblProductoAgregado.Text = "Agregado: " + des;
            }
            else
            {
                LblProductoAgregado.Text = "EL PRODUCTO " + des + " YA FUE AGREGADO";
            }
        }

        public bool ControlarSiExiste(string Cod)
        {
            bool Control = false;
            DataTable ContenidoCarrito = (DataTable)Session["Pedido"];
            foreach (DataRow dr in ContenidoCarrito.Rows)
            {
                if(Convert.ToString(dr["ID Artículo"]) == Cod)
                {
                    Control = true;
                }
            }

            return Control;
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
                string IdArticulo = e.CommandArgument.ToString();
                string Descripcion = NegProd.GetDescripcion(IdArticulo);
                decimal Precio = NegProd.GetPrecio(IdArticulo);
                AgregarItem(IdArticulo, Descripcion, Precio);
            }
        }
    }
}