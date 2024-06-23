using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;
using Datos;
using Entidades;
namespace Negocio
{
    public class ABMLMedico
    {
        public DataTable cargartabla()
        {
           AccesoDatosMedico datos = new AccesoDatosMedico();
           return datos.Todos_Los_Productos();
        }
        public bool agregarMedico(Medico medico)
        {
            int cantFilas = 0;
            AccesoDatosMedico datos = new AccesoDatosMedico();

            if (!datos.existeMedico(medico))
            {
                cantFilas = datos.agregar(medico);
            }

            return cantFilas == 1;
        }
    }

}
