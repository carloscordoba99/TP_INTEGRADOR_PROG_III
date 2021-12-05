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
    public class DaoLocalidades
    {
        AccesoDatos dt = new AccesoDatos();
        public Boolean ExisteLocalidad(Localidades Localidad)
        {
            String consulta = "Select * from localidades where IdLocalidad='" + Localidad.GetIdLocalidad() + "'";
            return dt.existe(consulta);
        }
        public Boolean ContieneElArticulo(Localidades prov)
        {
            String consulta = "Select * from localidades where IdLocalidad='" + prov.GetIdLocalidad() + "' AND nombreLocalidad='" + prov.GetNombreLocalidad() + "'";
            return dt.existe(consulta);
        }
        public DataTable GetLocalidades()
        {
            DataTable tabla = dt.ObtenerTablaUsuarios("Localidades", "select * from Localidades");
            return tabla;
        }
        public DataTable GetLocalidad(string id)
        {
            DataTable table = dt.ObtenerUsuario("Localidades", "Select * from Localidades where IdLocalidad = '" + id.ToString() + "'");
            return table;
        }
        public int AgregarLocalidad(Localidades Localidad)
        {
            SqlCommand comando = new SqlCommand();
            ArmarParametrosLocalidadAgregar(ref comando, Localidad);
            return dt.EjecutarProcedimientoAlmacenado(comando, "spAgregarLocalidad");
        }
        private void ArmarParametrosLocalidadAgregar(ref SqlCommand Comando, Localidades Localidad)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@NOMBRE_LOCALIDAD", SqlDbType.VarChar);
            SqlParametros.Value = Localidad.GetNombreLocalidad();
            SqlParametros = Comando.Parameters.Add("@ID_PROVINCIA", SqlDbType.Int);
            SqlParametros.Value = Localidad.GetIdProvincia();
        }
        public int EliminarLocalidad(Localidades Localidad)
        {
            SqlCommand comando = new SqlCommand();
            ArmarParametrosLocalidadEliminar(ref comando, Localidad);
            return dt.EjecutarProcedimientoAlmacenado(comando, "spEliminarLocalidad");
        }
        private void ArmarParametrosLocalidadEliminar(ref SqlCommand Comando, Localidades Localidad)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@IdLocalidad", SqlDbType.Int);
            SqlParametros.Value = Localidad.GetIdLocalidad();
        }
        public bool ModificarLocalidad(Localidades Localidad)
        {
            SqlCommand Comando = new SqlCommand();
            ArmarParametrosLocalidadModificar(ref Comando, Localidad);
            AccesoDatos ad = new AccesoDatos();
            int FilasInsertadas = ad.EjecutarProcedimientoAlmacenado(Comando, "spModificarLocalidad");
            if (FilasInsertadas == 1)
                return true;
            else
                return false;
        }

        public void ArmarParametrosLocalidadModificar(ref SqlCommand comando, Localidades Localidad)
        {
            SqlParameter Sqlparametros = new SqlParameter();
            Sqlparametros = comando.Parameters.Add("@IdLocalidad", SqlDbType.Int);
            Sqlparametros.Value = Localidad.GetIdLocalidad();
            Sqlparametros = comando.Parameters.Add("@NOMBRE_PROVINCIA", SqlDbType.VarChar, 30);
            Sqlparametros.Value = Localidad.GetNombreLocalidad();
            Sqlparametros = comando.Parameters.Add("@IdProvincia", SqlDbType.Int);
            Sqlparametros.Value = Localidad.GetIdProvincia();
        }
    }
}
