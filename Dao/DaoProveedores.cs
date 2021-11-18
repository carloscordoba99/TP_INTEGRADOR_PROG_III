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
    public class DaoProveedores
    {
        //string datos = "SELECT Cod_Proveedor_Pr AS [Codigo proveedor],RazonSocial_Pr as [Razon Social], Marca_Pr as [Marca],Direccion_Pr as [Dirreccion],Ciudad_Pr as [Direecion],Provincia_Pr as [Provincia], Cuit_Pr as [Numero Cuit],Telefono_Pr as [Telefono], Contacto_Pr as [Contacto], Web_Pr as [Pagina Web], Email_Pr as [Correo Electronico], CBU_Pr as [CBU] FROM Proveedores order by Cod_Proveedor_Pr";
        String datos = "Select * from Proveedores";

        AccesoDatos dt = new AccesoDatos();
        public Boolean ExisteProveedor(Proveedor Prov)
        {
            string Consulta = "Select * from proveedores where Cod_Proveedor_Pr ='" + Prov.GetCodProveedor() + "'";
            return dt.existe(Consulta);
        }
        public int AgregarProveedor(Proveedor Prov)
        {
            //Prov.SetCodProveedor(dt.ObtenerMaximo("SELECT max(Cod_Proveedor_Pr) FROM proveedores") + 1);
            SqlCommand comando = new SqlCommand();
            ArmarParametroProveedorAgregar(ref comando, Prov);
            return dt.EjecutarProcedimientoAlmacenado(comando, "spAgregarProveedor");
        }
        private void ArmarParametroProveedorAgregar(ref SqlCommand Comando, Proveedor Prov)
        {
            SqlParameter SqlParametros = new SqlParameter();

            SqlParametros = Comando.Parameters.Add("@RazonSocial", SqlDbType.VarChar,25);
            SqlParametros.Value = Prov.GetRazonSocial();
            SqlParametros = Comando.Parameters.Add("@Marca", SqlDbType.VarChar,25);
            SqlParametros.Value = Prov.GetMarca();
            SqlParametros = Comando.Parameters.Add("@Direccion", SqlDbType.VarChar,25);
            SqlParametros.Value = Prov.GetDireccion();
            SqlParametros = Comando.Parameters.Add("@Ciudad", SqlDbType.VarChar,25);
            SqlParametros.Value = Prov.GetCiudad();
            SqlParametros = Comando.Parameters.Add("@Provincia", SqlDbType.VarChar,25);
            SqlParametros.Value = Prov.GetProvincia();
            SqlParametros = Comando.Parameters.Add("@Cuit", SqlDbType.VarChar,25);
            SqlParametros.Value = Prov.GetCuit();
            SqlParametros = Comando.Parameters.Add("@Telefono", SqlDbType.VarChar,25);
            SqlParametros.Value = Prov.GetTelefono();
            SqlParametros = Comando.Parameters.Add("@Contacto", SqlDbType.VarChar,25);
            SqlParametros.Value = Prov.GetContacto();
            SqlParametros = Comando.Parameters.Add("@Web", SqlDbType.VarChar,25);
            SqlParametros.Value = Prov.GetWeb();
            SqlParametros = Comando.Parameters.Add("@Email", SqlDbType.VarChar,25);
            SqlParametros.Value = Prov.GetEmail();
            SqlParametros = Comando.Parameters.Add("@Cbu", SqlDbType.VarChar,25);
            SqlParametros.Value = Prov.GetCBU();
        }

        public DataTable GetProveedor(String cod)
        {
            DataTable table = dt.ObtenerProducto("Proveedores", "Select * from Proveedores where Cod_Proveedor_Pr = '" + cod.ToString() + "'");
            return table;
        }

        public DataTable GetProveedores()
        {
            DataTable tabla = dt.ObtenerTablaProd("Proveedores", datos);
            return tabla;
        }

        
        public int EliminarProveedor(Proveedor Prov)
        {
            SqlCommand comando = new SqlCommand();
            ArmarParametroProveedorEliminar(ref comando, Prov);
            return dt.EjecutarProcedimientoAlmacenado(comando, "spEliminarProveedor");
        }

        public void ModificarProveedor(Proveedor Prov)
        {
            SqlCommand comando = new SqlCommand();
            ArmarParametrosProveedorModificar(ref comando, Prov);
            dt.EjecutarProcedimientoAlmacenado(comando, "spActualizarProveedor");
        }

        private void ArmarParametroProveedorEliminar(ref SqlCommand comando, Proveedor Prov)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = comando.Parameters.Add("@CodProveedor", SqlDbType.Int);
            SqlParametros.Value = Prov.GetCodProveedor();
        }

        private void ArmarParametrosProveedorModificar(ref SqlCommand comando, Proveedor Prov)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = comando.Parameters.Add("@CODPROV", SqlDbType.Int);
            SqlParametros.Value = Prov.GetCodProveedor();
            SqlParametros = comando.Parameters.Add("@RSOCIAL", SqlDbType.VarChar,25);
            SqlParametros.Value = Prov.GetRazonSocial();
            SqlParametros = comando.Parameters.Add("@MARCA", SqlDbType.VarChar, 25);
            SqlParametros.Value = Prov.GetMarca();
            SqlParametros = comando.Parameters.Add("@DIRECCION", SqlDbType.VarChar, 25);
            SqlParametros.Value = Prov.GetDireccion();
            SqlParametros = comando.Parameters.Add("@CIUDAD", SqlDbType.VarChar, 25);
            SqlParametros.Value = Prov.GetCiudad();
            SqlParametros = comando.Parameters.Add("@PROV", SqlDbType.VarChar, 25);
            SqlParametros.Value = Prov.GetProvincia();
            SqlParametros = comando.Parameters.Add("@CUIT", SqlDbType.VarChar, 25);
            SqlParametros.Value = Prov.GetCuit();
            SqlParametros = comando.Parameters.Add("@TELEFONO", SqlDbType.VarChar, 25);
            SqlParametros.Value = Prov.GetTelefono();
            SqlParametros = comando.Parameters.Add("@CONTACTO", SqlDbType.VarChar, 25);
            SqlParametros.Value = Prov.GetContacto();
            SqlParametros = comando.Parameters.Add("@WEB", SqlDbType.VarChar, 25);
            SqlParametros.Value = Prov.GetWeb();
            SqlParametros = comando.Parameters.Add("@EMAIL", SqlDbType.VarChar, 25);
            SqlParametros.Value = Prov.GetEmail();
            SqlParametros = comando.Parameters.Add("@CBU", SqlDbType.VarChar, 25);
            SqlParametros.Value = Prov.GetCBU();
        }


    }
}
