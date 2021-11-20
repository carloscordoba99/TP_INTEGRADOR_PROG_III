using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Negocio;
using Entidades;
using Dao;

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
                cantFilas = dao.AgregarCarrito(Carrito);
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
    }
}
