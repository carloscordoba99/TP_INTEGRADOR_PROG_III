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
    public class DaoVentas
    {
        AccesoDatos dt = new AccesoDatos();
        public Boolean ExisteVenta(Venta NuevaVenta)
        {
            string Consulta = "Select * from Ventas where Cod_Venta_V ='" + NuevaVenta.GetIdFactura() + "'";
            return dt.existe(Consulta);
        }
        public int AgregarVenta(Venta NuevaVenta)
        {
            SqlCommand comando = new SqlCommand();
            ArmarParametroVentaAgregar(ref comando, NuevaVenta);
            return dt.EjecutarProcedimientoAlmacenado(comando, "spAgregarVenta");
        }
        private void ArmarParametroVentaAgregar(ref SqlCommand Comando, Venta NuevaVenta)
        {
            SqlParameter SqlParametros = new SqlParameter();

            SqlParametros = Comando.Parameters.Add("@CodCliente", SqlDbType.Int);
            SqlParametros.Value = NuevaVenta.GetIdCliente();
            SqlParametros = Comando.Parameters.Add("@TotalFactura", SqlDbType.Money);
            SqlParametros.Value = NuevaVenta.GetTotalFactura();
            SqlParametros = Comando.Parameters.Add("@FechaFactura", SqlDbType.DateTime);
            SqlParametros.Value = NuevaVenta.GetFechaVenta();
        }
        public DataTable GetVenta(String cod)
        {
            DataTable table = dt.ObtenerProducto("Ventas", "Select * from ventas where Cod_Venta_V = '" + cod.ToString() + "'");
            return table;
        }

        public DataTable GetVentas()
        {
            DataTable tabla = dt.ObtenerTablaProd("Ventas", "Select * from ventas order by Cod_Venta_V");
            return tabla;
        }

        public int EliminarVenta(Venta Venta_)
        {
            SqlCommand comando = new SqlCommand();
            ArmarParametroVentaEliminar(ref comando, Venta_);
            return dt.EjecutarProcedimientoAlmacenado(comando, "spEliminarVenta");
        }

        private void ArmarParametroVentaEliminar(ref SqlCommand comando, Venta Venta_)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = comando.Parameters.Add("@CodVenta", SqlDbType.Int);
            SqlParametros.Value = Venta_.GetIdFactura();
        }

        private void ArmarParametroModificar(ref SqlCommand comando, Venta Venta_)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = comando.Parameters.Add("@CODVENTA", SqlDbType.Int);
            SqlParametros.Value = Venta_.GetIdFactura();
            SqlParametros = comando.Parameters.Add("@CODCLIENTE", SqlDbType.Int);
            SqlParametros.Value = Venta_.GetIdCliente();
            SqlParametros = comando.Parameters.Add("@TOTALFACT", SqlDbType.Decimal);
            SqlParametros.Value = Venta_.GetTotalFactura();
            SqlParametros = comando.Parameters.Add("@FECHAVTA", SqlDbType.Date);
            SqlParametros.Value = Venta_.GetFechaVenta();
        }

        public int ModificarVenta(Venta obj)
        {
            SqlCommand comando = new SqlCommand();
            ArmarParametroModificar(ref comando, obj);
            return dt.EjecutarProcedimientoAlmacenado(comando, "spActualizarVenta");
            
        }
        /*
        public Boolean ExisteCliente(Usuario cliente)
        {
            string Consulta = "Select * from Usuario where IdCliente='" + cliente.GetIdCliente() + "'";
            return dt.existe(Consulta);
        }*/

    }
}
