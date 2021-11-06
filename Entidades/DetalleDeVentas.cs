using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class DetalleDeVentas
    {
        private int IdDetalleDeVentas;
        private int IdFactura;
        private int CodProducto;
        private int Cantidad;
        private decimal PrecioUnitario;

        public DetalleDeVentas()
        { }
        public DetalleDeVentas(int IdDetalleDeVentas_, int IdFactura_, int CodProducto_, int Cantidad_, decimal PrecioUnitario_)
        {
            this.IdDetalleDeVentas = IdDetalleDeVentas_;
            this.IdFactura = IdFactura_;
            this.CodProducto = CodProducto_;
            this.Cantidad = Cantidad_;
            this.PrecioUnitario = PrecioUnitario_;
        }

        public void SetIdDetalleDeVentas(int IdDetalleDeVentas_) { this.IdDetalleDeVentas = IdDetalleDeVentas_; }
        public void SetIdFactura(int IdFactura_) { this.IdFactura = IdFactura_; }
        public void SetCodProducto(int CodProducto_) { this.CodProducto = CodProducto_; }
        public void SetCantidad(int Cantidad_) { this.Cantidad = Cantidad_; }
        public void SetPrecioUnitario(decimal PrecioUnitario_) { this.PrecioUnitario = PrecioUnitario_; }

        public int GetIdDetalleDeVentas() { return IdDetalleDeVentas; }
        public int GetIdFactura() { return IdFactura; }
        public int GetCodProductoa() { return CodProducto; }
        public int GetCantidad() { return Cantidad; }
        public decimal GetPrecioUnitario() { return PrecioUnitario; }
    }
}
