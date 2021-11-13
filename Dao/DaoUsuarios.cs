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
    public class DaoUsuarios
    {
        AccesoDatos dt = new AccesoDatos();

        public DataTable getUsuarios()
        {
            DataTable tabla = dt.ObtenerTablaUsuarios("Usuarios", "select * from Usuarios");
            return tabla;
        }

        public DataTable getUsuario(string id)
        {
            DataTable table = dt.ObtenerUsuario ("Usuarios", "Select * from Usuarios where IdCliente = '" + id.ToString() + " '");
            return table;
        }

        public Boolean ExisteUsuario(Usuario user)
        {
            String consulta = "Select * from Usuarios where Email='" + user.GetDni() + "'";
            return dt.existe(consulta);
        }

        public int AgregarUsuario(Usuario user)
        {
            user.SetIdCliente(dt.ObtenerMaximo("select max(IdCliente) from Usuarios") + 1);
            SqlCommand comando = new SqlCommand();
            ArmarParametrosUsuarioAgregar(ref comando,user);
            return dt.EjecutarProcedimientoAlmacenado(comando, "spAgregarUsuario");
        }

        private void ArmarParametrosUsuarioAgregar(ref SqlCommand comando, Usuario user)
        {
            SqlParameter Sqlparametros = new SqlParameter();
            Sqlparametros = comando.Parameters.Add("@IDCLIENTE", SqlDbType.Int);
            Sqlparametros.Value = user.GetIdCliente();
            Sqlparametros = comando.Parameters.Add("@NOMBRE", SqlDbType.VarChar, 25);
            Sqlparametros.Value = user.GetNombre();
            Sqlparametros = comando.Parameters.Add("@APELLIDO", SqlDbType.VarChar, 25);
            Sqlparametros.Value = user.GetApellido();
            Sqlparametros = comando.Parameters.Add("@EMAIL", SqlDbType.VarChar, 25);
            Sqlparametros.Value = user.GetEmail();
            Sqlparametros = comando.Parameters.Add("@CELULAR", SqlDbType.VarChar, 25);
            Sqlparametros.Value = user.GetTelefono();
            Sqlparametros = comando.Parameters.Add("@DNI", SqlDbType.VarChar, 25);
            Sqlparametros.Value = user.GetDni();
            Sqlparametros = comando.Parameters.Add("@DIRECCION", SqlDbType.VarChar, 25);
            Sqlparametros.Value = user.GetDireccion();
            Sqlparametros = comando.Parameters.Add("@CONTRASENA", SqlDbType.VarChar, 25);
            Sqlparametros.Value = user.GetPassword();
            Sqlparametros = comando.Parameters.Add("@TIPOUSUARIO", SqlDbType.VarChar, 25);
            Sqlparametros.Value = user.GetTipoUsuario();

        }

        public int EliminarUsuarios(Usuario user)
        {
            SqlCommand comando = new SqlCommand();
            ArmarParametrosUsuarioEliminar(ref comando,user);
            return dt.EjecutarProcedimientoAlmacenado(comando, "spEliminarUsuario");
        }

        public void ArmarParametrosUsuarioEliminar(ref SqlCommand comando, Usuario user)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = comando.Parameters.Add("@IDCLIENTE", SqlDbType.Int);
            SqlParametros.Value = user.GetIdCliente();
        }

        public void ModificarDatos(Usuario user)
        {
            SqlCommand comando = new SqlCommand();
            ArmarParametrosUsuarioModificar(ref comando, user);
            dt.EjecutarProcedimientoAlmacenado(comando, "spModificarUsuario");
        }

        public void ArmarParametrosUsuarioModificar(ref SqlCommand comando, Usuario user)
        {
            SqlParameter Sqlparametros = new SqlParameter();
            Sqlparametros = comando.Parameters.Add("@IDCLIENTE", SqlDbType.Int);
            Sqlparametros.Value = user.GetIdCliente();
            Sqlparametros = comando.Parameters.Add("@NOMBRE", SqlDbType.VarChar, 25);
            Sqlparametros.Value = user.GetNombre();
            Sqlparametros = comando.Parameters.Add("@APELLIDO", SqlDbType.VarChar, 25);
            Sqlparametros.Value = user.GetApellido();
            Sqlparametros = comando.Parameters.Add("@EMAIL", SqlDbType.VarChar, 25);
            Sqlparametros.Value = user.GetEmail();
            Sqlparametros = comando.Parameters.Add("@CELULAR", SqlDbType.VarChar, 25);
            Sqlparametros.Value = user.GetTelefono();
            Sqlparametros = comando.Parameters.Add("@DNI", SqlDbType.VarChar, 25);
            Sqlparametros.Value = user.GetDni();
            Sqlparametros = comando.Parameters.Add("@DIRECCION", SqlDbType.VarChar, 30);
            Sqlparametros.Value = user.GetDireccion();
            Sqlparametros = comando.Parameters.Add("@CONTRASENA", SqlDbType.VarChar, 25);
            Sqlparametros.Value = user.GetPassword();
            Sqlparametros = comando.Parameters.Add("@TIPOUSUARIO", SqlDbType.VarChar, 25);
            Sqlparametros.Value = user.GetTipoUsuario();
        }

        public Boolean VerificarUsuario(Usuario User)
        {
            String consulta = "Select * from Usuarios where IdCliente='" + User.GetIdCliente() + "' AND Contrasena ='" + User.GetPassword() + "'";
            return dt.existe(consulta);
        }
        public string GetNombreYApellido(Usuario User)
        {
            String consulta = "Select * from Usuarios where IdCliente ='" + User.GetIdCliente() + "' AND Contrasena='" + User.GetPassword() + "'";
            return dt.ObtenerNombreYApellidoUsuario(consulta);
        }

        public string GetTraerTipoUsuario(Usuario User)
        {
            String consulta = "Select * from Usuarios where IdCliente ='" + User.GetIdCliente() + "' AND Contrasena='" + User.GetPassword() + "'";
            return dt.ObtenerTipoUsuario(consulta);
        }
        public string GetTraerIdUsuario(Usuario User)
        {
            String consulta = "Select * from Usuarios where IdCliente ='" + User.GetIdCliente() + "' AND Contrasena='" + User.GetPassword() + "'";
            return dt.ObtenerIdUsuario(consulta);
        }
    }
}
