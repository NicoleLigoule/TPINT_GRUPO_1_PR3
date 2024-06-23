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
        public DataTable Todos_Los_Medicos_Alta()
        {
            return Traer_tabla("Medicos", "SELECT Legajo_me ,DNI_me, Nombre_me, Apellido_me, Sexo_me, Nacionalidad_me , FechaNacimiento_me , Direccion_me , Nombre_loca , Nombre_prov, CorreoElectronico_me,  Telefono_me,  Nombre_esp FROM (((Medico INNER JOIN Localidad on Medico.Localidad_me = Localidad.ID_loca)INNER JOIN Provincia on Localidad.IDProv_loca = Provincia.ID_prov)INNER JOIN Especialidad on Medico.Especialidad_me = Especialidad.ID_esp)WHERE Medico.Estado_me=1");
        }

        public DataTable Todos_Los_Medicos_Baja()
        {
            return Traer_tabla("Medicos", "SELECT Legajo_me ,DNI_me, Nombre_me, Apellido_me, Sexo_me, Nacionalidad_me , FechaNacimiento_me , Direccion_me , Nombre_loca , Nombre_prov, CorreoElectronico_me,  Telefono_me,  Nombre_esp FROM (((Medico INNER JOIN Localidad on Medico.Localidad_me = Localidad.ID_loca)INNER JOIN Provincia on Localidad.IDProv_loca = Provincia.ID_prov)INNER JOIN Especialidad on Medico.Especialidad_me = Especialidad.ID_esp)WHERE Medico.Estado_me=0");
        }

        public Boolean existeMedico( Medico med)
        {
            AccesoDatos ds = new AccesoDatos();
            String consulta = "Select * from Medico where Medico.DNI_me =" + med.getDNIMed();
            return ds.existe(consulta);
        }

        public int agregar(Medico med)
        {
            AccesoDatos ds = new AccesoDatos();
            SqlCommand comando = new SqlCommand();
            ArmarParametrosAgregarMedico(ref comando, med);
            return ds.EjecutarProcedimientoAlmacenado(comando, "SP_INSERTAR_Medico");
        }

        private void ArmarParametrosAgregarMedico(ref SqlCommand Comando, Medico Medico)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@DNI_me", SqlDbType.VarChar);
            SqlParametros.Value = Medico.getDNIMed();

            SqlParametros = Comando.Parameters.Add("@Nombre_me", SqlDbType.VarChar);
            SqlParametros.Value = Medico.getNombreMed();

            SqlParametros = Comando.Parameters.Add("@Apellido_me", SqlDbType.VarChar);
            SqlParametros.Value = Medico.getApellidoMed();

            SqlParametros = Comando.Parameters.Add("@Sexo_me", SqlDbType.VarChar);
            SqlParametros.Value = Medico.getSexoMed();
             
            SqlParametros = Comando.Parameters.Add("@Nacionalidad_me", SqlDbType.VarChar);
            SqlParametros.Value = Medico.getNacionalidadMed();

            SqlParametros = Comando.Parameters.Add("@FechaNacimiento_me", SqlDbType.Date);
               
            SqlParametros.Value = Medico.getFechaMed();
                
            SqlParametros = Comando.Parameters.Add("@Direccion_me", SqlDbType.VarChar);
            SqlParametros.Value = Medico.getDireccionMed();

            SqlParametros = Comando.Parameters.Add("@Localidad_me", SqlDbType.Int);
            SqlParametros.Value = Medico.getLocaMed();

            SqlParametros = Comando.Parameters.Add("@CorreoElectronico_me", SqlDbType.VarChar);
            SqlParametros.Value = Medico.getCorreoMed();

            SqlParametros = Comando.Parameters.Add("@Telefono_me", SqlDbType.VarChar);
            SqlParametros.Value = Medico.getTelefonoMed();

            SqlParametros = Comando.Parameters.Add("@Especialidad_me", SqlDbType.Int);
            SqlParametros.Value = Medico.getEspecialidadMed();

            
            }
        private void ParametrosAltaMedica(ref SqlCommand Comando, Medico Medico)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@Legajo_me", SqlDbType.Int);
            SqlParametros.Value = Medico.getLegajoMed();
        }

        public int AltaMedico(Medico med)
        {
            AccesoDatos ds = new AccesoDatos();
            SqlCommand comando = new SqlCommand();
            ParametrosAltaMedica(ref comando, med);
            return ds.EjecutarProcedimientoAlmacenado(comando, "SP_Alta_Medica");
        }
    }

}
