using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;

namespace Vistas
{
    public partial class GestionPacientes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ABMLPaciente pac = new ABMLPaciente();
            grvPacientes.DataSource = pac.cargartablaPaciente();
            grvPacientes.DataBind();
        }

        protected void grvPacientes_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grvPacientes.PageIndex = e.NewPageIndex;
            ABMLPaciente tabla = new ABMLPaciente();
            grvPacientes.DataSource = tabla.cargartablaPaciente();
            grvPacientes.DataBind();
        }

        protected void grvPacientes_RowEditing(object sender, GridViewEditEventArgs e)
        {
            ABMLPaciente tabla = new ABMLPaciente();
            grvPacientes.EditIndex = e.NewEditIndex;
            grvPacientes.DataSource = tabla.cargartablaPaciente();
        }

        protected void grvPacientes_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            grvPacientes.EditIndex = -1;
            ABMLPaciente tabla = new ABMLPaciente();
            grvPacientes.DataSource = tabla.cargartablaPaciente();
        }

    }
}