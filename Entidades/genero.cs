using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
   public class genero
    {
        private int _indice;
        private string _Nombre_genero;

        public genero(string indi,string nombre)
        {
            _indice = int.Parse(indi);
            _Nombre_genero = nombre;
        }
        public int GetIndice()
        {
            return _indice;
        }
        public string GetNombreGenero()
        {
            return _Nombre_genero;
        }

    }
}
