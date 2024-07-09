using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
   public class Turno
    {
        public int _Legajo;
        public string _fecha;
        public string _DiaAtencion_ha;
        public int _Horario;
        public bool _Asistencia;
        public string _DniPaciente_tu;
        public string _Descripcion;
        public bool _Estado_ha;


        public Turno() { }

        public Turno(int legajo, string fecha, string diaAtencion_ha, int horario, bool asistencia, string dniPaciente_tu, string descripcion, bool estado)
        {
            _Legajo = legajo;
            _fecha = fecha;
            _DiaAtencion_ha = diaAtencion_ha;
            _Horario = horario;
            _Asistencia = asistencia;
            _DniPaciente_tu = dniPaciente_tu;
            _Descripcion = descripcion;
            _Estado_ha = estado;
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

        public bool GetEstado()
        {
            return _Estado_ha;
        }

        public void SetEstado(string Estado)
        {
            if (Estado == "1")
            {
                _Estado_ha = true;
            }
            else { _Estado_ha = false; }

        }

    }
}
