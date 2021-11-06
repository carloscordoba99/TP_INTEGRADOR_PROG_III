using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;
using Entidades;

namespace Dao
{
    public class DaoDetalleDeVentas
    {
        AccesoDatos dt = new AccesoDatos();
        public Boolean ExisteDetalleDeVenta(DetalleDeVentas DetVenta)
        {
            string Consulta = "Select * from DetalleDeVentas where Cod_Venta_DV ='" + DetVenta.GetIdDetalleDeVentas() + "'";
            return dt.existe(Consulta);
        }
        public int AgregarDetalleDeVenta(DetalleDeVentas DetVenta)
        {
            SqlCommand comando = new SqlCommand();
            ArmarParametroDetVentaAgregar(ref comando, DetVenta);
            return dt.EjecutarProcedimientoAlmacenado(comando, "spAgregarDetalleDeVenta");
        }
        private void ArmarParametroDetVentaAgregar(ref SqlCommand Comando, DetalleDeVentas DetVenta)
        {
            SqlParameter SqlParametros = new SqlParameter();

            SqlParametros = Comando.Parameters.Add("@CodVenta", SqlDbType.Int);
            SqlParametros.Value = DetVenta.GetIdFactura();
            SqlParametros = Comando.Parameters.Add("@CodArticulo", SqlDbType.Int);
            SqlParametros.Value = DetVenta.GetCodProductoa();
            SqlParametros = Comando.Parameters.Add("@Cantidad", SqlDbType.Int);
            SqlParametros.Value = DetVenta.GetCantidad();
            SqlParametros = Comando.Parameters.Add("@PU", SqlDbType.Decimal);
            SqlParametros.Value = DetVenta.GetPrecioUnitario();
            
        }
        public DataTable GetDetalleDeVenta(String cod)
        {
            DataTable table = dt.ObtenerProducto("Detalle de Ventas", "Select * from DetalleDeVentas where Cod_DetalleVenta_DV = '" + cod.ToString() + "'");
            return table;
        }

        public DataTable GetDetalleDeVentas()
        {
            DataTable tabla = dt.ObtenerTablaProd("Detalle de Ventas", "Select * from DetalleDeVentas order by Cod_DetalleVenta_DV");
            return tabla;
        }

        public int EliminarDetalleDeVenta(DetalleDeVentas DetVenta)
        {
            SqlCommand comando = new SqlCommand();
            ArmarParametroProveedorEliminar(ref comando, DetVenta);
            return dt.EjecutarProcedimientoAlmacenado(comando, "spEliminarDetalleDeVenta");
        }

        private void ArmarParametroProveedorEliminar(ref SqlCommand comando, DetalleDeVentas DetVenta)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = comando.Parameters.Add("@CodDetVenta", SqlDbType.Int);
            SqlParametros.Value = DetVenta.GetIdDetalleDeVentas();
        }
    }
}
