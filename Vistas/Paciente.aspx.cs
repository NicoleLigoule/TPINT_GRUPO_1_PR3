using Entidades;
using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vistas
{
    public partial class Paciente : System.Web.UI.Page
    {
        private ABMLPaciente ABMLPaciente;

        protected void Page_Load(object sender, EventArgs e)
        {
            
            ABMLPaciente = new ABMLPaciente();

            /*
             * TODO: Cargar los DropDownList y sumarlos al agregar paciente.
             */
        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            Entidades.Paciente paciente = new Entidades.Paciente(
                    txtDniPac.Text,
                    txtNombrePac.Text,
                    txtApellidoPac.Text,
                    "1", // localidad
                    "Masculino", // Sexo (ddl)
                    "Argentina",
                    "1990-05-20", // Fecha Nac.
                    txtDireccionPac.Text,
                    txtCorreoElectronicoPac.Text,
                    txtTelefonoPac.Text
                );

            if (ABMLPaciente.agregarPaciente(paciente))
            {
                lblMensaje.Text = "El paciente se agregó correctamente.";
            }
            else
            {
                lblMensaje.Text = "El paciente no se pudo agregar, revise los datos ingresados o intente luego.";
            }
        }
    }
}