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
    public class DaoCarritos
    {
        AccesoDatos dt = new AccesoDatos();
        public Boolean ExisteCarrito(Carritos Carrito)
        {
            String consulta = "Select * from Carritos where CodCarrito='" + Carrito.GetCodCarrito() + "'";
            return dt.existe(consulta);
        }
        public Boolean ContieneElArticulo(Carritos Carrito)
        {
            String consulta = "Select * from Carritos where CodArticulo='" + Carrito.GetCodArticulo() + "' AND CodUsuario='"+Carrito.GetCodUsuario()+"' AND Comprado=0";
            return dt.existe(consulta);
        }
        public int AgregarCarrito(Carritos Carrito)
        {
            SqlCommand comando = new SqlCommand();
            ArmarParametrosCategorialAgregar(ref comando, Carrito);
            return dt.EjecutarProcedimientoAlmacenado(comando, "spAgregarCarrito");
        }
        private void ArmarParametrosCategorialAgregar(ref SqlCommand Comando, Carritos carritos)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@USUARIO", SqlDbType.Int);
            SqlParametros.Value = carritos.GetCodUsuario();
            SqlParametros = Comando.Parameters.Add("@ARTICULO", SqlDbType.Int);
            SqlParametros.Value = carritos.GetCodArticulo();
            SqlParametros = Comando.Parameters.Add("@DESCRIPCION", SqlDbType.VarChar);
            SqlParametros.Value = carritos.GetDescripcion();
            SqlParametros = Comando.Parameters.Add("@PRECIO", SqlDbType.Decimal);
            SqlParametros.Value = carritos.GetPrecio();
            SqlParametros = Comando.Parameters.Add("@CANTIDAD", SqlDbType.Int);
            SqlParametros.Value = carritos.GetCantidad();
            SqlParametros = Comando.Parameters.Add("@SUBTOTAL", SqlDbType.Decimal);
            SqlParametros.Value = carritos.GetSubTotal();
            SqlParametros = Comando.Parameters.Add("@COMPRADO", SqlDbType.Bit);
            SqlParametros.Value = carritos.GetComprado();

        }
        public DataTable GetCarrito(String Cod)
        {
            DataTable tabla = dt.ObtenerTablaCategoria("Categorias", "SELECT * FROM CARRITOS WHERE CodUsuario = '"+ Cod +"' AND Comprado=0");
            return tabla;
        }

        public int EliminarCarrito(Carritos Carrito)
        {
            SqlCommand comando = new SqlCommand();
            ArmarParametrosCarritoEliminar(ref comando, Carrito);
            return dt.EjecutarProcedimientoAlmacenado(comando, "spEliminarCarrito");
        }
        private void ArmarParametrosCarritoEliminar(ref SqlCommand Comando, Carritos Carrito)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@COD_CARRITO", SqlDbType.Int);
            SqlParametros.Value = Carrito.GetCodCarrito();
        }
        public int ActualizarTablaCantidadPrecio(Carritos Carrito)
        {
            SqlCommand comando = new SqlCommand();
            ArmarParametrosCarritoActualizar(ref comando, Carrito);
            return dt.EjecutarProcedimientoAlmacenado(comando, "spActualizarCarrito");
        }
        private void ArmarParametrosCarritoActualizar(ref SqlCommand Comando, Carritos Carrito)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@COD_CARRITO", SqlDbType.Int);
            SqlParametros.Value = Carrito.GetCodCarrito();
            SqlParametros = Comando.Parameters.Add("@CANTIDAD", SqlDbType.Int);
            SqlParametros.Value = Carrito.GetCantidad();
        }
        
        /// DAR DE BAJA AL CARRITO PORQUE FUE COMPRADO
        public void DarDeBajaDelCarrito(Carritos Carrito)
        {
            SqlCommand comando = new SqlCommand();
            ArmarParametrosBajaCarrito(ref comando, Carrito);
            dt.EjecutarProcedimientoAlmacenado(comando, "spDarDeBajaCarrito");
        }
        private void ArmarParametrosBajaCarrito(ref SqlCommand Comando, Carritos Carrito)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@CodUsuario", SqlDbType.Int);
            SqlParametros.Value = Carrito.GetCodUsuario();
            SqlParametros = Comando.Parameters.Add("@CodArt", SqlDbType.Int);
            SqlParametros.Value = Carrito.GetCodArticulo();
        }
    }
}
