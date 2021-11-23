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
            if(IsPostBack == false)
            {
                CargarGridView();
            }
        }

        public void CargarGridView()
        {
            NegocioCarrito Carrito = new NegocioCarrito();
            Session["IdUsuario"] = "1";                   //// SACAR
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
            /* NegocioUsuarios Usuario = new NegocioUsuarios();
             String Correo = "";

             SmtpClient smtp = new SmtpClient("smpt.alumnos.frgp.utn.edu.ar", 587);
             smtp.Credentials = new NetworkCredential("francisco.crestanello@alumnos.frgp.utn.edu.ar","1234");
             smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
             smtp.EnableSsl = true;
             smtp.UseDefaultCredentials = false;

             MailMessage Mail = new MailMessage();
             Mail.From = new MailAddress(Correo, "FACTURA DE COMPRA");
             Mail.To.Add(new MailAddress(""))
             */
            String Compra = "";
            foreach (GridViewRow Fila in GrdCarrito.Rows)
            {
                Compra += " - " + Convert.ToString(((TextBox)Fila.Cells[4].FindControl("TxtCantidad")).Text) + " " + Convert.ToString(((Label)Fila.Cells[2].FindControl("LblDescripcion")).Text) + " Por $ " + Convert.ToString(((Label)Fila.Cells[3].FindControl("LblPrecio")).Text) + " <br>";
            }
            Compra += " Por el Total de: " + LblTotal.Text;
            LblCompra.Text = "Usted Realizo la compra de: <br>" + Compra;
        }
    }
}