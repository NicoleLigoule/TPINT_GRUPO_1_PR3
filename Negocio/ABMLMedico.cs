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
        private AccesoDatosMedico datos;
        public ABMLMedico() 
        {
            if(datos == null)
            {
                datos = new AccesoDatosMedico();
            }
        }
        public DataTable cargartabla()
        {
           return datos.Todos_Los_Medicos_Alta();
        }
        public DataTable cargartabla(String eleccionDelFiltrado, String parametro)
        {
            switch (eleccionDelFiltrado)
            {
                case "Sexo":
                    return datos.Todos_Los_Medicos_AltaPorSexo(parametro);
                case "Nombre":
                    return datos.Todos_Los_Medicos_AltaPorNombre(parametro);
                case "Provincia":
                    return datos.Todos_Los_Medicos_AltaPorProvincia(parametro);
                default:
                    break;
            }

            return datos.Todos_Los_Medicos_Alta();
        }

        public DataTable cargartablaMedicosPorSexo(String sexo)
        {
            return datos.Todos_Los_Medicos_AltaPorSexo(sexo);
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
    }
}
