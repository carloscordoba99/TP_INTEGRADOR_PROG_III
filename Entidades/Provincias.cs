using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Provincias
    {
        private int IdProvincia;
        private string NombreProvincia;

        public Provincias() { }
        public Provincias(String NombreProvincia_)
        {
            this.NombreProvincia = NombreProvincia_;
        }

        public void SetIdProvincia(int x) { this.IdProvincia = x; }
        public int GetIdProvincia() { return IdProvincia; }
        public void SetNombreProvincia(string x) { this.NombreProvincia = x; }
        public string GetNombreProvincia() { return NombreProvincia; }

    }
}
