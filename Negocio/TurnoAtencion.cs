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
        public DataTable cargartablaTurnos(int legajo)
        {
            AccesoDatosTurno datos = new AccesoDatosTurno();
            return datos.Todos_Los_Turnos(legajo.ToString());
        }
        public bool AsignarPaciente_Turno(Turno turnos)
        {
            bool cantFila = false;
            int cantFilas = 0;
            AccesoDatosTurno datos = new AccesoDatosTurno();

            cantFilas = datos.AsignarTurno(turnos);
            if (cantFilas > 0)
            {
                cantFila = true;
            }
            return cantFila;
        }

        public bool ActualizarTurno(Turno turno)
        {
            AccesoDatosTurno datos = new AccesoDatosTurno();
            return datos.ActualizarTurnoDatos(turno) == 1;
        }

    }
}

