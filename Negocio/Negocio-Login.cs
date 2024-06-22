using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using Datos;

namespace Negocio
{
    public class Login
    {
        public bool LogearUsuario(string usuario, string contrasenia)
        {
            Datos.AccesoDatosUsuario dataUsuario = new Datos.AccesoDatosUsuario();
            DataTable tablaUsuarios = dataUsuario.Traer_tablaUsuario();

            foreach (DataRow row in tablaUsuarios.Rows)
            {
                if (row["Usuario_us"].ToString() == usuario && row["Contrasenia_us"].ToString() == contrasenia)
                {
                    return true;
                }
            }
            return false;
        }

        public bool ValidarUsuario(string usuario)
        {
            Datos.AccesoDatosUsuario dataUsuario = new Datos.AccesoDatosUsuario();
            DataTable tablaUsuarios = dataUsuario.Traer_tablaUsuario();
            foreach (DataRow row in tablaUsuarios.Rows)
            {
                if (row["Usuario_us"].ToString() == usuario)
                {
                    return true;
                }
            }
            return false;
        }

    }
}
