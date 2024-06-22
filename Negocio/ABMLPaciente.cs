using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using Datos;

namespace Negocio
{
    public class ABMLPaciente
    {
        public DataTable cargartablaPaciente()
        {
            AccesoDatosPacientes dato = new AccesoDatosPacientes();
            return dato.Todos_Los_Pacientes();
        }
        
    }
}
