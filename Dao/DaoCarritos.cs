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
        public int AgregarCarrito(Carritos Carrito)
        {;
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
            DataTable tabla = dt.ObtenerTablaCategoria("Categorias", "SELECT * FROM CARRITOS WHERE CodUsuario = '"+ Cod +"'");
            //DataTable tabla = dt.ObtenerTablaCategoria("Categorias", "SELECT * FROM Categorias");

            return tabla;
        }
    }
}
