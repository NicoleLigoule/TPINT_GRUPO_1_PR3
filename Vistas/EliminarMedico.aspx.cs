using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using Entidades;

namespace Vistas
{
    public partial class EliminarMedico : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                CargarDropDown();
            }
        }


        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            if (ddlMedico.SelectedItem != null)
            {
                ABMLMedico alta = new ABMLMedico();
                int legajo = int.Parse(ddlMedico.SelectedItem.Value);
                if (alta.bajaMedico(legajo))
                {
                    lblMensaje.Text = "Medico dado de baja correctamente";
                    CargarDropDown();
                }
            }
            else
            {
                lblMensaje.Text = "No hay registros seleciconados, intentelo más tarde.";
            }
        }

        private void CargarDropDown()
        {
            ddlMedico.Items.Clear();
            CargadoDDL negocio = new CargadoDDL();
            List<Medico> list = negocio.ObtenerMEdicos();

            foreach (Medico medico in list)
            {
                ddlMedico.Items.Add(new ListItem(medico.getNombreMed() + " " + medico.getApellidoMed(), medico.getLegajoMed().ToString()));
            }
        }
    }

}