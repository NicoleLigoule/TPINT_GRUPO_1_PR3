using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using static Datos.AccesoDatos;

namespace Datos
{
    public class AccesoDatosUsuario
    {
        public DataTable Traer_tablaUsuario()
        {
            AccesoDatos Datos = new AccesoDatos();
            return Datos.getSimpleTable("Usuario");
        }


    }
}
