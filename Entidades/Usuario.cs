﻿using System;
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
        private string Email;
        private String Telefono;
        private String Dni;
        private String Direccion;
        private String Password;
        private string TipoUsuario;

        public Usuario() { }
        public Usuario(int IdCliente_, String Nombre_, String Apellido_, String Email_, String Telefono_, string Dni_, String Direccion_, String Password_, String TipoUsuario_)
        {
            this.IdCliente = IdCliente_;
            this.Nombre = Nombre_;
            this.Apellido = Apellido_;
            this.Email = Email_;
            this.Telefono = Telefono_;
            this.Dni = Dni_;
            this.Direccion = Direccion_;
            this.Password = Password_;
            this.TipoUsuario = TipoUsuario_;
        }

       
        public int GetIdCliente() { return IdCliente; }
        public string GetNombre() { return Nombre; }
        public String GetApellido() { return Apellido; }
        public string GetEmail() { return Email; }
        public String GetTelefono() { return Telefono; }
        public String GetDni() { return Dni; }
        public String GetDireccion() { return Direccion; }
        public string GetPassword() { return Password; }
        public String GetTipoUsuario() { return TipoUsuario; }

        public void SetIdCliente(int IdCliente) { this.IdCliente = IdCliente; }
        public void SetNombre(String nombre_) { this.Nombre = nombre_ ; }
        public void SetApellido(String apellido_) { this.Apellido = apellido_; }
        public void SetEmail(string email_) { this.Email = email_; }
        public void SetTelefono(String telefono_) { this.Telefono = telefono_; }
        public void SetDni(String dni_) {this.Dni = dni_; }
        public void SetDireccion(string direccion_) {this.Direccion = direccion_; }
        public void SetPassword(string password_) {this.Password = password_; }
        public void SetTipoUsuario(string tipousuario_) {this.TipoUsuario = tipousuario_; }

    }
}
