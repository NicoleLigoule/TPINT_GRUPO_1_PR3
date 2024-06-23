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
    public partial class AdmInicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ABMLMedico tabla = new ABMLMedico();
            GridViewMed.DataSource = tabla.cargartablaBaja();
            GridViewMed.DataBind();
            //// TO-DO: Necesitamos verificar si el usuario es administrador antes de mostrarle esta página ya que sino puede acceder desde cualquier lado
            //if (!User.IsInRole("Administrador"))
            //{
            //    // TO-DO: Si no es admin, redireccionarlo a otra página que sea un aviso.
            //    Response.Redirect("PaginaNoAutorizada.aspx");
            //}
        }
        protected void GridViewMedicos1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridViewMed.PageIndex = e.NewPageIndex;
            ABMLMedico tabla = new ABMLMedico();
            GridViewMed.DataSource = tabla.cargartabla();
            GridViewMed.DataBind();
        }

        protected void GridViewMed_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            Session["Legajo"] = ((Label)GridViewMed.Rows[e.NewSelectedIndex].FindControl("lblLegajo")).Text;
            Session["Dni"] = ((Label)GridViewMed.Rows[e.NewSelectedIndex].FindControl("lblDni")).Text;
        }

        protected void AltaSeleccionado_Click(object sender, EventArgs e)
        {

            if (Session["Legajo"] != null && Session["Dni"] != null)
            {
                Medico med = new Medico();
                ABMLMedico alta = new ABMLMedico();
                med.setLegajoMed(Convert.ToInt32(Session["Legajo"]));
                med.setDniMed(Session["Dni"].ToString());
                alta.AltaMedico(med);
            }
        }
    }
}