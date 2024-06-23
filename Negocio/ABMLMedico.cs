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
           return datos.Todos_Los_Medicos_Alta();
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

        public bool AltaMedico(int legajo)
        {
            int cantFilas = 0;
            AccesoDatosMedico datos = new AccesoDatosMedico();

              cantFilas = datos.AltaMedico(legajo);
            

            return cantFilas == 1;
        }
        public bool bajaMedico(int legajo)
        {
            int cantFilas = 0;
            AccesoDatosMedico datos = new AccesoDatosMedico();

            cantFilas = datos.bAJAMedico(legajo);
            return cantFilas == 1;
        }

        public DataTable cargartablaBaja()
        {
            AccesoDatosMedico datos = new AccesoDatosMedico();
            return datos.Todos_Los_Medicos_Baja();
        }
    }

}
