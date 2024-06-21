using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
   public class Turno
    {
        private int _Legajo;
        private Fecha _fecha;
        private int _Horario;
        private string _Asistencia;
        private string _Descripcion;

        public Turno(string Legajo, string Horario, string Asistencia, string Descripcion, string dia, string mes, string anio)
        {
            _fecha =new Fecha(dia, mes, anio);
            _Legajo= int.Parse(Legajo);
            _Horario= int.Parse(Horario);
            _Asistencia = Asistencia;
            _Descripcion = Descripcion;
        }
        public Fecha GetFecha()
        {
            return _fecha;
        }
        public int GetLegajo()
        {
            return _Legajo;
        }

        public void SetLegajo(int Legajo)
        {
            _Legajo = Legajo;
        }
        public int GetHorario()
        {
            return _Horario;
        }

        public void SetHorario(int Horario)
        {
            _Horario = Horario;
        }
        public string GetAsistencia()
        {
            return _Asistencia;
        }

        public void SetAsistencia(string Asistencia)
        {
            _Asistencia = Asistencia;
        }

        public string GetDescripcion()
        {
            return _Descripcion;
        }

        public void SetDescripcion(string Descripcion)
        {
            _Descripcion = Descripcion;
        }

    }
}
