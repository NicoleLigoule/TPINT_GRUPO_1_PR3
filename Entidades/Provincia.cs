using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Provincia
    {
        private int id_provincia;
        private string descripcion_Provincia;

        public Provincia(int id, string descripcion)
        {
            id_provincia = id;
            descripcion_Provincia = descripcion;
        }

        public int GetIdProvincia()
        {
            return id_provincia;
        }

        public void SetIdProvincia(int id)
        {
            id_provincia = id;
        }

        public string GetDescripcionProvincia()
        {
            return descripcion_Provincia;
        }

        public void SetDescripcionProvincia(string descripcion)
        {
            descripcion_Provincia = descripcion;
        }
    }
}
