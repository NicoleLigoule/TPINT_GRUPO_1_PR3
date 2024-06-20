using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Paciente
    {
        private string DNI_pc;
        private string Nombre_pc;
        private string Apellido_pc;
        private int Localidad_pc;
        private int Provincia_pc;
        private string Sexo_pc;
        private string Nacionalidad_pc;
        private string FechaNacimiento_pc;
        private string Direccion_pc;
        private string CorreoElectronico_pc;
        private string Telefono_pc;

        

        public Paciente()
        {

        }

        public Paciente(string dNI_pc, string nombre_pc, string apellido_pc, int localidad_pc, int provincia_pc, string sexo_pc, string nacionalidad_pc, string fechaNacimiento_pc, string direccion_pc, string correoElectronico_pc, string telefono_pc)
        {
            DNI_pc = dNI_pc;
            Nombre_pc = nombre_pc;
            Apellido_pc = apellido_pc;
            Localidad_pc = localidad_pc;
            Provincia_pc = provincia_pc;
            Sexo_pc = sexo_pc;
            Nacionalidad_pc = nacionalidad_pc;
            FechaNacimiento_pc = fechaNacimiento_pc;
            Direccion_pc = direccion_pc;
            CorreoElectronico_pc = correoElectronico_pc;
            Telefono_pc = telefono_pc;
        }

        public void setDni(string dni)
        {
            this.DNI_pc = dni;
        }

        public string getDNI()
        {
            return DNI_pc;
        }

        public void setNombre(string nombrePac)
        {
            this.Nombre_pc = nombrePac;
        }

        public string getNombrePac()
        {
            return Nombre_pc;
        }

        public void setApe(string apelllidoPac)
        {
            this.Apellido_pc = apelllidoPac;
        }

        public string getApellido()
        {
            return Apellido_pc;
        }

        public void setLocalidad(int loca)
        {
            this.Localidad_pc = loca;
        }

        public int getLoca()
        {
            return Localidad_pc;
        }

        public void setProv(int prov)
        {
            this.Provincia_pc = prov;
        }

        public int getProv()
        {
            return Provincia_pc;
        }

        public string Sexo_pc1 { get => Sexo_pc; set => Sexo_pc = value; }
        public string Nacionalidad_pc1 { get => Nacionalidad_pc; set => Nacionalidad_pc = value; }
        public string FechaNacimiento_pc1 { get => FechaNacimiento_pc; set => FechaNacimiento_pc = value; }
        public string Direccion_pc1 { get => Direccion_pc; set => Direccion_pc = value; }
        public string CorreoElectronico_pc1 { get => CorreoElectronico_pc; set => CorreoElectronico_pc = value; }
        public string Telefono_pc1 { get => Telefono_pc; set => Telefono_pc = value; }
    }
}
