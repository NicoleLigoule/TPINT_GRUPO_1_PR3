using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using Datos;
using Entidades;

namespace Negocio
{
    public class Login
    {
        public bool LogearUsuario(string usuario, string contrasenia, ref bool esAdmin)
        {
            AccesoDatosUsuario dataUsuario = new AccesoDatosUsuario();
            DataTable tablaUsuarios = dataUsuario.Traer_tablaUsuario();
            

            foreach (DataRow row in tablaUsuarios.Rows)
            {
                if (row["Usuario_us"].ToString() == usuario && row["Contrasenia_us"].ToString() == contrasenia)
                {
                    esAdmin = (bool)row["Administrador_us"];
                    return true;
                }
            }
            return false;
        }

        public bool ValidarUsuario(string usuario)
        {
            AccesoDatosUsuario dataUsuario = new AccesoDatosUsuario();
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
        public int obtener_legajo(string nombreUsuario)
        {
            AccesoDatos dp = new AccesoDatos();
            List<Usuario> usuarios = dp.Obtener_Usuarios();
            foreach (Usuario usuario in usuarios)
            {
                if (usuario.getUsuario_usuario().Equals(nombreUsuario, StringComparison.OrdinalIgnoreCase))
                {
                    return usuario.getLegajo_usuario();
                }
            }
            return -1;


        }
        public int VerificarNombreUsuario(string nombreUsuario)
        {
            AccesoDatos dp = new AccesoDatos();
            List<Usuario> usuarios = dp.Obtener_Usuarios();
            foreach (Usuario usuario in usuarios)
            {
                if (usuario.getUsuario_usuario().Equals(nombreUsuario, StringComparison.OrdinalIgnoreCase))
                {
                    return 1;
                }
            }
            return 0;
        }
    }
}
