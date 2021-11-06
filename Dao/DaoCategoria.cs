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
            DataTable tabla = dt.ObtenerTablaCategoria("Categorias", "Select * from Categorias order by CodCategoria");
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
            SqlParametros = Comando.Parameters.Add("@CODCATEGORIA", SqlDbType.Int);
            SqlParametros.Value = cat.getCodCategoria();
            SqlParametros = Comando.Parameters.Add("@NOMBRECATEGORIA", SqlDbType.VarChar);
            SqlParametros.Value = cat.getNombreCategoria();
            SqlParametros = Comando.Parameters.Add("@DESCRIPCION", SqlDbType.VarChar);
            SqlParametros.Value = cat.getDescripcion();
          
         }
    }
}
