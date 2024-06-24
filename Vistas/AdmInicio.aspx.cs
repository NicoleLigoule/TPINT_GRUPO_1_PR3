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
            CargarTABLA();

            // Verificar si el usuario es administrador
            bool esAdmin = false;
            if (Session["esAdmin"] != null)
            {
                esAdmin = (bool)Session["esAdmin"];
            }

            if (!esAdmin)
            {
                Response.Redirect("~/NoAutorizado.aspx");
            }
        }
        protected void CargarTABLA()
        {
            ABMLMedico tabla = new ABMLMedico();
            GridViewMed.DataSource = tabla.cargartablaBaja();
            GridViewMed.DataBind();
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
            
           
        }

        protected void AltaSeleccionado_Click(object sender, EventArgs e)
        {

               ABMLMedico alta = new ABMLMedico();
               int legajo = Convert.ToInt32(Session["Legajo"]);
            if (alta.AltaMedico(legajo)){
                lblMensaje.Text = "se dio de alta corectamente";
            }
               CargarTABLA();
            
        }
    }
}