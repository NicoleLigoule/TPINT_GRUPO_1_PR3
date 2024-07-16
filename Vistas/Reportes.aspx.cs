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

        public Reportes()
        {
            if (medicoReportes == null)
            {
                medicoReportes = new ABMLMedico();
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            lblMedicoConMasAtenciones.Text = medicoReportes.MedicoConMasAtenciones();
        }
    }
}