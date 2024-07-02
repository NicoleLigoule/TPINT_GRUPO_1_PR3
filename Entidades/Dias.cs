using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
  public  class Dias
    {
        private int _ID_dia;
        private string _NombreDia;

        public Dias(string indi, string nombre)
        {
            _ID_dia = int.Parse(indi);
            _NombreDia = nombre;
        }
        public int GetID()
        {
            return _ID_dia;
        }
        public string GetNombre()
        {
            return _NombreDia;
        }
    }
}
