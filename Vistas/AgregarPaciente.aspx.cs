using Entidades;
using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Vistas
{
    public partial class Paciente : System.Web.UI.Page
    {
        private ABMLPaciente ABMLPaciente;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

                ABMLPaciente = new ABMLPaciente();
                CargarDropDown();
            }

            CargarDropDownLocalidad(ddlProvincia.SelectedItem.Value);
        }
        private void CargarDropDown()
        {
            CargadoDDL negocioProvincia = new CargadoDDL();
            List<Provincia> list = negocioProvincia.ObtenerProvinciasDDL();

            foreach (Provincia provincia in list)
            {
                ddlProvincia.Items.Add(new ListItem(provincia.GetDescripcionProvincia(), provincia.GetIdProvincia().ToString()));
            }
            List<genero> list3 = negocioProvincia.CargarListaGeneros();

            foreach (genero genero in list3)
            {
                ddlSexoPac.Items.Add(new ListItem(genero.GetNombreGenero(), genero.GetIndice().ToString()));
            }
        }
        private void CargarDropDownLocalidad(string id)
        {
            ddlLocalidad.Items.Clear();
            CargadoDDL negocioProvincia = new CargadoDDL();
            List<Localidad> list = negocioProvincia.ObtenerLOcalidadesDDL(id);

            foreach (Localidad provincia in list)
            {
                ddlLocalidad.Items.Add(new ListItem(provincia.getNombre_localidad(), provincia.getId_localidad().ToString()));
            }
        }

        protected void limpiarCamposPac()
        {
            txtNombrePac.Text = "";
            txtApellidoPac.Text = "";
            txtNacionalidad.Text = "";
            txtFechaNac.Text = "";
            txtDireccionPac.Text = "";
            txtCorreoElectronicoPac.Text = "";
            txtTelefonoPac.Text = "";
            ddlSexoPac.SelectedIndex = 1;
            ddlProvincia.SelectedIndex = 1;
            ddlLocalidad.SelectedIndex = 1;
        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            ABMLPaciente pac = new ABMLPaciente();
            Entidades.Paciente paciente = new Entidades.Paciente(

                            txtDniPac.Text,
                            txtNombrePac.Text,
                            txtApellidoPac.Text,
                            int.Parse(ddlLocalidad.SelectedItem.Value),
                            ddlSexoPac.SelectedItem.Text,
                            txtNacionalidad.Text,
                            txtFechaNac.Text,
                            txtDireccionPac.Text,
                            txtCorreoElectronicoPac.Text,
                            txtTelefonoPac.Text,
                            int.Parse(ddlProvincia.SelectedItem.Value)


                );

            if (pac.agregarPaciente(paciente))
            {
                lblMensaje.Text = "El paciente se agregó correctamente.";
                limpiarCamposPac();
            }
            else
            {
                lblMensaje.Text = "El paciente no se pudo agregar, revise los datos ingresados o intente luego.";
            }
        }
    }
}