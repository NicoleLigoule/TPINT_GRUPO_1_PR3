using Datos;
using Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Negocio
{
    internal class Reportes
    {
        private AccesoDatosMedico accesoDatosMedico;
        private AccesoDatosPacientes accesoDatosPacientes;
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
        }

        /**
         * REPORTES MEDICO
         */

        public String MedicoConMasAtenciones()
        {
            String respuesta = "No hay registros en la base de datos, intentelo luego.";

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
            String respuesta = "No hay registros en la base de datos, intentelo luego.";

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
            String respuesta = "No hay registros en la base de datos, intentelo luego.";

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
    }
}
