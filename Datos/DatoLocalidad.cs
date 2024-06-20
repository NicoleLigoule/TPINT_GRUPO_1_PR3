using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades;

namespace Datos
{
    public class DatoLocalidad
    {
        public List<Localidad> ObtenerLocalidades()
        {
            List<Localidad> localidades = new List<Localidad>();

            string consulta = "SELECT ID_loca, IDProv_loca, Nombre_loca FROM dbo.Localidad";

            AccesoDatos acceso = new AccesoDatos();
            SqlConnection con = acceso.ObtenerConexion();
            SqlCommand sqlCommand = new SqlCommand(consulta, con);
            SqlDataReader reader = sqlCommand.ExecuteReader();

            if(reader.HasRows)
            {
                while(reader.Read())
                {
                    string id_localidad = reader.GetString(0);
                    string id_provincia = reader.GetString(1);
                    string nombre_localidad = reader.GetString(2);
                    Localidad localidad = new Localidad(id_localidad, id_provincia, nombre_localidad);

                    if (!localidades.Contains(localidad))
                    {
                        localidades.Add(localidad);
                    }
                }
            }

            return localidades;
        }
    }
}
