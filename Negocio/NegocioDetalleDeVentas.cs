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
    public class NegocioDetalleDeVentas
    {
        public bool AgregarDetalleDeVenta(String CodVenta, String CodArticulo, String Cantidad, String PrecioUnitario)
        {
            int CantFilas = 0;
            DetalleDeVentas DetVentas = new DetalleDeVentas();
            DetVentas.SetIdFactura(Convert.ToInt32(CodVenta));
            DetVentas.SetCodProducto(Convert.ToInt32(CodArticulo));
            DetVentas.SetCantidad(Convert.ToInt32(Cantidad));
            DetVentas.SetPrecioUnitario(Convert.ToDecimal(PrecioUnitario));

            DaoDetalleDeVentas dao = new DaoDetalleDeVentas();
            if (dao.ExisteDetalleDeVenta(DetVentas) == false)
            {
                CantFilas = dao.AgregarDetalleDeVenta(DetVentas);
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

        public DataTable GetDetalleDeVenta(string cod)
        {
            DaoDetalleDeVentas dao = new DaoDetalleDeVentas();
            return dao.GetDetalleDeVenta(cod);
        }

        public DataTable GetTablaDetalleDeVentas()
        {
            DaoDetalleDeVentas dao = new DaoDetalleDeVentas();
            return dao.GetDetalleDeVentas();
        }

        public bool EliminarDetalleDeVenta(int IdDetVenta)
        {
            DaoDetalleDeVentas dao = new DaoDetalleDeVentas();
            DetalleDeVentas DetVenta = new DetalleDeVentas();
            DetVenta.SetIdDetalleDeVentas(IdDetVenta);
            int op = dao.EliminarDetalleDeVenta(DetVenta);
            if (op == 1) return true;
            else return false;
        }
    }
}
