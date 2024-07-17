using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;
using Datos;
using Entidades;
namespace Negocio
{
    public class ABMLMedico
    {
        public DataTable cargartabla()
        {
           AccesoDatosMedico datos = new AccesoDatosMedico();
           return datos.Todos_Los_Medicos_Alta();
        }
        public bool agregarMedico(Medico medico)
        {
            int cantFilas = 0;
            AccesoDatosMedico datos = new AccesoDatosMedico();

            //if (!datos.existeMedico(medico))
            //{
                cantFilas = datos.agregar(medico);
           // }

            return cantFilas == 1;
        }
        public bool agregarHorarioMedico(HorarioAtencion horario)
        {
            
            AccesoDatosMedico datos = new AccesoDatosMedico();

            bool estado = false;
            if (datos.agregarHorario(horario) > 0)
            {
                estado = true;
            }

            return estado;
        }

        public bool AltaMedico(int legajo)
        {
            int cantFilas = 0;
            AccesoDatosMedico datos = new AccesoDatosMedico();

              cantFilas = datos.AltaMedico(legajo);
            

            return cantFilas == 1;
        }
        public bool bajaMedico(int legajo)
        {
            int cantFilas = 0;
            bool Ejecutada = false;
            AccesoDatosMedico datos = new AccesoDatosMedico();

            cantFilas = datos.bAJAMedico(legajo);
            if (cantFilas != 0)
            {
                Ejecutada = true;
            }
            return Ejecutada;
        }

        public DataTable cargartablaBaja()
        {
            AccesoDatosMedico datos = new AccesoDatosMedico();
            return datos.Todos_Los_Medicos_Baja();
        }
        public Medico traerMedico(string dni)
        {
            Medico medico = new Medico();
            AccesoDatosMedico med = new AccesoDatosMedico();
            medico = med.TraerMedicoSegunDNI(dni);
            medico.setDniMed(dni);
            return medico;
        }
        public bool ActuMed(Entidades.Medico medico)
        {
            AccesoDatosMedico datos = new AccesoDatosMedico();
            return datos.ActualizarMedico(medico) == 1;
        }


        /**
         * REPORTES:
         */

        private AccesoDatosMedico adm;

        public ABMLMedico()
        {
            if ( adm == null )
            {
                adm = new AccesoDatosMedico();
            }
        }

        public String MedicoConMasAtenciones()
        {
            String respuesta = "No hay registros en la base de datos, intentelo luego.";

            Medico mdReporte = adm.SP_medicoConMasAtencionesReportes();

            if( mdReporte != null)
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

            Especialidad esReporte = adm.SP_MedicoEspecialidadQueMasSeUso();

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

            List<Especialidad> especialidadList = adm.SP_MedicoMesConMayorConcurrenciaPorEspecialidad();
            int tamList = especialidadList.Count();

            if (especialidadList != null && tamList > 0) {

                respuesta = "";

                especialidadList.ForEach(e => {
                    respuesta += $"{e.getNombre_especialidad()}" +
                                    $", Mes: {e.getId_especialidad()}";
                    respuesta += "\n";
                });

                
            }

            return respuesta;
        }
    }
}
