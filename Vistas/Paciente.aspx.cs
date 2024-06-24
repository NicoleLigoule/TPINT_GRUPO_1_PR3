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
                ABMLPaciente = new ABMLPaciente();
                CargarDropDown();
            }
            else
            {
                CargarDropDownLocalidad(ddlProvincia.SelectedItem.Value);
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
        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            Entidades.Paciente paciente = new Entidades.Paciente(
                    txtDniPac.Text,
                    txtNombrePac.Text,
                    txtApellidoPac.Text,
                    1,
                    ddlSexoPac.SelectedItem.Text, // Sexo (ddl)
                    txtNacionalidad.Text,
                    txtFechaNac.Text, // Fecha Nac.
                    txtDireccionPac.Text,
                    txtCorreoElectronicoPac.Text,
                    txtTelefonoPac.Text,
                    int.Parse(ddlProvincia.SelectedItem.Value)
                    
                ) ;

            if (ABMLPaciente.agregarPaciente(paciente))
            {
                lblMensaje.Text = "El paciente se agregó correctamente.";
            }
            else
            {
                lblMensaje.Text = "El paciente no se pudo agregar, revise los datos ingresados o intente luego.";
            }
        }
    }
}