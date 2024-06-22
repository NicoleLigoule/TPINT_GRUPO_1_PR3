using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;

namespace Vistas
{
    public partial class GestionMedico : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ABMLMedico tabla = new ABMLMedico();
            GridViewMedicos1.DataSource = tabla.cargartabla();
            GridViewMedicos1.DataBind();



        }

        protected void GridViewMedicos1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridViewMedicos1.PageIndex = e.NewPageIndex;
            ABMLMedico tabla = new ABMLMedico();
            GridViewMedicos1.DataSource = tabla.cargartabla();
            GridViewMedicos1.DataBind();
        }
    }
}