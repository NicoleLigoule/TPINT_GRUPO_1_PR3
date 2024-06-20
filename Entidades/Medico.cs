using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Medico
    {
        private int Legajo_me;
        private string DNI_me;
        private string Nombre_me;
        private string Apellido_me;
        private int Localidad_me;
        private int Provincia_me;
        private int Especialidad_me;
        private string Sexo_me;
        private string Nacionalidad_me;
        private string FechaNacimiento_me;
        private string Direccion_me;
        private string CorreoElectronico_me;
        private string Telefono_me;


        public Medico()
        {

        }

        public Medico(int legajo_me, string dNI_me, string nombre_me, string apellido_me, int localidad_me, int provincia_me, int especialidad_me, string sexo_me, string nacionalidad_me, string fechaNacimiento_me, string direccion_me, string correoElectronico_me, string telefono_me)
        {
            Legajo_me = legajo_me;
            DNI_me = dNI_me;
            Nombre_me = nombre_me;
            Apellido_me = apellido_me;
            Localidad_me = localidad_me;
            Provincia_me = provincia_me;
            Especialidad_me = especialidad_me;
            Sexo_me = sexo_me;
            Nacionalidad_me = nacionalidad_me;
            FechaNacimiento_me = fechaNacimiento_me;
            Direccion_me = direccion_me;
            CorreoElectronico_me = correoElectronico_me;
            Telefono_me = telefono_me;
        }

        public void setLegajoMed(int legajo)
        {
            this.Legajo_me = legajo;
        }

        public int getLegajoMed()
        {
            return Legajo_me;
        }

        public void setDniMed(string dni)
        {
            this.DNI_me = dni;
        }

        public string getDNIMed()
        {
            return DNI_me;
        }

        public void setNombreMed(string nombre)
        {
            this.Nombre_me = nombre;
        }

        public string getNombreMed()
        {
            return Nombre_me;
        }

        public void setApeMed(string apellido)
        {
            this.Apellido_me = apellido;
        }

        public string getApellidoMed()
        {
            return Apellido_me;
        }

        public void setLocalidadMed(int localidad)
        {
            this.Localidad_me = localidad;
        }

        public int getLocaMed()
        {
            return Localidad_me;
        }

        public void setProvMed(int prov)
        {
            this.Provincia_me = prov;
        }

        public int getProvMed()
        {
            return Provincia_me;
        }

        public void setEspecialidadMed(int especialidad)
        {
            this.Especialidad_me = especialidad;
        }

        public int getEspecialidadMed()
        {
            return Especialidad_me;
        }

        public void setSexoMed(string sexo)
        {
            this.Sexo_me = sexo;
        }

        public string getSexoMed()
        {
            return Sexo_me;
        }

        public void setNacionalidadMed(string nacionalidad)
        {
            this.Nacionalidad_me = nacionalidad;
        }

        public string getNacionalidadMed()
        {
            return Nacionalidad_me;
        }

        public void setFechaMed(string fecha)
        {
            this.FechaNacimiento_me= fecha;
        }

        public string getFechaMed()
        {
            return FechaNacimiento_me;
        }

        public void setDireccionMed(string direccion)
        {
            this.Direccion_me = direccion;
        }

        public string getDireccionMed()
        {
            return CorreoElectronico_me;
        }

        public void setCorreoMed(string correo)
        {
            this.CorreoElectronico_me = correo;
        }

        public string getCorreoMed()
        {
            return CorreoElectronico_me;
        }

        public void setTelefonoMed(string telefono)
        {
            this.Telefono_me = telefono;
        }

        public string getTelefonoMed()
        {
            return Telefono_me;
        }
    }
}
