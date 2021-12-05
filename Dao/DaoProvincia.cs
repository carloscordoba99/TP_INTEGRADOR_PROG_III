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
    public class DaoProvincia
    {
        AccesoDatos dt = new AccesoDatos();
        public Boolean ExisteProvincia(Provincias prov)
        {
            String consulta = "Select * from provincias where IdProvincia='" + prov.GetIdProvincia() + "'";
            return dt.existe(consulta);
        }
        public Boolean ContieneElArticulo(Provincias prov)
        {
            String consulta = "Select * from provincias where IdProvincia='" + prov.GetIdProvincia() + "' AND nombreprovincia='" + prov.GetNombreProvincia() + "'";
            return dt.existe(consulta);
        }
        public DataTable GetProvincias()
        {
            DataTable tabla = dt.ObtenerTablaUsuarios("Provincias", "select * from provincias");
            return tabla;
        }
        public DataTable GetProvincia(string id)
        {
            DataTable table = dt.ObtenerUsuario("Provincias", "Select * from provincias where idprovincia = '" + id.ToString() + "'");
            return table;
        }
        public int AgregarProvincia(Provincias prov)
        {
            SqlCommand comando = new SqlCommand();
            ArmarParametrosProvinciaAgregar(ref comando, prov);
            return dt.EjecutarProcedimientoAlmacenado(comando, "spAgregarProvincia");
        }
        private void ArmarParametrosProvinciaAgregar(ref SqlCommand Comando, Provincias prov)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@NOMBRE_PROVINCIA", SqlDbType.VarChar);
            SqlParametros.Value = prov.GetNombreProvincia();
        }
        public int EliminarProvincia(Provincias prov)
        {
            SqlCommand comando = new SqlCommand();
            ArmarParametrosProvinciaEliminar(ref comando, prov);
            return dt.EjecutarProcedimientoAlmacenado(comando, "spEliminarProvincia");
        }
        private void ArmarParametrosProvinciaEliminar(ref SqlCommand Comando, Provincias prov)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@Idprovincia", SqlDbType.Int);
            SqlParametros.Value = prov.GetIdProvincia();
        }
        public bool ModificarProvincia(Provincias prov)
        {
            SqlCommand Comando = new SqlCommand();
            ArmarParametrosProvinciaModificar(ref Comando, prov);
            AccesoDatos ad = new AccesoDatos();
            int FilasInsertadas = ad.EjecutarProcedimientoAlmacenado(Comando, "spModificarProvincia");
            if (FilasInsertadas == 1)
                return true;
            else
                return false;
        }

        public void ArmarParametrosProvinciaModificar(ref SqlCommand comando, Provincias prov)
        {
            SqlParameter Sqlparametros = new SqlParameter();
            Sqlparametros = comando.Parameters.Add("@IdProvincia", SqlDbType.Int);
            Sqlparametros.Value = prov.GetIdProvincia();
            Sqlparametros = comando.Parameters.Add("@NOMBRE_PROVINCIA", SqlDbType.VarChar, 25);
            Sqlparametros.Value = prov.GetNombreProvincia();
        }
    }   
}
