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
        private string Sexo_pc;
        private string Nacionalidad_pc;
        private string FechaNacimiento_pc;
        private string Direccion_pc;
        private string CorreoElectronico_pc;
        private string Telefono_pc;
        private int Provincia_pc; 

        

        public Paciente()
        {

        }
        public Paciente(string dNI_pc, string nombre_pc, string apellido_pc)
        {
           setDniPac(dNI_pc);
            setNombrePac(nombre_pc);
            setApePac(apellido_pc);
        }

        public Paciente(string dNI_pc, string nombre_pc, string apellido_pc, int localidad_pc, string sexo_pc, string nacionalidad_pc, string fechaNacimiento_pc, string direccion_pc, string correoElectronico_pc, string telefono_pc, int provincia_pc)
        {
            DNI_pc = dNI_pc;
            Nombre_pc = nombre_pc;
            Apellido_pc = apellido_pc;
            Localidad_pc = localidad_pc;
            Sexo_pc = sexo_pc;
            Nacionalidad_pc = nacionalidad_pc;
            FechaNacimiento_pc = fechaNacimiento_pc;
            Direccion_pc = direccion_pc;
            CorreoElectronico_pc = correoElectronico_pc;
            Telefono_pc = telefono_pc;
            Provincia_pc = provincia_pc;
        }

        
        
        public void setDniPac(string dni)
        {
            this.DNI_pc = dni;
        }

        public string getDNIPac()
        {
            return DNI_pc;
        }

        public void setNombrePac(string nombrePac)
        {
            this.Nombre_pc = nombrePac;
        }

        public string getNombrePac()
        {
            return Nombre_pc;
        }

        public void setApePac(string apelllidoPac)
        {
            this.Apellido_pc = apelllidoPac;
        }

        public string getApellidoPac()
        {
            return Apellido_pc;
        }

        public void setLocalidadPac(int loca)
        {
            this.Localidad_pc = loca;
        }

        public int getLocaPac()
        {
            return Localidad_pc;
        }

        public void setSexoPac(string sexoPac)
        {
            this.Sexo_pc = sexoPac;
        }

        public string getSexoPac()
        {
            return Sexo_pc;
        }

        public void setNacionalidadPac(string nacionalidad)
        {
            this.Nacionalidad_pc = nacionalidad;
        }

        public string getNacionalidadPac()
        {
            return Nacionalidad_pc;
        }

        public void setFechaPac(string fechaPc)
        {
            this.FechaNacimiento_pc = fechaPc;
        }

        public string getFechaPac()
        {
            return FechaNacimiento_pc;
        }

        public void setDireccionPac(string direccionpc)
        {
            this.Direccion_pc = direccionpc;
        }

        public string getDireccionPac()
        {
            return Direccion_pc;
        }

        public void setCorreoPac(string correopc)
        {
            this.CorreoElectronico_pc = correopc;
        }

        public string getCorreoPac()
        {
            return CorreoElectronico_pc;
        }

        public void setTelefonoPac(string telefonopc)
        {
            this.Telefono_pc = telefonopc;
        }

        public string getTelefonoPac()
        {
            return Telefono_pc;
        }

        public void setProvinciaPac(int prov)
        {
            this.Provincia_pc = prov;
        }

        public int getProvPac()
        {
            return Provincia_pc;
        }

    }
}
