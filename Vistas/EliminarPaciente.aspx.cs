using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades;

namespace Vistas
{
    public partial class EliminarPaciente : System.Web.UI.Page
    {
        ABMLPaciente ABMLPaciente;
        protected void Page_Load(object sender, EventArgs e)
        {
            ABMLPaciente = new ABMLPaciente();
            if (!IsPostBack)
            {
                CargarDropDown();
            }
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            if(ddlPacientes.SelectedItem != null)
            {
                if (ABMLPaciente.eliminarPaciente(ddlPacientes.SelectedItem.Value))
                {
                    lblMensaje.Text = "El paciente se elimino correctamente";
                }
                else
                {
                    lblMensaje.Text = "El paciente no se pudo eliminar, verifique los datos ingresados o intentelo luego.";
                }
                CargarDropDown();
            }
            else
            {
                lblMensaje.Text = "No hay registros seleciconados, intentelo más tarde.";
            }
        }
        private void CargarDropDown()
        {
            ddlPacientes.Items.Clear();
            CargadoDDL negocio = new CargadoDDL();
            List<Entidades.Paciente> list = negocio.ObtenerPaciente_el();

            foreach (Entidades.Paciente pac in list)
            {
                ddlPacientes.Items.Add(new ListItem(pac.getNombrePac() + " " + pac.getApellidoPac(),pac.getDNIPac()));
            }
        }
    }
}