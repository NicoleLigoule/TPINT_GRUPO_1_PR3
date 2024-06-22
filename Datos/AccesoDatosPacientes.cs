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
    public class AccesoDatosPacientes
    {
        private AccesoDatos Datos;

        public AccesoDatosPacientes()
        {
            if (Datos == null)
            {
                Datos = new AccesoDatos();
            }
        }

        private DataTable Traer_tablaPaciente(string Nombre, string SQl)
        {
            DataSet dts = new DataSet();

            SqlDataAdapter adaptador = Datos.ObtenerAdaptador(SQl);
            adaptador.Fill(dts, Nombre);
            return dts.Tables[Nombre];

        }
        public DataTable Todos_Los_Pacientes()
        {
            /*
                TODO: corregir query (provincia):
             */
            return Traer_tablaPaciente("Medicos", "SELECT DNI_pc, Nombre_pc, Apellido_pc, Sexo_pc, Nacionalidad_pc, FechaNacimiento_pc, Direccion_pc, Nombre_loca,Nombre_prov, CorreoElectronico_pc, Telefono_pc FROM Paciente INNER JOIN Provincia ON Paciente.Provincia_pc = Provincia.ID_prov INNER JOIN Localidad ON Paciente.Localidad_pc = Localidad.ID_loca;");
        }

        public int sp_insertar_paciente(Paciente paciente)
        {
            
            SqlCommand cmd = new SqlCommand();

            crearParametrosAgregar(ref cmd, paciente);

            return Datos.EjecutarProcedimientoAlmacenado(cmd, "INSERTAR_PACIENTE");
        }

        private void crearParametrosAgregar(ref SqlCommand cmd, Paciente p)
        {
            SqlParameter sqlParameter = new SqlParameter();

            sqlParameter = cmd.Parameters.Add("@DNI_pc", SqlDbType.VarChar);
            sqlParameter.Value = p.getDNIPac();

            sqlParameter = cmd.Parameters.Add("@Nombre_pc", SqlDbType.VarChar);
            sqlParameter.Value = p.getNombrePac();

            sqlParameter = cmd.Parameters.Add("@Apellido_pc", SqlDbType.VarChar);
            sqlParameter.Value = p.getApellidoPac();

            sqlParameter = cmd.Parameters.Add("@Sexo_pc", SqlDbType.VarChar);
            sqlParameter.Value = p.getSexoPac();

            sqlParameter = cmd.Parameters.Add("@Nacionalidad_pc", SqlDbType.VarChar);
            sqlParameter.Value = p.getNacionalidadPac();

            sqlParameter = cmd.Parameters.Add("@FechaNacimiento_pc", SqlDbType.Date);
            sqlParameter.Value = p.getFechaPac();

            sqlParameter = cmd.Parameters.Add("@Direccion_pc", SqlDbType.VarChar);
            sqlParameter.Value = p.getDireccionPac();

            sqlParameter = cmd.Parameters.Add("@Localidad_pc", SqlDbType.Int);
            sqlParameter.Value = p.getLocaPac();

            sqlParameter = cmd.Parameters.Add("@CorreoElectronico_pc", SqlDbType.VarChar);
            sqlParameter.Value = p.getCorreoPac();

            sqlParameter = cmd.Parameters.Add("@Telefono_pc", SqlDbType.VarChar);
            sqlParameter.Value = p.getTelefonoPac();
        }

        public Boolean existePaciente(Paciente paciente)
        {
            string consulta = "SELECT * FROM Paciente p WHERE p.DNI_pc = '" + paciente.getDNIPac() + "';";
            return Datos.existe(consulta);
        }
    }
}
