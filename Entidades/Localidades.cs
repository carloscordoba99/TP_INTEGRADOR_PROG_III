using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Localidades
    {
        private int IdLocalidad;
        private string NombreLocalidad;
        private int IdProvincia;

        public Localidades() { }
        public Localidades(string NombreLocalidad_, int IdProvincia_)
        {
            this.IdProvincia = IdProvincia_;
            this.NombreLocalidad = NombreLocalidad_;
        }
        public void SetIdLocalidad(int x) { this.IdLocalidad = x; }
        public int GetIdLocalidad() { return IdLocalidad; }
        public void SetNombreLocalidad(string x) { this.NombreLocalidad = x; }
        public string GetNombreLocalidad() { return NombreLocalidad; }
        public void SetIdProvincia(int x) { this.IdProvincia = x; }
        public int GetIdProvincia() { return IdProvincia; }
    }
}
