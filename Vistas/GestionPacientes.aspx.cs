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
        private ABMLPaciente ABMLPaciente;
        private String eleccionDelFiltrado;
        private String parametro;
        public GestionPacientes()
        {
            if(ABMLPaciente == null)
            {
                ABMLPaciente = new ABMLPaciente();
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            cargarGrvPacientes();
        }

        protected void cargarGrvPacientes()
        {
            eleccionDelFiltrado = FiltradoPor.eleccionDelFiltrado;
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

            grvPacientes.DataSource = ABMLPaciente.cargartablaPaciente(eleccionDelFiltrado, parametro);
            grvPacientes.DataBind();
        }

        protected void grvPacientes_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grvPacientes.PageIndex = e.NewPageIndex;
            grvPacientes.DataBind();
        }

        protected void grvPacientes_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            Session["Editar"] = ((Label)grvPacientes.Rows[e.NewSelectedIndex].FindControl("lbl_DNIpc")).Text;
            hplEditarSeleccionado.Visible = true;
        }

        protected void grvPacientes_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                DateTime fechaNacimiento = Convert.ToDateTime(DataBinder.Eval(e.Row.DataItem, "FechaNacimiento_pc"));
                //e.Row.Cells[7].Text = fechaNacimiento.ToString("yyyy-MM-dd");
                Label lblFechaNac = e.Row.FindControl("lbl_Fechapc") as Label;
                if (lblFechaNac != null)
                {
                    lblFechaNac.Text = fechaNacimiento.ToString("yyyy-MM-dd");
                }
            }
        }
    }
}