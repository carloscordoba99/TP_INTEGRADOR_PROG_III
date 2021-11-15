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
    public class NegocioProducto
    {

        public bool AgregarProducto(String nombre, string marca, string precioUnitario, string categoria, string stock)
        {
        int cantFilas = 0;

        Producto prod = new Producto();
            prod.SetNombreProd(nombre);
            prod.SetMarca(marca);
            prod.SetPrecioU(float.Parse(precioUnitario));
            prod.SetIdCategoria(Convert.ToInt32(categoria));
            prod.SetStock(Convert.ToInt32(stock));

            DaoProductos dao = new DaoProductos();
            if(dao.ExisteProducto(prod) == false)
            {
                cantFilas = dao.AgregarProducto(prod);
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

        public DataTable GetProducto(string cod)
        {
            DaoProductos dao = new DaoProductos();
            return dao.GetProducto(cod);
        }

        public DataTable GetTablaProductos()
        {
            DaoProductos dao = new DaoProductos();
            return dao.GetProductos();
        }

        public bool EliminarProducto(int codigo)
        {
            DaoProductos dao = new DaoProductos();
            Producto prod = new Producto();
            prod.SetCodProd(codigo);
            int op = dao.EliminarProductos(prod);
            if (op == 1)
                return true;
            else
                return false;

        }
        public string GetDescripcion(string Cod)
        {
            DaoProductos dao = new DaoProductos();
            return dao.GetDescripcion(Cod);
        }
        public decimal GetPrecio(string Cod)
        {
            DaoProductos dao = new DaoProductos();
            return dao.GetPrecio(Cod);
        }

    }
}
