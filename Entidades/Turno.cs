using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    class Turno
    {
        int _Legajo;
        /// hace falta hacer una clase fecha  Fecha
        int _Horario;
        string _Asistencia;
        string _Descripcion;

        public Turno(string Legajo, string Horario, string Asistencia, string Descripcion)
        {
            ///falta agregar la clase fecha para poder terminar esto!!!
            _Legajo= int.Parse(Legajo);
            _Horario= int.Parse(Horario);
            _Asistencia = Asistencia;
            _Descripcion = Descripcion;
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
