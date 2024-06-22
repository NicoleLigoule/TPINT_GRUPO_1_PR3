using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Fecha
    {

        private int _dia, _mes, _anio;
        public Fecha(string dia,string mes, string anio)
        {
            _dia = int.Parse(dia);
            _mes = int.Parse(mes);
            _anio = int.Parse(anio);
        }
       public int getDia()
        {
            return _dia;
        }
        public int getMes()
        {
            return _mes;
        }
        public int getAnio()
        {
            return _anio;
        }
        public void setDia(int dia)
        {
            _dia = dia;
        }
        public void setMes(int mes)
        {
            _mes = mes;
        }
        public void setAnio(int anio)
        {
            _anio = anio;
        }
       public string toString()
        {
            string valorADevolver;
            valorADevolver = _dia.ToString() + "/" + _mes.ToString() + "/" + _anio.ToString();
            return valorADevolver;
        }


    } 
}


