using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;

namespace Datos
{
    public class AccesoDatos
    {
        private string rutaBDClinica;

        public AccesoDatos()
        {
            rutaBDClinica = "Data Source=localhost\\SQLEXPRESS;Initial Catalog=BDClinica;Integrated Security=True";
        }

        public SqlConnection ObtenerConexion()
        {
            SqlConnection cn = new SqlConnection(rutaBDClinica);
            try
            {
                cn.Open();
                return cn;
            }
            catch (Exception ex)
            {
                return null;
            }
        }

        public SqlDataAdapter ObtenerAdaptador(string consulta)
        {
            SqlDataAdapter adapta;

            try
            {
                adapta = new SqlDataAdapter(consulta, ObtenerConexion());

                return adapta;

            }
            catch (Exception e)
            {
                return null;
            }
        }

        public DataTable getTabla(String nombre, String consulta)
        {
            DataSet ds = new DataSet();
            SqlDataAdapter adp = ObtenerAdaptador(consulta);
            adp.Fill(ds, nombre);
            return ds.Tables[nombre];
        }

        public DataTable getSimpleTable(String nombre)
        {
            DataSet ds = new DataSet();
            string consulta = "SELECT * FROM " + nombre;
            SqlDataAdapter adp = ObtenerAdaptador(consulta);
            adp.Fill(ds, nombre);
            return ds.Tables[nombre];
        }

        public SqlDataReader obtenerReadDDLEspecialidad()
        {
            try
            {
                string consulta = "SELECT Nombre_esp,ID_esp FROM dbo.Especialidad";
                AccesoDatos acceso = new AccesoDatos();
                SqlConnection conexion = acceso.ObtenerConexion();

                SqlCommand commandEsp = new SqlCommand(consulta, conexion);

                SqlDataReader reader = commandEsp.ExecuteReader();
                return reader;
            }
            catch (Exception e)
            {

                return null;
            }
        }

        public SqlDataReader obtenerReadDDLProvincia()
        {
            try
            {
                string consulta = "SELECT Nombre_prov,ID_prov FROM dbo.Provincia";
                AccesoDatos acceso = new AccesoDatos();
                SqlConnection conexion = acceso.ObtenerConexion();

                SqlCommand commandprov = new SqlCommand(consulta, conexion);

                SqlDataReader reader = commandprov.ExecuteReader();
                return reader;
            }
            catch (Exception e)
            {

                return null;
            }
        }

        public SqlDataReader obtenerReadDDLLocalidad()
        {
            try
            {
                string consulta = "SELECT Nombre_loca,ID_loca FROM dbo.Localidad";
                AccesoDatos acceso = new AccesoDatos();
                SqlConnection conexion = acceso.ObtenerConexion();

                SqlCommand commandLoca = new SqlCommand(consulta, conexion);

                SqlDataReader reader = commandLoca.ExecuteReader();
                return reader;
            }
            catch (Exception e)
            {

                return null;
            }
        }


    }
}
