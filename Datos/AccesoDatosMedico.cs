using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;

namespace Datos
{
    public class AccesoDatosMedico
    {


        private DataTable Traer_tabla(string Nombre, string SQl)
        {
            DataSet dts = new DataSet();
            AccesoDatos Datos = new AccesoDatos();

            SqlDataAdapter adaptador = Datos.ObtenerAdaptador(SQl);
            adaptador.Fill(dts, Nombre);
            return dts.Tables[Nombre];

        }
        public DataTable Todos_Los_Productos()
        {
            return Traer_tabla("Medicos", "SELECT Legajo_me ,DNI_me, Nombre_me, Apellido_me, Sexo_me, Nacionalidad_me , FechaNacimiento_me , Direccion_me , Nombre_loca , Nombre_prov, CorreoElectronico_me, Telefono_me, Nombre_esp FROM (((Medico INNER JOIN Provincia on Medico.Provincia_me = Provincia.ID_prov) INNER JOIN Localidad on Medico.Localidad_me = Localidad.IDProv_loca) INNER JOIN Especialidad on Medico.Especialidad_me = Especialidad.ID_esp)");
        }
    }
}
