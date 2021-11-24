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
           /* SqlParametros = Comando.Parameters.Add("@CODARTICULO", SqlDbType.Int);
            SqlParametros.Value = prod.GetCodProd();*/
            SqlParametros = Comando.Parameters.Add("@NOMBREARTICULO", SqlDbType.VarChar,25);
            SqlParametros.Value = prod.GetNombreProd();
            SqlParametros = Comando.Parameters.Add("@DESCRIPCION", SqlDbType.VarChar, 50);
            SqlParametros.Value = prod.GetDescripcion();
            SqlParametros = Comando.Parameters.Add("@PRECIOUNITARIO", SqlDbType.Decimal);
            SqlParametros.Value = prod.GetPrecioU();
            SqlParametros = Comando.Parameters.Add("@ESTADO", SqlDbType.Bit);
            SqlParametros.Value = prod.GetEstado();
            SqlParametros = Comando.Parameters.Add("@IDCATEGORIA", SqlDbType.Int);
            SqlParametros.Value = prod.GetIdCategoria();
            SqlParametros = Comando.Parameters.Add("@STOCK", SqlDbType.Int);
            SqlParametros.Value = prod.GetStock();
            SqlParametros = Comando.Parameters.Add("@CODPROVEEDOR", SqlDbType.Int);
            SqlParametros.Value = prod.GetCodProveedor();

        }

        private void ArmarParametroProductoEliminar(ref SqlCommand comando, Producto prod)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = comando.Parameters.Add("@CODCARTICULO", SqlDbType.Int);
            SqlParametros.Value = prod.GetCodProd();
        }

        public string GetDescripcion(string Cod)
        {
            String Descripcion = dt.ObtenerDescripcion("Select * from Articulos where CodArticulo = '" + Cod.ToString() + "'");
            return Descripcion;
        }
        public decimal GetPrecio(string Cod)
        {
            decimal Precio = dt.ObtenerPrecioUnitario("Select * from Articulos where CodArticulo = '" + Cod.ToString() + "'");
            return Precio;
        }
        public int GetCantidad(String Cod)
        {
            int Stock = dt.ObtenerStock("SELECT DISTINCT Stock FROM Articulos INNER JOIN Carritos ON Articulos.CodArticulo ='" + Cod.ToString() + "'");
            return Stock;
        }

        private void ArmarParametrosProductoModificar(ref SqlCommand Comando, Producto prod)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@CODART", SqlDbType.Int);
            SqlParametros.Value = prod.GetCodProd();
            SqlParametros = Comando.Parameters.Add("@NOMART", SqlDbType.VarChar,25);
            SqlParametros.Value = prod.GetNombreProd();
            SqlParametros = Comando.Parameters.Add("@DESC", SqlDbType.VarChar, 50);
            SqlParametros.Value = prod.GetDescripcion();
            SqlParametros = Comando.Parameters.Add("@PU", SqlDbType.Int);
            SqlParametros.Value = prod.GetPrecioU();
            SqlParametros = Comando.Parameters.Add("@ESTADO", SqlDbType.Bit);
            SqlParametros.Value = prod.GetEstado();
            SqlParametros = Comando.Parameters.Add("@CODCAT", SqlDbType.Int);
            SqlParametros.Value = prod.GetIdCategoria();
            SqlParametros = Comando.Parameters.Add("@STOCK", SqlDbType.Int);
            SqlParametros.Value = prod.GetStock();
            SqlParametros = Comando.Parameters.Add("@CODPROV", SqlDbType.Int);
            SqlParametros.Value = prod.GetCodProveedor();

        }

        public bool ActualizarProducto(Producto prod)
        {
            SqlCommand Comando = new SqlCommand();
            ArmarParametrosProductoModificar(ref Comando, prod);
            AccesoDatos ad = new AccesoDatos();
            int FilasInsertadas = ad.EjecutarProcedimientoAlmacenado(Comando, "spActualizarArticulo");
            if (FilasInsertadas == 1)
                return true;
            else
                return false;
        }
    }
}
