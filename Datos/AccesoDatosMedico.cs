using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;

namespace Datos
{
    class AccesoDatosMedico
    {
        AccesoDatos ds = new AccesoDatos();
        public DataTable ListarMedico()
        {
           DataTable tabla = ds.getTabla("Medico", "SELECT * FROM Medico" );
            return tabla;)
        }
    }
}
