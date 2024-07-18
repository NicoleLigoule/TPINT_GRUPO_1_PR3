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
        private Negocio.Reportes reportes;

        public Reportes()
        {
            if (reportes == null)
            {
                reportes = new Negocio.Reportes();
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cargarLblReportes();
            }
        }


        private void cargarLblReportes()
        {
            lblMedicoConMasAtenciones.Text = reportes.MedicoConMasAtenciones();
            lblEspecialidadQueMasSeUso.Text = reportes.especialidadQueMasSeUso();
            lblapcienteConMasCancelaciones.Text = reportes.pacienteConMasCancelaciones();
            lblLocalidadConMasPacientes.Text = reportes.pacienteLocalidadConMasPacientes();

            lblEspecialidadMes.Text = "Especialidades con mayor concurrencia por mes:";
            lblEspecialidadMesdata.Text = reportes.mesConMayorConcurrenciaPorEspecialidad();
        }
    }
}