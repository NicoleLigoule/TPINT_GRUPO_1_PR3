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

        public int Legajo_me1 { get => Legajo_me; set => Legajo_me = value; }
        public string DNI_me1 { get => DNI_me; set => DNI_me = value; }
        public string Nombre_me1 { get => Nombre_me; set => Nombre_me = value; }
        public string Apellido_me1 { get => Apellido_me; set => Apellido_me = value; }
        public int Localidad_me1 { get => Localidad_me; set => Localidad_me = value; }
        public int Provincia_me1 { get => Provincia_me; set => Provincia_me = value; }
        public int Especialidad_me1 { get => Especialidad_me; set => Especialidad_me = value; }
        public string Sexo_me1 { get => Sexo_me; set => Sexo_me = value; }
        public string Nacionalidad_me1 { get => Nacionalidad_me; set => Nacionalidad_me = value; }
        public string FechaNacimiento_me1 { get => FechaNacimiento_me; set => FechaNacimiento_me = value; }
        public string Direccion_me1 { get => Direccion_me; set => Direccion_me = value; }
        public string CorreoElectronico_me1 { get => CorreoElectronico_me; set => CorreoElectronico_me = value; }
        public string Telefono_me1 { get => Telefono_me; set => Telefono_me = value; }
    }
}
