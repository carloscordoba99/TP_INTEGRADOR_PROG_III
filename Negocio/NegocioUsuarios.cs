﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using Entidades;
using Dao;

namespace Negocio
{
    public class NegocioUsuarios
    {
       public DataTable getTablaUsuarios()
        {
            DaoUsuarios dao = new DaoUsuarios();
            return dao.getUsuarios();
        }

        public DataTable getUsuario(string id)
        {
            DaoUsuarios dao = new DaoUsuarios();
            return dao.getUsuario(id);
        }

        public bool AgregarUsuario(string nombre, string apellido, string email, string celular,string dni, string direccion, string contrasena,string tipo )
        {
            int cantFilas = 0;

            Usuario user = new Usuario();
            user.SetNombre(nombre);
            user.SetApellido(apellido);
            user.SetEmail(email);
            user.SetTelefono(celular);
            user.SetDni(dni);
            user.SetDireccion(direccion);
            user.SetPassword(contrasena);
            user.SetTipoUsuario(tipo);

            DaoUsuarios dao = new DaoUsuarios();
            if(dao.ExisteUsuario(user) == false)
            {
                cantFilas = dao.AgregarUsuario(user);
            }

            if (cantFilas == 1)
            {
                return true;
            }
            else
            {
                return false;
            }

        }

        public bool EliminarUsuario(int id)
        {
            DaoUsuarios dao = new DaoUsuarios();
            Usuario user = new Usuario();
            user.SetIdCliente(id);
            int aux = dao.EliminarUsuarios(user);
            if (aux == 1)
            {
                return true;
            }
            else
            {
                return false;
            }
        }


        public void ModificarUsuario(String idcliente,string nombre,string apellido,string email,string celular,string dni,string direccion,string contrasena, string tipo_usuario)
        {
            DaoUsuarios dao = new DaoUsuarios();
            Usuario user = new Usuario();
            user.SetIdCliente(Convert.ToInt32(idcliente));
            user.SetNombre(nombre);
            user.SetApellido(apellido);
            user.SetEmail(email);
            user.SetTelefono(celular);
            user.SetDni(dni);
            user.SetDireccion(direccion);
            user.SetPassword(contrasena);
            user.SetTipoUsuario(tipo_usuario);

            dao.ModificarDatos(user);
        }
        public bool ValidarUsuario(String Id, String Contraseña)
        {
            DaoUsuarios dao = new DaoUsuarios();
            Usuario user = new Usuario();
            user.SetIdCliente(Convert.ToInt32(Id));
            user.SetPassword(Contraseña);
            bool aux = dao.VerificarUsuario(user);
            if (aux == true)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        public string GetNombreYApellidoUsuario(String Id, String Contraseña)
        {
            DaoUsuarios dao = new DaoUsuarios();
            Usuario user = new Usuario();
            user.SetIdCliente(Convert.ToInt32(Id));
            user.SetPassword(Contraseña);
            String NombreCompleto = dao.GetNombreYApellido(user);
            return NombreCompleto;
        }
        public string GetTraerTipoUsuario(String Id, String Contraseña)
        {
            DaoUsuarios dao = new DaoUsuarios();
            Usuario user = new Usuario();
            user.SetIdCliente(Convert.ToInt32(Id));
            user.SetPassword(Contraseña);
            String TipoUsuario = dao.GetTraerTipoUsuario(user);
            return TipoUsuario;
        }
        public string GetTraerIdUsuario(String Id, String Contraseña)
        {
            DaoUsuarios dao = new DaoUsuarios();
            Usuario user = new Usuario();
            user.SetIdCliente(Convert.ToInt32(Id));
            user.SetPassword(Contraseña);
            String IdUsuario = dao.GetTraerIdUsuario(user);
            return IdUsuario;
        }
    }
}
