using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Localidad
    {
        private int id_localidad;
        private int id_provincia;
        private string nombre_localidad;

        public Localidad(string id_localidad, string nombre_localidad)
        {
            this.id_localidad = int.Parse(id_localidad);
            this.nombre_localidad = nombre_localidad;
        }
        public Localidad(string id_localidad, string id_provincia, string nombre_localidad)
        {
            this.id_localidad = int.Parse(id_localidad);
            this.id_provincia = int.Parse(id_provincia);
            this.nombre_localidad = nombre_localidad;
        }

        public int getId_localidad() { return id_localidad; }
        public int getId_provincia() { return id_provincia; }
        public string getNombre_localidad() { return nombre_localidad; }
        public void setId_localidad(int Id_localidad) { this.id_localidad=Id_localidad; }  
        public void setId_provincia(int Id_provincia) { this.id_provincia= Id_provincia; }  
        public void setNombre_localidad(string nombre_localidad) { this.nombre_localidad=nombre_localidad; }
    }
}
