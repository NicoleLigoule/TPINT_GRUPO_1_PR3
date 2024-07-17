using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;
using Entidades;

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
                Console.WriteLine($"error: {ex.Message}");
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
                Console.WriteLine($"error: {e.Message}");
                return null;
            }
        }

        public DataTable getSimpleTable(String nombre)
        {
            DataSet ds = new DataSet();
            string consulta = "SELECT * FROM " + nombre;
            SqlDataAdapter adp = ObtenerAdaptador(consulta);
            adp.Fill(ds, nombre);
            return ds.Tables[nombre];
        }

        public List<Especialidad> ObtenerEspecialidad()
        {
            List<Especialidad> Especialidades = new List<Especialidad>();
            string consulta = "SELECT ID_esp, Nombre_esp FROM dbo.Especialidad";

            AccesoDatos acceso = new AccesoDatos();
            SqlConnection conexion = acceso.ObtenerConexion();

            SqlCommand commandprov = new SqlCommand(consulta, conexion);

            SqlDataReader reader = commandprov.ExecuteReader();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    int id_especialidad = reader.GetInt32(0);
                    string nombre_especialidad = reader.GetString(1);
                    Especialidad prov = new Especialidad(id_especialidad, nombre_especialidad);

                    if (!Especialidades.Contains(prov))
                    {
                        Especialidades.Add(prov);

                    }
                }
            }
            return Especialidades;
        }

        public List<Provincia> ObtenerProvincias()
        {
            List<Provincia> provincias = new List<Provincia>();
            string consulta = "SELECT ID_prov,Nombre_prov FROM dbo.Provincia";

            // provincias.Add(new Provincia("0", "--seleccione--"));

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

        public List<Localidad> ObtenerLocalidad(string ID_prov)
        {
            List<Localidad> Localidades = new List<Localidad>();
            string consulta = "SELECT ID_loca,Nombre_loca FROM dbo.Localidad WHERE dbo.Localidad.IDProv_loca=" + ID_prov;

            //  Localidades.Add(new Localidad("0", "--seleccione--"));
            AccesoDatos acceso = new AccesoDatos();
            SqlConnection conexion = acceso.ObtenerConexion();

            SqlCommand commandprov = new SqlCommand(consulta, conexion);

            SqlDataReader reader = commandprov.ExecuteReader();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    int id_localidad = reader.GetInt32(0);
                    string DescripcionProvincia = reader.GetString(1);
                    Localidad prov = new Localidad(id_localidad.ToString(), DescripcionProvincia);

                    if (!Localidades.Contains(prov))
                    {
                        Localidades.Add(prov);

                    }
                }
            }
            return Localidades;
        }



        public int EjecutarProcedimientoAlmacenado(SqlCommand Comando, String NombreSP)
        {
            int FilasCambiadas;
            SqlConnection Conexion = ObtenerConexion();
            SqlCommand cmd = new SqlCommand();
            cmd = Comando;
            cmd.Connection = Conexion;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = NombreSP;
            FilasCambiadas = cmd.ExecuteNonQuery();
            Conexion.Close();
            return FilasCambiadas;
        }


        public Boolean existe(String consulta)
        {
            Boolean estado = false;
            SqlConnection Conexion = ObtenerConexion();
            SqlCommand cmd = new SqlCommand(consulta, Conexion);
            SqlDataReader datos = cmd.ExecuteReader();
            if (datos.Read())
            {
                estado = true;
            }
            return estado;
        }

        public List<Medico> ObtenerMEdicos_horarios()
        {
            List<Medico> medicos = new List<Medico>();
            string consulta = "SELECT Legajo_me,Nombre_me,Apellido_me FROM dbo.Medico where Estado_me=1";

            //  medicos.Add(new Medico(0, "--seleccione--",""));

            AccesoDatos acceso = new AccesoDatos();
            SqlConnection conexion = acceso.ObtenerConexion();

            SqlCommand commandprov = new SqlCommand(consulta, conexion);

            SqlDataReader reader = commandprov.ExecuteReader();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    int Legajo = reader.GetInt32(0);
                    string Nombre = reader.GetString(1);
                    string apellido = reader.GetString(2);
                    Medico prov = new Medico(Legajo, Nombre, apellido);

                    if (!medicos.Contains(prov))
                    {
                        medicos.Add(prov);

                    }
                }
            }
            return medicos;
        }

        public List<Medico> ObtenerMEdicoCargaTunros(int especialida)
        {
            List<Medico> medicos = new List<Medico>();
            string consulta = "SELECT Legajo_me,Nombre_me,Apellido_me FROM dbo.Medico where Estado_me=1 and Especialidad_me=" + especialida.ToString();

            AccesoDatos acceso = new AccesoDatos();
            SqlConnection conexion = acceso.ObtenerConexion();

            SqlCommand commandprov = new SqlCommand(consulta, conexion);

            SqlDataReader reader = commandprov.ExecuteReader();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    int Legajo = reader.GetInt32(0);
                    string Nombre = reader.GetString(1);
                    string apellido = reader.GetString(2);
                    Medico prov = new Medico(Legajo, Nombre, apellido);

                    if (!medicos.Contains(prov))
                    {
                        medicos.Add(prov);

                    }
                }
            }
            return medicos;
        }
        public List<Turno> ObtenerFecha_cargaTurno(int Legajomed)
        {
            List<Turno> fecha = new List<Turno>();
            string consulta = "select Fecha_tu,Legajo_tu,DiaAtencion_ha from Turnos where Legajo_tu=" + Legajomed.ToString() + " and (DniPaciente_tu IS NULL OR LEN(DniPaciente_tu) = 0)";

            AccesoDatos acceso = new AccesoDatos();
            SqlConnection conexion = acceso.ObtenerConexion();

            SqlCommand commandprov = new SqlCommand(consulta, conexion);

            SqlDataReader reader = commandprov.ExecuteReader();
            if (reader.HasRows)
            {
                while (reader.Read())
                {


                    DateTime fecha_ = reader.GetDateTime(0);
                    string fechaComoString = fecha_.ToString("yyyy-MM-dd");
                    int Legajo = reader.GetInt32(1);
                    string dia = reader.GetString(2);
                    dia = dia + " " + fecha_.ToString("dd-MM");
                    Turno _fehca = new Turno(fechaComoString, Legajo, dia);

                    if (!fecha.Contains(_fehca))
                    {
                        fecha.Add(_fehca);

                    }
                }
            }
            return fecha;
        }
        public List<Turno> ObtenerHorarios_cargaTurno(int Legajomed, string fecha_)
        {
            List<Turno> fecha = new List<Turno>();
            string consulta = "select Horario_tu, Legajo_tu from Turnos where Legajo_tu=" + Legajomed.ToString() + " and (DniPaciente_tu IS NULL OR LEN(DniPaciente_tu) = 0) AND Fecha_tu='" + fecha_ + "' ";

            AccesoDatos acceso = new AccesoDatos();
            SqlConnection conexion = acceso.ObtenerConexion();

            SqlCommand commandprov = new SqlCommand(consulta, conexion);

            SqlDataReader reader = commandprov.ExecuteReader();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    int Legajo = reader.GetInt32(1);
                    int horario = reader.GetInt32(0);

                    Turno _fehca = new Turno(Legajo, horario);

                    if (!fecha.Contains(_fehca))
                    {
                        fecha.Add(_fehca);

                    }
                }
            }
            return fecha;
        }
        public List<Paciente> ObtenerPacientes_eliminar()
        {
            List<Paciente> Paciente = new List<Paciente>();
            string consulta = "SELECT DNI_pc,Nombre_pc,Apellido_pc FROM dbo.Paciente where Estado_pc=1";



            AccesoDatos acceso = new AccesoDatos();
            SqlConnection conexion = acceso.ObtenerConexion();

            SqlCommand commandprov = new SqlCommand(consulta, conexion);

            SqlDataReader reader = commandprov.ExecuteReader();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    string Legajo = reader.GetString(0);
                    string Nombre = reader.GetString(1);
                    string apellido = reader.GetString(2);
                    Paciente pac = new Paciente(Legajo, Nombre, apellido);

                    if (!Paciente.Contains(pac))
                    {
                        Paciente.Add(pac);

                    }
                }
            }
            return Paciente;
        }

        public List<Usuario> Obtener_Usuarios()
        {
            List<Usuario> Paciente = new List<Usuario>();
            string consulta = "SELECT Legajo_us, Usuario_us FROM dbo.Usuario ";



            AccesoDatos acceso = new AccesoDatos();
            SqlConnection conexion = acceso.ObtenerConexion();

            SqlCommand commandprov = new SqlCommand(consulta, conexion);

            SqlDataReader reader = commandprov.ExecuteReader();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    int Legajo = reader.GetInt32(0);
                    string Nombre = reader.GetString(1);
                    Usuario us = new Usuario(Legajo.ToString(), Nombre);

                    if (!Paciente.Contains(us))
                    {
                        Paciente.Add(us);

                    }
                }
            }
            return Paciente;
        }
    }
}

