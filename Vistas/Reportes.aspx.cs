using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;

namespace Vistas
{
    public partial class Reportes : System.Web.UI.Page
    {
        private ABMLMedico medicoReportes;
        private ABMLPaciente pacienteReportes;

        public Reportes()
        {
            if (medicoReportes == null)
            {
                medicoReportes = new ABMLMedico();
            }
            if (pacienteReportes == null)
            {
                pacienteReportes = new ABMLPaciente();
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            lblMedicoConMasAtenciones.Text = medicoReportes.MedicoConMasAtenciones();
            lblEspecialidadQueMasSeUso.Text = medicoReportes.especialidadQueMasSeUso();
            lblapcienteConMasCancelaciones.Text = pacienteReportes.pacienteConMasCancelaciones();
            lblLocalidadConMasPacientes.Text = pacienteReportes.pacienteLocalidadConMasPacientes();
        }
    }
}