using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vistas
{
    public partial class EliminarPaciente : System.Web.UI.Page
    {
        ABMLPaciente ABMLPaciente;
        protected void Page_Load(object sender, EventArgs e)
        {
            ABMLPaciente = new ABMLPaciente();
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            if (ABMLPaciente.eliminarPaciente(txtEliminar.Text))
            {
                lblMensaje.Text = "El paciente se elimino correctamente";
            }
            else
            {
                lblMensaje.Text = "El paciente no se pudo eliminar, verifique los datos ingresados o intentelo luego.";
            }

            txtEliminar.Text = "";
        }
    }
}