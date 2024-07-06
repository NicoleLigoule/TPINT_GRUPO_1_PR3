using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;
using Entidades;

namespace Datos
{
    public class AccesoDatosTurno
    {
        private DataTable Traer_tabla_Turno(string Nombre, string SQl)
        {
            DataSet dts = new DataSet();
            AccesoDatos Datos = new AccesoDatos();

            SqlDataAdapter adaptador = Datos.ObtenerAdaptador(SQl);
            adaptador.Fill(dts, Nombre);
            return dts.Tables[Nombre];

        }

        public DataTable Todos_Los_Turnos()
        {
            return Traer_tabla_Turno("Turnos", "SELECT * FROM Turnos");
        }


        public int AsignarTurno(Turno turno)
        {
            AccesoDatos ds = new AccesoDatos();
            SqlCommand comando = new SqlCommand();
            ArmarParametrosTurno(ref comando, turno);
            return ds.EjecutarProcedimientoAlmacenado(comando, "SP_Registar_Tunro");
        }

        private void ArmarParametrosTurno(ref SqlCommand Comando, Turno turno)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@Legajo_tu", SqlDbType.Int);
            SqlParametros.Value = turno.GetLegajo();
            DateTime fecha;
            DateTime.TryParse(turno.Getfecha(), out fecha);

            SqlParametros = Comando.Parameters.Add("@Fecha_tu", SqlDbType.Date);
            SqlParametros.Value = fecha;

            SqlParametros = Comando.Parameters.Add("@Horario_tu", SqlDbType.Int);
            SqlParametros.Value = turno.GetHorario();

            SqlParametros = Comando.Parameters.Add("@DniPaciente_tu", SqlDbType.VarChar);
            SqlParametros.Value = turno.GetDniPaciente_tu();

        }
    }

}
