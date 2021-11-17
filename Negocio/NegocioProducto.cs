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

        public bool AgregarProducto(String nombre, string descripcion, string precioUnitario, string categoria, string stock,string codproveedor)
        {
        int cantFilas = 0;

        Producto prod = new Producto();
            prod.SetNombreProd(nombre);
            prod.SetDescripcion(descripcion);
            prod.SetPrecioU(float.Parse(precioUnitario));
            prod.SetEstado(true);
            prod.SetIdCategoria(Convert.ToInt32(categoria));
            prod.SetStock(Convert.ToInt32(stock));
            prod.SetCodProveedor(Convert.ToInt32(codproveedor));

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

        public void ModficarProducto(String codart, String NomArt, String Desc, String Pu, String Estado, String CodCat, String Stock, String CodProv)
        {
            Producto prod = new Producto();

            prod.SetCodProd(Convert.ToInt32(codart));
            prod.SetNombreProd(NomArt);
            prod.SetDescripcion(Desc);
            prod.SetPrecioU(float.Parse(Pu));
            prod.SetEstado(Convert.ToBoolean(Estado));
            prod.SetIdCategoria(Convert.ToInt32(CodCat));
            prod.SetStock(Convert.ToInt32(Stock));
            prod.SetCodProveedor(Convert.ToInt32(CodProv));

            DaoProductos dao = new DaoProductos();
            dao.ActualizarProducto(prod);

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
