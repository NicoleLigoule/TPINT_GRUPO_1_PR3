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
        //private DataTable Traer_tabla_Turno(string Nombre, string SQl)
        //{
        //    DataSet dts = new DataSet();
        //    AccesoDatos Datos = new AccesoDatos();

        //    SqlDataAdapter adaptador = Datos.ObtenerAdaptador(SQl);
        //    adaptador.Fill(dts, Nombre);
        //    return dts.Tables[Nombre];

        //}
        private readonly AccesoDatos _accesoDatos;

        public AccesoDatosTurno()
        {
            _accesoDatos = new AccesoDatos();
        }

        public DataTable Todos_Los_Turnos(string leg)
        {
            return _accesoDatos.getSimpleTable("Turnos WHERE Legajo_tu =" + leg + " and Estado_ha = 1 and (DniPaciente_tu IS NOT NULL OR LEN(DniPaciente_tu) != 0)");
        }


        public int AsignarTurno(Turno turno)
        {
            SqlCommand comando = new SqlCommand();
            ArmarParametrosTurno(ref comando, turno);
            return _accesoDatos.EjecutarProcedimientoAlmacenado(comando, "sp_ActualizarTurnoDniPaciente");
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

        private void ArmarParametrosModificarTurno(ref SqlCommand Comando, Turno turno)
        {
            SqlParameter SqlParametros = new SqlParameter();
            DateTime fecha;
            DateTime.TryParse(turno.Getfecha(), out fecha);

            SqlParametros = Comando.Parameters.Add("@Asistencia", SqlDbType.Bit);
            SqlParametros.Value = turno.GetAsistencia();

            SqlParametros = Comando.Parameters.Add("@Fecha", SqlDbType.Date);
            SqlParametros.Value = fecha;

            SqlParametros = Comando.Parameters.Add("@Descripcion", SqlDbType.Date);
            SqlParametros.Value = turno.GetDescripcion();

            SqlParametros = Comando.Parameters.Add("@Estado", SqlDbType.Bit);
            SqlParametros.Value = turno.GetEstado();
        }


        public int ActualizarTurnoDatos(Turno turno)
        {
            SqlCommand cmd = new SqlCommand();

            ArmarParametrosModificarTurno(ref cmd, turno);
            return _accesoDatos.EjecutarProcedimientoAlmacenado(cmd, "ACTUALIZAR_ESTADO_TURNO");
        }

        public List<Turno.ConsultaPorDiaSemana> SP_ConsultasPorDiaDeLaSemanaEntreFechas(DateTime fechaInicio, DateTime fechaFin)
        {
            List<Turno.ConsultaPorDiaSemana> consultasList = new List<Turno.ConsultaPorDiaSemana>();

            using (SqlConnection conn = _accesoDatos.ObtenerConexion())
            {
                using (SqlCommand cmd = new SqlCommand("SP_ConsultasPorDiaDeLaSemanaEntreFechas", conn))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@FechaInicio", fechaInicio);
                    cmd.Parameters.AddWithValue("@FechaFin", fechaFin);

                   // conn.Open();
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            consultasList.Add(new Turno.ConsultaPorDiaSemana
                            {
                                DiaSemana = reader.GetInt32(0),
                                NumeroDeConsultas = reader.GetInt32(1)
                            });
                        }
                    }
                }
            }

            return consultasList;
        }
    }
}

