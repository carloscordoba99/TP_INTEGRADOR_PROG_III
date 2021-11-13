using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Proveedor
    {
        private int CodProveedor;
        private String RazonSocial;
        private String Marca;
        private String Direccion;
        private String Ciudad;
        private String Provincia;
        private String Cuit;
        private String Telefono;
        private String Contacto;
        private String Email;
        private String Web;
        private String CBU;

        public Proveedor() { }

        public Proveedor(int CodProveedor_, String RazonSocial_, String Marca, String Direccion_, String Ciudad_, String Provincia_, String Cuit_, String Telefono_, String Contacto_, String Email_, String Web_, string CBU_)
        {
            this.CodProveedor = CodProveedor_;
            this.RazonSocial = RazonSocial_;
            this.Marca = Marca;
            this.Direccion = Direccion_;
            this.Ciudad = Ciudad_;
            this.Provincia = Provincia_;
            this.Cuit = Cuit_;
            this.Telefono = Telefono_;
            this.Contacto = Contacto_;
            this.Email = Email_;
            this.Web = Web_;
            this.CBU = CBU_;
        }

        public int GetCodProveedor() { return CodProveedor; }
        public void SetCodProveedor(int CodProveedor) { this.CodProveedor = CodProveedor; }

        public string GetRazonSocial() { return RazonSocial; }
        public void SetRazonSocial(string RazonSocial) { this.RazonSocial = RazonSocial; }

        public string GetMarca() { return Marca; }
        public void SetMarca(string Marca) { this.Marca = Marca; }

        public string GetDireccion() { return Direccion; }
        public void SetDireccion(string Direccion) { this.Direccion = Direccion; }

        public string GetCiudad() { return Ciudad; }
        public void SetCiudad(string Ciudad) { this.Ciudad = Ciudad; }

        public string GetProvincia() { return Provincia; }
        public void SetProvincia(string Provincia) { this.Provincia = Provincia; }

        public string GetCuit() { return Cuit; }
        public void SetCuit(string Cuit) { this.Cuit = Cuit; }

        public String GetTelefono() { return Telefono; }
        public void SetTelefono(String Telefono) { this.Telefono = Telefono; }

        public string GetContacto() { return Contacto; }
        public void SetContacto(string Contacto) { this.Contacto = Contacto; }

        public string GetEmail() { return Email; }
        public void SetEmail(string Email) { this.Email = Email; }

        public string GetWeb() { return Web; }
        public void SetWeb(string Web) { this.Web = Web; }

        public string GetCBU() { return CBU; }
        public void SetCBU(string CBU) { this.CBU = CBU; }
    }
}
