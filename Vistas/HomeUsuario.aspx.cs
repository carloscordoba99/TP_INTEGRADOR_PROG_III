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
        private ListViewDataItem[] itemsTodos;
        protected void Page_Load(object sender, EventArgs e)
        {
            LblUsuario.Text = Session["Usuario"].ToString();

            /*itemsTodosBD.Items.Clear();
            foreach (ListViewDataItem item in LVproductos.Items)
            {
                itemsTodosBD.Items.Add(item);
            }*/

            itemsTodos = new ListViewDataItem[LVproductos.Items.Count];
            this.LVproductos.Items.CopyTo(itemsTodos, 0);
        }
        protected void BtnCerrarSesion_Click(object sender, EventArgs e)
        {
            Session["Usuario"] = null;
            LblUsuario.Text = "";
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

        protected void BtnBuscar_Click(object sender, EventArgs e)
        {
            String Busqueda = txtbuscar.Text.ToUpper();
            SqlDataSource1.SelectCommand = "SELECT [ImagenUrl], [Descripcion], [PrecioUnitario], [CodArticulo] FROM [Articulos] WHERE [Estado] = '1' AND [Descripcion] LIKE '%' + '"+ Busqueda +"' + '%'";
        }
        protected void BtnMostrarTodos_Click(object sender, EventArgs e)
        {
            SqlDataSource1.SelectCommand = "SELECT [ImagenUrl], [Descripcion], [PrecioUnitario], [CodArticulo] FROM [Articulos] WHERE [Estado] = '1'";
        }

        protected void BtnMemoriasRAM_Click(object sender, EventArgs e)
        {
            SqlDataSource1.SelectCommand = "SELECT [ImagenUrl], [Descripcion], [PrecioUnitario], [CodArticulo] FROM [Articulos] WHERE [Estado] = '1' AND CodCategoria = '1'";
        }

        protected void BtnMonitores_Click(object sender, EventArgs e)
        {
            SqlDataSource1.SelectCommand = "SELECT [ImagenUrl], [Descripcion], [PrecioUnitario], [CodArticulo] FROM [Articulos] WHERE [Estado] = '1' AND CodCategoria = '2'";
        }

        protected void BtnAuriculares_Click(object sender, EventArgs e)
        {
            SqlDataSource1.SelectCommand = "SELECT [ImagenUrl], [Descripcion], [PrecioUnitario], [CodArticulo] FROM [Articulos] WHERE [Estado] = '1' AND CodCategoria = '3'";
        }
        protected void BtnMouse_Click(object sender, EventArgs e)
        {
            SqlDataSource1.SelectCommand = "SELECT [ImagenUrl], [Descripcion], [PrecioUnitario], [CodArticulo] FROM [Articulos] WHERE [Estado] = '1' AND CodCategoria = '4'";
        }

        protected void BtnMotherBoard_Click(object sender, EventArgs e)
        {
            SqlDataSource1.SelectCommand = "SELECT [ImagenUrl], [Descripcion], [PrecioUnitario], [CodArticulo] FROM [Articulos] WHERE [Estado] = '1' AND CodCategoria = '5'";
        }

        protected void BtnMicrofono_Click(object sender, EventArgs e)
        {
            SqlDataSource1.SelectCommand = "SELECT [ImagenUrl], [Descripcion], [PrecioUnitario], [CodArticulo] FROM [Articulos] WHERE [Estado] = '1' AND CodCategoria = '6'";
        }

        protected void BtnTeclados_Click(object sender, EventArgs e)
        {
            SqlDataSource1.SelectCommand = "SELECT [ImagenUrl], [Descripcion], [PrecioUnitario], [CodArticulo] FROM [Articulos] WHERE [Estado] = '1' AND CodCategoria = '7'";
        }
    }
}