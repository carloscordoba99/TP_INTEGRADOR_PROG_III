using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Vistas.reportes
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usuario"] != null)
            {
                LblUsuario.Text = Session["Usuario"].ToString();
            }
        }

        protected void BtnMostrarReporte_Click(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection("Data Source=localhost\\SQLEXPRESS;Initial Catalog=ProyectoProg3;Integrated Security=True");
            SqlDataAdapter da = new SqlDataAdapter("ReporteVentasRangoDeFechas",cn);
            DataTable dt = new DataTable();
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.SelectCommand.Parameters.Add("@FECHA_INICIO", SqlDbType.DateTime).Value = Convert.ToDateTime(TxtInicio.Text);
            da.SelectCommand.Parameters.Add("@FECHA_FINAL", SqlDbType.DateTime).Value = Convert.ToDateTime(TxtFinal.Text);

            da.Fill(dt);
            GrdReporte.DataSource = dt;
            GrdReporte.DataBind();
            /*decimal Total = 0;
            foreach (GridViewRow Fila in GrdReporte.Rows)
            {
                Total += Fila.Cells[3];
            }
            LblRecaudaciónTotal.Text = "RECAUDACION TOTAL: $ " + Convert.ToString(Total);*/
        }

        protected void GrdReporte_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            string CodVenta = (GrdReporte.Rows[e.NewSelectedIndex].Cells[1]).Text;
            SqlConnection cn = new SqlConnection("Data Source=localhost\\SQLEXPRESS;Initial Catalog=ProyectoProg3;Integrated Security=True");
            SqlDataAdapter da = new SqlDataAdapter("ReporteDetalleDeVentasRangoDeFechas", cn);
            DataTable dt = new DataTable();
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.SelectCommand.Parameters.Add("@FECHA_INICIO", SqlDbType.DateTime).Value = Convert.ToDateTime(TxtInicio.Text);
            da.SelectCommand.Parameters.Add("@FECHA_FINAL", SqlDbType.DateTime).Value = Convert.ToDateTime(TxtFinal.Text);
            da.SelectCommand.Parameters.Add("@COD_VENTA", SqlDbType.Int).Value = Convert.ToInt32(CodVenta);

            da.Fill(dt);
            grdDetalleVentas.DataSource = dt;
            grdDetalleVentas.DataBind();
        }
    }
}