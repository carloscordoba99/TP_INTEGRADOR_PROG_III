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
    public class NegocioCarrito
    {
        public bool AgregarCarrito(int CodUsuario_, int CodArticulo_, string Descripcion_, decimal Precio_, int Cantidad_, decimal SubTotal_, bool Comprado_)
        {
            int cantFilas = 0;
            
            Carritos Carrito = new Carritos();
            Carrito.SetCodUsuario(CodUsuario_);
            Carrito.SetCodArticulo(CodArticulo_);
            Carrito.SetDescripcion(Descripcion_);
            Carrito.SetPrecio(Precio_);
            Carrito.SetCantidad(Cantidad_);
            Carrito.SetSubTotal(SubTotal_);
            Carrito.SetComprado(Comprado_);

            DaoCarritos dao = new DaoCarritos();
            if (dao.ExisteCarrito(Carrito) == false)
            {
                if(dao.ContieneElArticulo(Carrito) == false)
                {
                    cantFilas = dao.AgregarCarrito(Carrito);
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
        public DataTable GetCarrito(String Cod)
        {
            DaoCarritos dao = new DaoCarritos();
            return dao.GetCarrito(Cod);
        }
        public bool EliminarCarrito(int cod)
        {
            DaoCarritos dao = new DaoCarritos();
            Carritos Carrito = new Carritos();
            Carrito.SetCodCarritp(cod);
            int op = dao.EliminarCarrito(Carrito);
            if (op == 1)
                return true;
            else
                return false;
        }
        public bool ActualizarTablaCantidadPrecio(int Cod, int Cant)
        {
            DaoCarritos dao = new DaoCarritos();
            Carritos Carrito = new Carritos();
            Carrito.SetCodCarritp(Cod);
            Carrito.SetCantidad(Cant);
            int op = dao.ActualizarTablaCantidadPrecio(Carrito);
            if (op == 1)
                return true;
            else
                return false;
        }
    }
}
