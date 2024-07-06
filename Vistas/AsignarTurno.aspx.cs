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
                CargarPaciente();
            }
            Cargarmedico(ddlEspecialidad.SelectedItem.Value);
            CargaFecha(ddlMedico.SelectedItem.Value);
            CargaHorario(ddlMedico.SelectedItem.Value, ddlDiaDeAtencion.SelectedItem.Value);
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
                ddlDiaDeAtencion.Items.Add(new ListItem(fecha.GetDiaAtencion() +" "+fecha.Getfecha(), fecha.Getfecha()));
            }
        }
        private void CargaHorario(string lejmed,string fecha_)
        {
            ddlHorario.Items.Clear();
            CargadoDDL negocio = new CargadoDDL();
            List<Turno> list = negocio.ObtenerHorario_Turnos(lejmed,fecha_);

            foreach (Turno fecha in list)
            {
                ddlHorario.Items.Add(new ListItem(fecha.GetHorario().ToString(), fecha.GetLegajo().ToString()));
            }
        }

        private void CargarPaciente()
        {
            ddlPaciente.Items.Clear();
            CargadoDDL negocio = new CargadoDDL();
            List<Entidades.Paciente> list = negocio.ObtenerPaciente_el();

            foreach (Entidades.Paciente pac in list)
            {
                ddlPaciente.Items.Add(new ListItem(pac.getNombrePac() + " " + pac.getApellidoPac(), pac.getDNIPac()));
            }
        }
    }
}