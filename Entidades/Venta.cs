using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Venta
    {
        private int IdFactura;
        private int IdCliente;
        private DateTime FechaVenta;
        private decimal TotalFactura;

        public Venta() { }
        public Venta(int IdFactura_, int IdCliente_, DateTime FechaVenta_, decimal TotalFactura_)
        {
            this.IdFactura = IdFactura_;
            this.IdCliente = IdCliente_;
            this.FechaVenta = FechaVenta_;
            this.TotalFactura = TotalFactura_;
        }
        /// SETS
        public void SetIdFactura(int IdFactura)
        {
            this.IdFactura = IdFactura;
        }
        public void SetIdCliente(int IdCliente)
        {
            this.IdCliente = IdCliente;
        }
        public void SetFechaVenta(DateTime FechaVenta)
        {
            this.FechaVenta = FechaVenta;
        }
        public void SetTotalFactura(decimal TotalFactura)
        {
            this.TotalFactura = TotalFactura;
        }
        /// GETS

        public int GetIdFactura()
        {
            return IdFactura;
        }
        public int GetIdCliente()
        {
            return IdCliente;
        }
        public DateTime GetFechaVenta()
        {
            return FechaVenta;
        }
        public decimal GetTotalFactura()
        {
            return TotalFactura;
        }

    }
}
