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
    public partial class AsignarTurno : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarEspecialidad();
            }
            Cargarmedico(ddlEspecialidad.SelectedItem.Value);
            CargaFecha(ddlMedico.SelectedItem.Value);
        }

        private void CargarEspecialidad()
        {
            CargadoDDL negocioProvincia = new CargadoDDL();
            List<Especialidad> list4 = negocioProvincia.ObtenerEspecialidadDDL();

            foreach (Especialidad Especialidades in list4)
            {
                ddlEspecialidad.Items.Add(new ListItem(Especialidades.getNombre_especialidad(), Especialidades.getId_especialidad().ToString()));
            }
        }
        private void Cargarmedico(string especialidad)
        {
            ddlMedico.Items.Clear();
            CargadoDDL negocio = new CargadoDDL();
            List<Medico> list = negocio.ObtenerMEdico_Turnos(especialidad);

            foreach (Medico medico in list)
            {
                ddlMedico.Items.Add(new ListItem(medico.getNombreMed() + " " + medico.getApellidoMed(), medico.getLegajoMed().ToString()));
            }
        }
        private void CargaFecha(string lejmed)
        {
            ddlDiaDeAtencion.Items.Clear();
            CargadoDDL negocio = new CargadoDDL();
            List<Turno> list = negocio.ObtenerFechas_Turnos(lejmed);

            foreach (Turno fecha in list)
            {
                ddlDiaDeAtencion.Items.Add(new ListItem(fecha.GetDiaAtencion() +""+fecha.Getfecha(), fecha.Getfecha()));
            }
        }
    }
}