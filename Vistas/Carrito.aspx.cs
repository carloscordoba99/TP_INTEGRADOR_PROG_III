using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Negocio;
using System.Net.Mail;
using System.Net;

namespace Vistas
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LblUsuario.Text = Session["Usuario"].ToString();
            if (IsPostBack == false)
            {
                CargarGridView();
            }
        }

        public void CargarGridView()
        {
            NegocioCarrito Carrito = new NegocioCarrito();
            String CodUsuario = Session["IdUsuario"].ToString();
            
            GrdCarrito.DataSource = Carrito.GetCarrito(CodUsuario); ;
            GrdCarrito.DataBind();

            Decimal Total = 0;
            foreach(GridViewRow Fila in GrdCarrito.Rows)
            {
                Total += Convert.ToDecimal(((Label)Fila.Cells[6].FindControl("LblSubtotal")).Text);
            }
            LblTotal.Text = Convert.ToString(Total);
        }

        protected void GrdCarrito_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            String IdCarrito = ((Label)GrdCarrito.Rows[e.RowIndex].FindControl("LblCarrito")).Text;

            NegocioCarrito Carrito = new NegocioCarrito();
            Carrito.EliminarCarrito(Convert.ToInt32(IdCarrito));
            CargarGridView();
        }

        protected void BtnActualizar_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow Fila in GrdCarrito.Rows)
            {
                String IdArticulo = ((Label)Fila.FindControl("LblCarrito")).Text;
                String Cantidad = ((TextBox)Fila.FindControl("TxtCantidad")).Text;
                NegocioCarrito Carrito = new NegocioCarrito();
                Carrito.ActualizarTablaCantidadPrecio(Convert.ToInt32(IdArticulo), Convert.ToInt32(Cantidad));
            }
            CargarGridView();
        }

        protected void BtnComprar_Click(object sender, EventArgs e)
        {
            LblCompra.Text = "";
            LblError.Text = "";
            
            NegocioProducto Prod = new NegocioProducto();
            int Stock = 0, StockRequerido = 0;
            String Error = "No hay stock suficiente de el/los siguientes productos: <br>";
            Boolean ControlStock = true;
            if (GrdCarrito.Rows.Count > 0)
            {
                foreach (GridViewRow Fila in GrdCarrito.Rows)
                {
                    Stock = Prod.TraerCantidadDeStock(((Label)Fila.FindControl("LblArticulo")).Text);
                    StockRequerido = Convert.ToInt32(((TextBox)Fila.Cells[1].FindControl("TxtCantidad")).Text);
                    if (Stock < StockRequerido)
                    {
                        Error += " - " + Convert.ToString(((Label)Fila.Cells[2].FindControl("LblDescripcion")).Text) + ".<br>";
                        ControlStock = false;
                    }

                }
                if (ControlStock == true)
                {
                    String Compra = "";
                    foreach (GridViewRow Fila in GrdCarrito.Rows)
                    {
                        Compra += " - " + Convert.ToString(((TextBox)Fila.Cells[4].FindControl("TxtCantidad")).Text) + " " + Convert.ToString(((Label)Fila.Cells[2].FindControl("LblDescripcion")).Text) + " Por $ " + Convert.ToString(((Label)Fila.Cells[3].FindControl("LblPrecio")).Text) + " la unidad.<br>";
                    }
                    Compra += " Por el Total de: " + LblTotal.Text;
                    LblCompra.Text = "Usted Realizo la compra de: <br>" + Compra;

                    /// AHORA GENERO LA FACTURA Y EL DETALLE DE LA FACTURA
                    String IdCliente = Session["IdUsuario"].ToString();
                    String TotalAPagar = LblTotal.Text;
                    String FechaActual = DateTime.Now.ToString();
                    GenerarVenta(IdCliente, TotalAPagar, FechaActual);
                }
                else
                {
                    LblError.Text = Error;
                }
            }
            else
            {
                LblError.Text = "Usted no selecciono ningún producto para comprar. Seleccione uno para poder realizar la compra. ";
            }
            CargarGridView();
        }
        public void GenerarVenta(String CodCliente, String MontoTotal, String Fecha)
        {
            NegocioVenta Venta = new NegocioVenta();
            NegocioDetalleDeVentas DetVenta = new NegocioDetalleDeVentas();


            bool Vendido = Venta.AgregarVenta(CodCliente, MontoTotal, Fecha);
            if (Vendido == true)
            {
                
                String CodVenta = Venta.GetVentaSegunClienteMontoFecha();/// PIDO EL CÓDIGO DE LA VENTA
                //String CodVenta = Vt.Rows[0]["Cod_Venta_V"].ToString(); 
                foreach (GridViewRow Fila in GrdCarrito.Rows)
                {
                    /// GENERO EL DETALLE DE VENTA
                    String CodArt = ((Label)Fila.FindControl("LblArticulo")).Text;
                    String Cantidad = ((TextBox)Fila.Cells[4].FindControl("TxtCantidad")).Text;
                    String PrecioUnitario = ((Label)Fila.Cells[3].FindControl("LblPrecio")).Text;
                    DetVenta.AgregarDetalleDeVenta(CodVenta, CodArt,Cantidad, PrecioUnitario);

                    /// DOY DE BAJA EL PRODUCTO DEL CARRITO
                    DarDeBajaDelCarrito(CodCliente, CodArt);
                }
            }
            else
            {
                LblError.Text = "Lo siento, no se pudo realizar la compra. Intente de nuevo";
            }
        }
        public void DarDeBajaDelCarrito(String CodCliente, String CodArt)
        {
            NegocioCarrito Carrito = new NegocioCarrito();
            Carrito.DarDeBajaDelCarrito(CodCliente, CodArt);
        }
    }
}