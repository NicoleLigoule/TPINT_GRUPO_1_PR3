using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;

namespace Datos
{
    public class AccesoDatosPacientes
    {
        private DataTable Traer_tablaPaciente(string Nombre, string SQl)
        {
            DataSet dts = new DataSet();
            AccesoDatos Datos = new AccesoDatos();

            SqlDataAdapter adaptador = Datos.ObtenerAdaptador(SQl);
            adaptador.Fill(dts, Nombre);
            return dts.Tables[Nombre];

        }
        public DataTable Todos_Los_Pacientes()
        {
            return Traer_tablaPaciente("Medicos", "SELECT DNI_pc, Nombre_pc, Apellido_pc, Sexo_pc, Nacionalidad_pc, FechaNacimiento_pc, Direccion_pc, Nombre_loca, Nombre_prov, CorreoElectronico_pc, Telefono_pc FROM Paciente INNER JOIN Provincia ON Paciente.Provincia_pc = Provincia.ID_prov INNER JOIN Localidad ON Paciente.Localidad_pc = Localidad.ID_loca;");
        }
    }
}
