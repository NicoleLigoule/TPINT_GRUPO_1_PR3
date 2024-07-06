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
        private string _fecha;
        private string _DiaAtencion_ha;
        private int _Horario;
        private bool _Asistencia;
        private string _DniPaciente_tu;
        private string _Descripcion;


        public Turno(string Legajo, string fecha, string DiaAtencion_ha, string Horario, string Asistencia, string DniPaciente_tu, string Descripcion)
        {
            _fecha = fecha;
             _Legajo = int.Parse(Legajo);
            _DiaAtencion_ha = DiaAtencion_ha;
            _Horario = int.Parse(Horario);
            SetAsistencia( Asistencia);
            _DniPaciente_tu = DniPaciente_tu;
            _Descripcion = Descripcion;
        }
        public Turno(int legajo_ha, int Horario)
        {
            this._Legajo = legajo_ha;
            this._Horario = Horario;
            
        }
        public Turno(string diaAtencion_ha, int legajo_ha, string dia)
        {
            this._Legajo = legajo_ha;
            this._fecha = diaAtencion_ha;
            this._DiaAtencion_ha = dia; 
        }
        public Turno(string Legajo, string fecha, string Horario, string DniPaciente)
        {
            SetLegajo(int.Parse(Legajo));
            Setfecha(fecha);
            SetHorario(int.Parse(Horario));
            SetDniPaciente_tu(DniPaciente);
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
        public string Getfecha()
        {
            return _fecha;
        }

        public void Setfecha(string fecha)
        {
            _fecha = fecha;
        }
        public string GetDiaAtencion()
        {
            return _DiaAtencion_ha;
        }

        public void SetDiaAtencion(string DiaAtencion_ha)
        {
            _DiaAtencion_ha = DiaAtencion_ha;
        }
        public string GetDniPaciente_tu()
        {
            return _DniPaciente_tu;
        }

        public void SetDniPaciente_tu(string DniPaciente_tu)
        {
            _DniPaciente_tu = DniPaciente_tu;
        }
        public bool GetAsistencia()
        {
            return _Asistencia;
        }

        public void SetAsistencia(string Asistencia)
        {
            if (Asistencia == "1")
            {
                _Asistencia = true;
            }
            else { _Asistencia = false; }

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
