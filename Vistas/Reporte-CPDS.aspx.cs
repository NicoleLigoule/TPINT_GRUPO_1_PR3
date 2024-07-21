using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;

namespace Vistas
{
    public partial class Reporte_CPDS : System.Web.UI.Page
    {
        private Negocio.Reportes reportes;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (reportes == null)
            {
                reportes = new Negocio.Reportes();
            }

            if (!IsPostBack)
            {
                cargarLblReportesCPDS();
            }
        }

        private void cargarLblReportesCPDS()
        {
            lblConsultasPorDiaSemana.Text = "Consultas por día de la semana entre fechas:";
            lblFechaDesdeConsultaDiaSemana.Text = "Fecha desde:";
            lblFechaHastaConsultaDiaSemana.Text = "Fecha hasta:";
            lblConsultasPorDiaSemanaData.Text = "Por favor, ingrese las fechas y haga clic en 'Consultar'.";
        }

        protected void btnConsultar_Click(object sender, EventArgs e)
        {
            DateTime fechaDesde, fechaHasta;
            string mensajeError = "Ingrese fechas válidas en formato YYYY-MM-DD.";

            if (DateTime.TryParseExact(txtFechaDesde.Text, "yyyy-MM-dd", null, System.Globalization.DateTimeStyles.None, out fechaDesde) &&
                DateTime.TryParseExact(txtFechaHasta.Text, "yyyy-MM-dd", null, System.Globalization.DateTimeStyles.None, out fechaHasta))
            {
                if (fechaDesde <= fechaHasta)
                {
                    lblConsultasPorDiaSemanaData.Text = reportes.ConsultasPorDiaDeLaSemanaEntreFechas(fechaDesde, fechaHasta);
                }
                else
                {
                    lblConsultasPorDiaSemanaData.Text = "La fecha desde no puede ser mayor que la fecha hasta.";
                }
            }
            else
            {
                lblConsultasPorDiaSemanaData.Text = mensajeError;
            }
        }
    }
}
