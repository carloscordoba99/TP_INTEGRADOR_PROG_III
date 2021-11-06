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
    public class NegocioCategoria
    {
        public bool AgregarCategoria(String Nombre, String Descripcion)
        {
            int cantFilas = 0;

            Categoria cat = new Categoria();
            cat.setNombreCategoria(Nombre);
            cat.setDescripcion(Descripcion);

            DaoCategoria dao = new DaoCategoria();
            if (dao.existeCategoria(cat) == false)
            {
                cantFilas = dao.agregarCategoria(cat);
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

        public DataTable getTablaCategorias()
        {
            DaoCategoria dao = new DaoCategoria();
            return dao.getCategorias();
        }

        public bool EliminarCategoria(int cod)
        {
            //validar id
            DaoCategoria dao = new DaoCategoria();
            Categoria cat = new Categoria();
            cat.setCodCategoria(cod);
            int op = dao.eliminarSucursales(cat);
            if (op == 1)
                return true;
            else
                return false;
        }

        public DataTable getCategoria(string cod)
        {
            DaoCategoria dao = new DaoCategoria();
            return dao.getCategoria(cod);
        }
    }   
}
