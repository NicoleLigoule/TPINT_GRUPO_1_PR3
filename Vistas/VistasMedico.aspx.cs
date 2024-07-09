using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;

namespace Vistas
{
    public partial class VistasMedico : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TurnoAtencion tabla = new TurnoAtencion();
            grdTurnoMedico.DataSource = tabla.cargartablaTurnos();
            grdTurnoMedico.DataBind();


        }

        protected void grdTurnoMedico_RowEditing(object sender, GridViewEditEventArgs e)
        {
            grdTurnoMedico.EditIndex = e.NewEditIndex;
            TurnoAtencion tabla = new TurnoAtencion();
            grdTurnoMedico.DataSource = tabla.cargartablaTurnos();
        }
    }
}