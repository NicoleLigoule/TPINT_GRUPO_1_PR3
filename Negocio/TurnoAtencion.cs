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
    public class TurnoAtencion
    {
        public DataTable cargartablaTurnos()
        {
            AccesoDatosTurno datos = new AccesoDatosTurno();
            return datos.Todos_Los_Turnos();
        }
    }
}
