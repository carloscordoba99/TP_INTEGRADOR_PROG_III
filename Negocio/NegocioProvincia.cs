using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Negocio;
using Entidades;
using Dao;
using System.Data;

namespace Negocio
{
    public class NegocioProvincia
    {
        public bool AgregarProvincia(String NombreProvincia)
        {
            int cantFilas = 0;

            Provincias prov = new Provincias();
            prov.SetNombreProvincia(NombreProvincia);

            DaoProvincia dao = new DaoProvincia();
            if (dao.ExisteProvincia(prov) == false)
            {
                if (dao.ContieneElArticulo(prov) == false)
                {
                    cantFilas = dao.AgregarProvincia(prov);
                }
            }
            if (cantFilas == 1)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        public DataTable GetTablaProvincias()
        {
            DaoProvincia dao = new DaoProvincia();
            return dao.GetProvincias();
        }
        public DataTable GetProvincia(string id)
        {
            DaoProvincia dao = new DaoProvincia();
            return dao.GetProvincia(id);
        }

        public bool EliminarProvincia(int id)
        {
            DaoProvincia dao = new DaoProvincia();
            Provincias Prov = new Provincias();
            Prov.SetIdProvincia(id);
            int op = dao.EliminarProvincia(Prov);
            if (op == 1) return true;
            else return false;
        }

        public void ModificarProvincia(String id,String nombreprovincia)
        {
            Provincias Prov = new Provincias();

            Prov.SetIdProvincia(Convert.ToInt32(id));
            Prov.SetNombreProvincia(nombreprovincia);

            DaoProvincia daoProv = new DaoProvincia();
            daoProv.ModificarProvincia(Prov);
        }
    }
}
