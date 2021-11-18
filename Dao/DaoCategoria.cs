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
    public class DaoCategoria
    {
        AccesoDatos dt = new AccesoDatos();
        public Boolean existeCategoria(Categoria cat)
        {
            String consulta = "Select * from Categorias where CodCategoria='" + cat.getCodCategoria() + "'";
            return dt.existe(consulta);
        }

        public int agregarCategoria(Categoria cat)
        {
            cat.setCodCategoria(dt.ObtenerMaximo("Select max(CodCategoria) from Categorias")+1);
            SqlCommand comando = new SqlCommand();
            ArmarParametrosCategorialAgregar(ref comando, cat);
            return dt.EjecutarProcedimientoAlmacenado(comando, "spAgregarCategoria");


        }

        public DataTable getCategorias()
        {
            DataTable tabla = dt.ObtenerTablaCategoria("Categorias", "SELECT CodCategoria AS 'CODIGO CATEGORIA', NombreCategoria AS 'NOMBRE CATEGORIA', Descripcion AS 'DESCRIPCION'  FROM Categorias");
            //DataTable tabla = dt.ObtenerTablaCategoria("Categorias", "SELECT * FROM Categorias");

            return tabla;
        }

        public DataTable getProveedor()
        {
            DataTable tabla = dt.ObtenerTablaProveedor("Proveedores", "Select * from Proveedores order by Cod_Proveedor_Pr");
            return tabla;
        }

        public int eliminarSucursales(Categoria cat)
        {
            SqlCommand comando = new SqlCommand();
            ArmarParametrosCategoriaEliminar(ref comando, cat);
            return dt.EjecutarProcedimientoAlmacenado(comando, "spEliminarCategoria");
        }

        private void ArmarParametrosCategoriaEliminar(ref SqlCommand Comando, Categoria cat)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@CODCATEGORIA", SqlDbType.Int);
            SqlParametros.Value = cat.getCodCategoria();
        }

        public DataTable getCategoria(string cod)
        {
            DataTable table = dt.ObtenerCategoria("Categorias", "Select * from Categorias where CodCategoria = '" + cod.ToString() + " '");
            return table;
        }

        private void ArmarParametrosCategorialAgregar(ref SqlCommand Comando, Categoria cat)
        {
            SqlParameter SqlParametros = new SqlParameter();
            /*SqlParametros = Comando.Parameters.Add("@CODCATEGORIA", SqlDbType.Int);
            SqlParametros.Value = cat.getCodCategoria();*/
            SqlParametros = Comando.Parameters.Add("@NOMCAT", SqlDbType.VarChar,50);
            SqlParametros.Value = cat.getNombreCategoria();
            SqlParametros = Comando.Parameters.Add("@DESCRIPCION", SqlDbType.VarChar,100);
            SqlParametros.Value = cat.getDescripcion();
          
         }

        private void ArmarParametrosCategoriaModificar(ref SqlCommand comando, Categoria cat)
        {
            SqlParameter Sqlparametros = new SqlParameter();
            Sqlparametros = comando.Parameters.Add("@CODCAT", SqlDbType.Int);
            Sqlparametros.Value = cat.getCodCategoria();
            Sqlparametros = comando.Parameters.Add("@NOMCAT", SqlDbType.VarChar,50);
            Sqlparametros.Value = cat.getNombreCategoria();
            Sqlparametros = comando.Parameters.Add("@DESC", SqlDbType.VarChar,100);
            Sqlparametros.Value = cat.getDescripcion();
        }


        public bool ActualizarCategoria(Categoria cat)
        {
            SqlCommand Comando = new SqlCommand();
            ArmarParametrosCategoriaModificar(ref Comando, cat);
            AccesoDatos ad = new AccesoDatos();
            int FilasInsertadas = ad.EjecutarProcedimientoAlmacenado(Comando, "spActualizarCategoria");
            if (FilasInsertadas == 1)
                return true;
            else
                return false;
        }
    }
}
