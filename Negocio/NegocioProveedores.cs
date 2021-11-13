using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using Dao;
using Entidades;

namespace Negocio
{
    public class NegocioProveedores
    {
        public bool AgregarProveedor(String RazonSocial, String Marca, String Direccion, String Ciudad, String Provincia, string Cuit, string Telefono, String Contacto, String Email, String Web, string CBU)
        {
            int CantFilas = 0;

            Proveedor prov = new Proveedor();
            prov.SetRazonSocial(RazonSocial);
            prov.SetDireccion(Direccion);
            prov.SetMarca(Marca);
            prov.SetCiudad(Ciudad);
            prov.SetProvincia(Provincia);
            prov.SetCuit(Cuit);
            prov.SetTelefono(Telefono);
            prov.SetContacto(Contacto);
            prov.SetEmail(Email);
            prov.SetWeb(Web);
            prov.SetCBU(CBU);

            DaoProveedores dao = new DaoProveedores();
            if (dao.ExisteProveedor(prov) == false)
            {
                CantFilas = dao.AgregarProveedor(prov);
            }
            if (CantFilas == 1)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        public DataTable GetProveedor(string cod)
        {
            DaoProveedores dao = new DaoProveedores();
            return dao.GetProveedor(cod);
        }

        public DataTable GetTablaProveedores()
        {
            DaoProveedores dao = new DaoProveedores();
            return dao.GetProveedores();
        }


        public bool EliminarProveedor(int IdProveedor)
        {
            DaoProveedores dao = new DaoProveedores();
            Proveedor Prov = new Proveedor();
            Prov.SetCodProveedor(IdProveedor);
            int op = dao.EliminarProveedor(Prov);
            if (op == 1) return true;
            else return false;
        }
    }
}
