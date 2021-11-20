using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Carritos
    {
        private int CodCarrito;
        private int CodUsuario;
        private int CodArticulo;
        private string Descripcion;
        private decimal Precio;
        private int Cantidad;
        private decimal SubTotal;
        private bool Comprado;

        public Carritos() { }
        public Carritos(int CodUsuario_, int CodArticulo_, string Descripcion_, decimal Precio_, int Cantidad_, decimal SubTotal_, bool Comprado_)
        {
            this.CodUsuario = CodUsuario_;
            this.CodArticulo = CodArticulo_;
            this.Descripcion = Descripcion_;
            this.Precio = Precio_;
            this.Cantidad = Cantidad_;
            this.SubTotal = SubTotal_;
            this.Comprado = Comprado_;
        }
        public void SetCodCarritp(int x) { this.CodCarrito = x; }
        public int GetCodCarrito() { return CodCarrito; }
        public void SetCodUsuario(int x) { this.CodUsuario = x; }
        public int GetCodUsuario() { return CodUsuario; }
        public void SetCodArticulo(int x) { this.CodArticulo = x; }
        public int GetCodArticulo() { return CodArticulo; }
        public void SetDescripcion(string x) { this.Descripcion = x; }
        public string GetDescripcion() { return Descripcion; }
        public void SetPrecio(Decimal x) { this.Precio = x; }
        public decimal GetPrecio() { return Precio; }
        public void SetCantidad(int x) { this.Cantidad = x; }
        public int GetCantidad() { return Cantidad; }
        public void SetSubTotal(decimal x) { this.SubTotal = x; }
        public decimal GetSubTotal() { return SubTotal; }
        public void SetComprado(bool x) { this.Comprado = x; }
        public bool GetComprado() { return Comprado; }

    }
}
