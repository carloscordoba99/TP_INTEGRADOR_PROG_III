using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades;
using Dao;
using System.Data;

namespace Negocio
{
    public class NegocioLocalidades
    {
        public bool AgregarLocalidad(String NombreLocalidad, String IdProvincia)
        {
            int cantFilas = 0;

            Localidades prov = new Localidades();
            prov.SetNombreLocalidad(NombreLocalidad);
            prov.SetIdProvincia(Convert.ToInt32(IdProvincia));

            DaoLocalidades dao = new DaoLocalidades();
            if (dao.ExisteLocalidad(prov) == false)
            {
                if (dao.ContieneElArticulo(prov) == false)
                {
                    cantFilas = dao.AgregarLocalidad(prov);
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
        public DataTable GetTablaLocalidades()
        {
            DaoLocalidades dao = new DaoLocalidades();
            return dao.GetLocalidades();
        }
        public DataTable GetLocalidad(string id)
        {
            DaoLocalidades dao = new DaoLocalidades();
            return dao.GetLocalidad(id);
        }

        public bool EliminarProvincia(int id)
        {
            DaoLocalidades dao = new DaoLocalidades();
            Localidades Prov = new Localidades();
            Prov.SetIdLocalidad(id);
            int op = dao.EliminarLocalidad(Prov);
            if (op == 1) return true;
            else return false;
        }

        public void ModificarProvincia(String idLocalidad, String NombreLocalidad, string IdProvincia)
        {
            Localidades Prov = new Localidades();

            Prov.SetIdLocalidad(Convert.ToInt32(idLocalidad));
            Prov.SetNombreLocalidad(NombreLocalidad);
            Prov.SetIdProvincia(Convert.ToInt32(IdProvincia));

            DaoLocalidades daoProv = new DaoLocalidades();
            daoProv.ModificarLocalidad(Prov);
        }
    }
}
