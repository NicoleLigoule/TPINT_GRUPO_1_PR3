using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vistas
{
    public partial class FiltradoPor : System.Web.UI.UserControl
    {
        private ABMLPaciente ABMLPaciente;

        public FiltradoPor()
        {
            if (ABMLPaciente == null)
            {
                ABMLPaciente = new ABMLPaciente();
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cargarddlTipoFiltro();
                cargarddSexo();
                cargarDdlProvincias();
            }
            vistaDdlSexo();

        }

        protected void cargarddlTipoFiltro()
        {
            ddlTipoFiltro.Items.Add("");
            ddlTipoFiltro.Items.Add("Nombre");
            ddlTipoFiltro.Items.Add("Provincia");
            ddlTipoFiltro.Items.Add("Sexo");
        }

        protected void cargarddSexo()
        {
            DdlSexo.Items.Add("Masculino");
            DdlSexo.Items.Add("Femenino");
            DdlSexo.Items.Add("Otros");
        }

        protected void cargarDdlProvincias()
        {
            ddlProvincias.DataSource = ABMLPaciente.cargartablaPaciente();
            ddlProvincias.DataTextField = "Nombre_loca";
            ddlProvincias.DataBind();
        }

        protected void vistaDdlSexo()
        {
            String eleccionDelFiltrado = ddlTipoFiltro.SelectedValue;

            switch (eleccionDelFiltrado)
            {
                case "":
                    ddlProvincias.Visible = false;
                    DdlSexo.Visible = false;
                    txtBusqueda.Visible = false;
                    btnBuscar.Visible = false;
                    break;
                case "Sexo":
                    ddlProvincias.Visible = false;
                    DdlSexo.Visible = true;
                    txtBusqueda.Visible = false;
                    btnBuscar.Visible = true;
                    break;
                case "Provincia":
                    ddlProvincias.Visible = true;
                    DdlSexo.Visible = false;
                    txtBusqueda.Visible = false;
                    btnBuscar.Visible = true;
                    break;
                default:
                    ddlProvincias.Visible = false;
                    DdlSexo.Visible = false;
                    txtBusqueda.Visible = true;
                    btnBuscar.Visible = true;
                    break;
            }
        }

        public string eleccionDelFiltrado => ddlTipoFiltro.SelectedValue;
        public string textoBusqueda => txtBusqueda.Text;
        public string sexo => DdlSexo.SelectedValue;
        public string provincia => ddlProvincias.SelectedValue;
    }
}