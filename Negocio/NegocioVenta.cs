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
    public class NegocioVenta
    {
        public bool AgregarVenta(String IdCliente, String TotalFactura, String Fecha)
        {
            int CantFilas = 0;
            Venta NuevaVenta = new Venta();
            NuevaVenta.SetIdCliente(Convert.ToInt32(IdCliente));
            NuevaVenta.SetTotalFactura(Convert.ToDecimal(TotalFactura));
            NuevaVenta.SetFechaVenta(Convert.ToDateTime(Fecha));

            DaoVentas dao = new DaoVentas();
            if (dao.ExisteVenta(NuevaVenta) == false)
            {
                CantFilas = dao.AgregarVenta(NuevaVenta);
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
        public DataTable GetVenta(string cod)
        {
            DaoVentas dao = new DaoVentas();
            return dao.GetVenta(cod);
        }

        public DataTable GetTablaVentas()
        {
            DaoVentas dao = new DaoVentas();
            return dao.GetVentas();
        }
        public bool EliminarVenta(int IdVenta)
        {
            DaoVentas dao = new DaoVentas();
            Venta Venta_ = new Venta();
            Venta_.SetIdFactura(IdVenta);
            int op = dao.EliminarVenta(Venta_);
            if (op == 1) return true;
            else return false;
        }

        public DataTable ObtenerTodasLasVentas()
        {
            DaoVentas dao = new DaoVentas();
            return dao.GetVentas();
        }

        public void ActualizarVenta(String codv, String codcli, String Total, String fecha)
        {
            Venta vta = new Venta();
            vta.SetIdFactura(Convert.ToInt32(codv));
            vta.SetIdCliente(Convert.ToInt32(codcli));
            vta.SetTotalFactura(Convert.ToDecimal(Total));
            vta.SetFechaVenta(Convert.ToDateTime(fecha));

            DaoVentas dao = new DaoVentas();
            dao.ModificarVenta(vta);
        }

    }
}
