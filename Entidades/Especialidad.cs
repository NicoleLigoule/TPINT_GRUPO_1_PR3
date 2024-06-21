using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Especialidad
    {
        private int id_especialidad;
        private string nombre_especialidad;
        public Especialidad(int id_especialidad, string nombre_especialidad)
        {
            this.id_especialidad = id_especialidad;
            this.nombre_especialidad = nombre_especialidad;
        }

        public int getId_especialidad()
        {
            return id_especialidad;
        }

        public string getNombre_especialidad()
        {
            return nombre_especialidad;
        }

        public void setId_especialidad(int id_especialidad)
        {
            this.id_especialidad = id_especialidad;
        }

        public void setNombre_especialidad(string nombre_especialidad)
        {
            this.nombre_especialidad = nombre_especialidad;
        }
    }
}
