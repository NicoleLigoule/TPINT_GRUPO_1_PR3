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
    public partial class HorariosDeMedicos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CargarDropDown();
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
    }
}