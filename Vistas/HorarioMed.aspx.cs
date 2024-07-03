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
    public partial class HorariosDeMedicos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarDropDown();
            }
        }
        private void CargarDropDown()
        {
            CargadoDDL negocio = new CargadoDDL();
            List<Medico> list = negocio.ObtenerMEdicos();

            foreach (Medico medico in list)
            {
                ddlMedico.Items.Add(new ListItem(medico.getNombreMed()+" "+medico.getApellidoMed(), medico.getLegajoMed().ToString()));
            }

            List<Dias> list2 = negocio.CargarListaDias();

            foreach (Dias dias in list2)
            {
                ddlDia.Items.Add(new ListItem(dias.GetNombre(), dias.GetID().ToString()));
            }


        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {

            ABMLMedico AgregarMedico = new ABMLMedico();
            HorarioAtencion horario = new HorarioAtencion(ddlMedico.SelectedItem.Value ,ddlDia.SelectedItem.Text,txtHora.Text);

            if (AgregarMedico.agregarHorarioMedico(horario))
            {

                lblMensaje.Text = "Se agrego correctamente";
            }
            else
            {
                lblMensaje.Text = " No se pudo agregar";
            }
            limpiarcapos();

        }
        protected void limpiarcapos()
        {
            txtHora.Text = "";
        }
    }
}