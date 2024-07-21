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
        private ABMLMedico ABMLMedico;
        private String eleccionDelFiltrado;
        private String parametro;

        public GestionMedico()
        {
            if (ABMLMedico == null)
            {
                ABMLMedico = new ABMLMedico();
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            cargarGrvMedicos(); 
        }

        protected void cargarGrvMedicos()
        {
            eleccionDelFiltrado =  FiltradoPor.eleccionDelFiltrado;
            parametro = null;

            switch (eleccionDelFiltrado)
            {
                case "Sexo":
                    parametro = FiltradoPor.sexo;
                    break;
                case "Nombre":
                    parametro = FiltradoPor.textoBusqueda;
                    break;
                case "Provincia":
                    parametro = FiltradoPor.provincia;
                    break;
                default:
                    parametro = "";
                    break;
            }

            GridViewMedicos1.DataSource = ABMLMedico.cargartabla(eleccionDelFiltrado, parametro);
            GridViewMedicos1.DataBind();
        }

        protected void GridViewMedicos1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridViewMedicos1.PageIndex = e.NewPageIndex;
            GridViewMedicos1.DataBind();
        }

        protected void GridViewMedicos1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            Session["Editar"] = ((Label)GridViewMedicos1.Rows[e.NewSelectedIndex].FindControl("lblDni")).Text;
            Session["LegajoMedico"] = ((Label)GridViewMedicos1.Rows[e.NewSelectedIndex].FindControl("lblLegajo")).Text;
            hplEditarSeleccionado.Visible = true;
        }

        protected void GridViewMedicos1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                DateTime fechaNacimiento = Convert.ToDateTime(DataBinder.Eval(e.Row.DataItem, "FechaNacimiento_me"));
                //e.Row.Cells[7].Text = fechaNacimiento.ToString("yyyy-MM-dd");
                Label lblFechaNac = e.Row.FindControl("lblFechaNac") as Label;
                if (lblFechaNac != null)
                {
                    lblFechaNac.Text = fechaNacimiento.ToString("yyyy-MM-dd");
                }
            }
        }
    }
}