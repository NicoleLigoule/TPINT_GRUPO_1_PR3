using Datos;
using Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Negocio
{
    public class Reportes
    {
        private AccesoDatosMedico accesoDatosMedico;
        private AccesoDatosPacientes accesoDatosPacientes;
        private AccesoDatosTurno accesoDatosTurno;

        public Reportes()
        { 
            if(accesoDatosMedico == null)
            {
                accesoDatosMedico = new AccesoDatosMedico();
            }
            if(accesoDatosPacientes == null)
            {
                accesoDatosPacientes = new AccesoDatosPacientes();
            }
            if (accesoDatosTurno == null)
            {
                accesoDatosTurno = new AccesoDatosTurno();
            }
        }

        /**
         * REPORTES MEDICO
         */

        public String MedicoConMasAtenciones()
        {
            String respuesta = "No hay registros en la base de datos, por favor intentelo luego.";

            Medico mdReporte = accesoDatosMedico.SP_medicoConMasAtencionesReportes();

            if (mdReporte != null)
            {
                respuesta = $"El médico con más atenciones es {mdReporte.getNombreMed()} {mdReporte.getApellidoMed()}" +
                    $"\nDNI {mdReporte.getDNIMed()}" +
                    $"\tCantidad de atenciones: {mdReporte.getEspecialidadMed()}";
            }

            return respuesta;
        }

        public String especialidadQueMasSeUso()
        {
            String respuesta = "No hay registros en la base de datos, por favor intentelo luego.";

            Especialidad esReporte = accesoDatosMedico.SP_MedicoEspecialidadQueMasSeUso();

            if (esReporte != null)
            {
                respuesta = $"La especialidad que más se usó es {esReporte.getNombre_especialidad()}" +
                    $", cantidad de veces: {esReporte.getId_especialidad()}";
            }

            return respuesta;
        }

        public String mesConMayorConcurrenciaPorEspecialidad()
        {
            String respuesta = "No hay registros en la base de datos, por favor intentelo luego.";

            List<Especialidad> especialidadList = accesoDatosMedico.SP_MedicoMesConMayorConcurrenciaPorEspecialidad();
            int tamList = especialidadList.Count();

            if (especialidadList != null && tamList > 0)
            {

                respuesta = "";

                especialidadList.ForEach(e => {
                    respuesta += $"{e.getNombre_especialidad()}" +
                                    $", Mes: {e.getId_especialidad()}";
                    respuesta += "\n";
                });


            }

            return respuesta;
        }


        /**
         * REPORTES PACIENTE
         */

        public String pacienteConMasCancelaciones()
        {
            String respuesta = "No hay registros en la base de datos, por favor intentelo luego.";

            Paciente pcReporte = accesoDatosPacientes.SP_pacienteConMasCancelacionesReportes();

            if (pcReporte != null)
            {
                respuesta = $"El paciente con más cancelaciones es {pcReporte.getNombrePac()} {pcReporte.getApellidoPac()}" +
                    $" DNI {pcReporte.getDNIPac()}" +
                    $" Cantidad de cancelaciones: {pcReporte.getProvPac()}";
            }

            return respuesta;
        }

        public String pacienteLocalidadConMasPacientes()
        {
            String respuesta = "No hay registros en la base de datos, por favor intentelo luego.";

            Localidad loReporte = accesoDatosPacientes.SP_PacienteLocalidadConMasPacientes();

            if (loReporte != null)
            {
                respuesta = $"La localidad con más pacientes es {loReporte.getNombre_localidad()}" +
                    $", cantidad de pacientes: {loReporte.getId_localidad()}";
            }

            return respuesta;
        }

        /**
         * REPORTES TURNOS
         */

        public String ConsultasPorDiaDeLaSemanaEntreFechas(DateTime fechaInicio, DateTime fechaFin)
        {
            String respuesta = "No hay registros en la base de datos, por favor intentelo luego.";

            List<Turno.ConsultaPorDiaSemana> consultasList = accesoDatosTurno.SP_ConsultasPorDiaDeLaSemanaEntreFechas(fechaInicio, fechaFin);

            if (consultasList.Count > 0)
            {
                respuesta = "<div class='consultas-header'>Consulta por dia de la semana entre fechas:</div><br/>";
                foreach (var consulta in consultasList)
                {
                    string diaSemana = "";
                    switch (consulta.DiaSemana)
                    {
                        case 1: diaSemana = "Domingo"; break;
                        case 2: diaSemana = "Lunes"; break;
                        case 3: diaSemana = "Martes"; break;
                        case 4: diaSemana = "Miércoles"; break;
                        case 5: diaSemana = "Jueves"; break;
                        case 6: diaSemana = "Viernes"; break;
                        case 7: diaSemana = "Sábado"; break;
                    }
                    respuesta += $"<div class='consulta-item'>Día: {diaSemana} Número de consultas: {consulta.NumeroDeConsultas}</div>";
                }
            }

            return respuesta;
        }
    }
}
