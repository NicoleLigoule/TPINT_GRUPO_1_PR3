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

        protected void grvPacientes_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            Session["Editar"] = ((Label)grvPacientes.Rows[e.NewSelectedIndex].FindControl("lbl_DNIpc")).Text;
            

        }
    }
}