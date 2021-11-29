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

        public void ModificarCategoria(String CodCat, String Nombre, String Descripcion)
        {
            Categoria Cat = new Categoria();

            Cat.setCodCategoria(Convert.ToInt32(CodCat));
            Cat.setNombreCategoria(Nombre);
            Cat.setDescripcion(Descripcion);

            DaoCategoria daocat = new DaoCategoria();

            daocat.ActualizarCategoria(Cat);

        }

        public DataTable getTablaCategorias()
        {
            DaoCategoria dao = new DaoCategoria();
            return dao.getCategorias();
        }

        public DataTable TablaCategorias()
        {
            DaoCategoria dao = new DaoCategoria();
            return dao.ObtenerTablaCategoria();
        }


        public DataTable getTablaProveedores()
        {
            DaoCategoria dao2 = new DaoCategoria();
            return dao2.getProveedor();
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
