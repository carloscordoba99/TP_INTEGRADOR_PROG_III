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
    public class DaoProductos
    {
        AccesoDatos dt = new AccesoDatos();
        public Boolean ExisteProducto(Producto prod)
        {
            string consulta = "Select * from Articulos where NombreArticulo ='" + prod.GetNombreProd()+"'";
            return dt.existe(consulta);
        }

        public int AgregarProducto(Producto prod)
        {
            prod.SetCodProd(dt.ObtenerMaximo("Select max(CodArticulo) from Articulos") + 1);
            SqlCommand comando = new SqlCommand();
            ArmarParametroProductoAgregar(ref comando, prod);
            return dt.EjecutarProcedimientoAlmacenado(comando, "spAgregarArticulo");
        }

        public int EliminarProductos(Producto prod)
        {
            SqlCommand comando = new SqlCommand();
            ArmarParametroProductoEliminar(ref comando, prod);
            return dt.EjecutarProcedimientoAlmacenado(comando, "spEliminarArticulo");
        }

        public DataTable GetProducto(String cod)
        {
            DataTable table = dt.ObtenerProducto("Articulos", "Select * from Articulos where CodArticulo = '" + cod.ToString() + " '");
            return table;
        }

        public DataTable GetProductos()
        {
            DataTable tabla  = dt.ObtenerTablaProd("Articulos", "Select * from Articulos order by CodArticulo");
            return tabla;
        }

        private void ArmarParametroProductoAgregar(ref SqlCommand Comando, Producto prod)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@CODARTICULO", SqlDbType.Int);
            SqlParametros.Value = prod.GetCodProd();
            SqlParametros = Comando.Parameters.Add("@NOMBREARTICULO", SqlDbType.VarChar);
            SqlParametros.Value = prod.GetNombreProd();
            SqlParametros = Comando.Parameters.Add("@MARCA", SqlDbType.VarChar);
            SqlParametros.Value = prod.GetMarca();
            SqlParametros = Comando.Parameters.Add("@PRECIOUNITARIO", SqlDbType.Money);
            SqlParametros.Value = prod.GetPrecioU();
            SqlParametros = Comando.Parameters.Add("@ESTADO", SqlDbType.Bit);
            SqlParametros.Value = prod.GetEstado();
            SqlParametros = Comando.Parameters.Add("@IDCATEGORIA", SqlDbType.Int);
            SqlParametros.Value = prod.GetIdCategoria();
            SqlParametros = Comando.Parameters.Add("@STOCK", SqlDbType.Int);
            SqlParametros.Value = prod.GetStock();

        }

        private void ArmarParametroProductoEliminar(ref SqlCommand comando, Producto prod)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = comando.Parameters.Add("@CODCARTICULO", SqlDbType.Int);
            SqlParametros.Value = prod.GetCodProd();
        }
    }
}
