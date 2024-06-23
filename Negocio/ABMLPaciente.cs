using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using Datos;
using Entidades;

namespace Negocio
{
    public class ABMLPaciente
    {
        AccesoDatosPacientes dato;

        public ABMLPaciente()
        {
            if (dato == null)
            {
                dato = new AccesoDatosPacientes();
            }
        }
        public DataTable cargartablaPaciente()
        {
            return dato.Todos_Los_Pacientes();
        }

        public bool agregarPaciente(Paciente paciente)
        {
            int cantFilas = 0;

            if (!dato.existePaciente(paciente))
            {
                cantFilas = dato.sp_insertar_paciente(paciente);
            }

            return cantFilas == 1;
        }

        public bool eliminarPaciente(string DNI_pc)
        { 
            return dato.sp_eliminar_paciente(DNI_pc) == 1;
        }
    }
}

