using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Categoria
    {
        private int CodCategoria;
        private String NombreCategoria;
        private String Descripcion;

        public Categoria()
        { }

        public Categoria(int codcategoria, string NombreCategoria, string descripcion)
        {
            this.CodCategoria = codcategoria;
            this.NombreCategoria = NombreCategoria;
            this.Descripcion = descripcion;
        }

        public int getCodCategoria() { return CodCategoria;}
        public String getNombreCategoria() { return NombreCategoria; }
        public string getDescripcion() { return Descripcion; }

        public void setCodCategoria(int codcat) { this.CodCategoria = codcat; }
        public void setNombreCategoria(string nomcat) { this.NombreCategoria = nomcat; }
        public void setDescripcion(string Descripcion) { this.Descripcion = Descripcion; }

    }
}
