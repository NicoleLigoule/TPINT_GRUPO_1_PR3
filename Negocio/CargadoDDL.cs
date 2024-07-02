using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Datos;
using Entidades;

namespace Negocio
{
    public class CargadoDDL
    {

        public List<Provincia> ObtenerProvinciasDDL()
        {
            AccesoDatos dp = new AccesoDatos();
            return dp.ObtenerProvincias();
        }
        public List<Localidad> ObtenerLOcalidadesDDL(string id)
        {
            AccesoDatos dp = new AccesoDatos();
            return dp.ObtenerLocalidad(id);
        }
        public List<Especialidad> ObtenerEspecialidadDDL()
        {
            AccesoDatos dp = new AccesoDatos();
            return dp.ObtenerEspecialidad();
        }
        public List<Medico> ObtenerMEdicos()
        {
            AccesoDatos dp = new AccesoDatos();
            return dp.ObtenerMEdicos_horarios();
        }
        public List<genero> CargarListaGeneros()
        {
            
            List<genero> generos = new List<genero>();
            generos.Add(new genero("0", "--seleccione--"));
            generos.Add(new genero("1", "Femenino")); 
            generos.Add(new genero("2", "Masculino"));
            generos.Add(new genero("3", "Otros"));
            return generos;
        }
        public List<Dias> CargarListaDias()
        {

            List<Dias> Dias = new List<Dias>();
            Dias.Add(new Dias("0", "--seleccione--"));
            Dias.Add(new Dias("1", "LUNES"));
            Dias.Add(new Dias("2", "MARTES"));
            Dias.Add(new Dias("3", "MIÉRCOLES"));
            Dias.Add(new Dias("4", "JUEVES"));
            Dias.Add(new Dias("5", "VIERNES"));
            return Dias;
        }
    }
}
