using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using Entidades;
namespace Datos
{
    public class DatoProvincia
    {
        public List<Provincia> ObtenerProvincias()
        {
            List<Provincia> provincias = new List<Provincia>();
            string consulta = "SELECT Id_Provincia, DescripcionProvincia FROM dbo.Provincia";

            AccesoDatos acceso = new AccesoDatos();
            SqlConnection conexion = acceso.ObtenerConexion();

            SqlCommand commandprov = new SqlCommand(consulta, conexion);

            SqlDataReader reader = commandprov.ExecuteReader();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    int id_provincia = reader.GetInt32(0);
                    string DescripcionProvincia = reader.GetString(1);
                    Provincia prov = new Provincia(id_provincia, DescripcionProvincia);

                    if (!provincias.Contains(prov))
                    {
                        provincias.Add(prov);

                    }
                }
            }
            return provincias;
        }
    }
}
