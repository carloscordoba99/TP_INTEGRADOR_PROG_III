using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Usuario
    {
        private int IdCliente;
        private String Nombre;
        private String Apellido;
        private String Provincia;
        private String Email;
        private String Telefono;
        private String Dni;
        private String Direccion;
        private String Password;
        private Boolean TipoUsuario;
         
        public Usuario() { }
        public Usuario(int IdCliente_, String Nombre_, String Apellido_, String Provincia_, String Email_, String Telefono_, String Dni_, String Direccion_, String Password_, Boolean TipoUsuario_)
        {
            this.IdCliente = IdCliente_;
            this.Nombre = Nombre_;
            this.Apellido = Apellido_;
            this.Provincia = Provincia_;
            this.Email = Email_;
            this.Telefono = Telefono_;
            this.Dni = Dni_;
            this.Direccion = Direccion_;
            this.Password = Password_;
            this.TipoUsuario = TipoUsuario_;
        }

       
        public int GetIdCliente() { return IdCliente; }
        public String GetNombre() { return Nombre; }
        public String GetApellido() { return Apellido; }
        public string GetEmail() { return Email; }
        public String GetTelefono() { return Telefono; }
        public String GetDni() { return Dni; }
        public String GetDireccion() { return Direccion; }
        public String GetProvincia() { return Provincia; }
        public string GetPassword() { return Password; }
        public Boolean GetTipoUsuario() { return TipoUsuario; }

        public void SetIdCliente(int IdCliente) { this.IdCliente = IdCliente; }
        public void SetNombre(String nombre_) { this.Nombre = nombre_ ; }
        public void SetApellido(String apellido_) { this.Apellido = apellido_; }
        public void SetEmail(string email_) { this.Email = email_; }
        public void SetTelefono(String telefono_) { this.Telefono = telefono_; }
        public void SetDni(String dni_) {this.Dni = dni_; }
        public void SetDireccion(string direccion_) {this.Direccion = direccion_; }
        public void SetProvincia(string provincia) { this.Provincia = provincia; }
        public void SetPassword(string password_) {this.Password = password_; }
        public void SetTipoUsuario(Boolean tipousuario_) {this.TipoUsuario = tipousuario_; }

    }
}
