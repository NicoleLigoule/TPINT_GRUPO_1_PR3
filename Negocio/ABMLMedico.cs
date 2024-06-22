using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;
using Datos;
namespace Negocio
{
    public class ABMLMedico
    {
        public DataTable cargartabla()
        {
           AccesoDatosMedico datos = new AccesoDatosMedico();
           return datos.Todos_Los_Productos();
        }

    }
}
