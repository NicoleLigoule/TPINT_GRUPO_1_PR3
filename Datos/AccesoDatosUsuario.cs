using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using static Datos.AccesoDatos;
using System.Data.SqlClient;
using Entidades;

namespace Datos
{
    public class AccesoDatosUsuario
    {
        public DataTable Traer_tablaUsuario()
        {
            AccesoDatos Datos = new AccesoDatos();
            return Datos.getSimpleTable("Usuario");
        }

        public int ActualizarUsuario(Usuario usuario )
        {
            AccesoDatos ds = new AccesoDatos();
            SqlCommand comando = new SqlCommand();
            ArmarParametrosActualizarUsuario(ref comando, usuario);
            return ds.EjecutarProcedimientoAlmacenado(comando, "SP_ActualizarUsuario");
        }
        private void ArmarParametrosActualizarUsuario(ref SqlCommand Comando, Usuario usuario)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@Legajo_us", SqlDbType.VarChar);
            SqlParametros.Value = usuario.getLegajo_usuario();

            SqlParametros = Comando.Parameters.Add("@NuevoUsuario_us", SqlDbType.VarChar);
            SqlParametros.Value = usuario.getUsuario_usuario();

            SqlParametros = Comando.Parameters.Add("@NuevaContrasenia_us", SqlDbType.VarChar);
            SqlParametros.Value = usuario.getContrasenia_usuario();
        }
    }
}
