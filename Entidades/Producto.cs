using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Producto
    {
        private int CodProd;
        private String NombreProd;
        private String Descripcion;
        private float PrecioUnitario;
        private bool Estado;
        private int IdCategoria;
        private int Stock;
        private int CodProveedor;
        
        public Producto() { }

        public Producto (int codArticulos_, string nombrePord_, string descripcion_, float precioUnitario_, bool estado_, int idCategoria_,int stock_,int CodProveedor_)
        {
            this.CodProd = codArticulos_;
            this.NombreProd = nombrePord_;
            this.Descripcion = descripcion_;
            this.PrecioUnitario = precioUnitario_;
            this.Estado = estado_;
            this.IdCategoria = idCategoria_;
            this.Stock = stock_;
            this.CodProveedor = CodProveedor_;
        }

        public int GetCodProd() { return CodProd; }
        public void SetCodProd(int codProd) { this.CodProd = codProd; }

        public string GetNombreProd() { return NombreProd; }
        public void SetNombreProd(string nombre) { this.NombreProd = nombre; }

        public string GetDescripcion() { return Descripcion; }
        public void SetDescripcion(string descripcion) { this.Descripcion = descripcion; }

        public float GetPrecioU() { return PrecioUnitario; }
        public void SetPrecioU(float precioU) { this.PrecioUnitario = precioU; }
        public bool GetEstado() { return Estado; }
        public void SetEstado(bool estado) { this.Estado = estado; }
        public int GetIdCategoria() { return IdCategoria; }
        public void SetIdCategoria(int idcat) { this.IdCategoria = idcat; }
        public int GetStock() { return Stock; }
        public void SetStock(int stock) { this.Stock = stock; }
        public int GetCodProveedor() { return CodProveedor; }
        public void SetCodProveedor(int CodProveedor) { this.CodProveedor = CodProveedor; }




    }
}
