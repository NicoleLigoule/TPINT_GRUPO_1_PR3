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
    public partial class EditarMedico : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
                CargarDropDown();
                if (Session["Editar"] != null)
                {
                    txtDni.Text = Session["Editar"].ToString();
                    ABMLMedico med = new ABMLMedico();
                    Medico medico = new Medico();
                    medico = med.traerMedico(Session["Editar"].ToString());
                    txtNombre.Text = medico.getNombreMed();
                    txtApellido.Text = medico.getApellidoMed();
                    string textoBuscado = medico.getSexoMed();
                    ListItem item = ddlSexo.Items.FindByText(textoBuscado);
                    if (item != null)
                    {
                        ddlSexo.SelectedIndex = ddlSexo.Items.IndexOf(item);
                    }
                    txtNacionalidad.Text = medico.getNacionalidadMed();
                    txtFechaNac.Text = medico.getFechaMed();

                    CargarDropDownLocalidad(ddlProvincia.SelectedItem.Value);

                    ddlLocalidades.SelectedIndex = medico.getLocaMed();

                    txtDireccion.Text = medico.getDireccionMed();
                    txtCorreoElectronico.Text = medico.getCorreoMed();
                    txtTelefono.Text = medico.getTelefonoMed();
                    ddlEspecialidad.SelectedIndex = medico.getEspecialidadMed();

                }
            }
            CargarDropDownLocalidad(ddlProvincia.SelectedItem.Value);
        }

        private void CargarDropDown()
        {
            CargadoDDL negocioProvincia = new CargadoDDL();


            List<Provincia> list2 = negocioProvincia.ObtenerProvinciasDDL();

            foreach (Provincia provincia in list2)
            {
                ddlProvincia.Items.Add(new ListItem(provincia.GetDescripcionProvincia(), provincia.GetIdProvincia().ToString()));
            }

            List<genero> list3 = negocioProvincia.CargarListaGeneros();

            foreach (genero genero in list3)
            {
                ddlSexo.Items.Add(new ListItem(genero.GetNombreGenero(), genero.GetIndice().ToString()));
            }

            List<Especialidad> list4 = negocioProvincia.ObtenerEspecialidadDDL();

            foreach (Especialidad Especialidades in list4)
            {
                ddlEspecialidad.Items.Add(new ListItem(Especialidades.getNombre_especialidad(), Especialidades.getId_especialidad().ToString()));
            }
        }

        private void CargarDropDownLocalidad(string id)
        {
            ddlLocalidades.Items.Clear();
            CargadoDDL negocioProvincia = new CargadoDDL();
            List<Localidad> list = negocioProvincia.ObtenerLOcalidadesDDL(id);

            foreach (Localidad provincia in list)
            {
                ddlLocalidades.Items.Add(new ListItem(provincia.getNombre_localidad(), provincia.getId_localidad().ToString()));
            }
        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            ABMLMedico med = new ABMLMedico();
            Medico medico = new Medico(
                txtDni.Text,
                txtNombre.Text,
                txtApellido.Text,
                ddlLocalidades.SelectedItem.Value,
                ddlEspecialidad.SelectedItem.Value,
                ddlSexo.SelectedItem.Text,
                txtNacionalidad.Text,
                txtFechaNac.Text,
                txtDireccion.Text,
                txtCorreoElectronico.Text,
                txtTelefono.Text
            );

            int legajoMedico;
            if (int.TryParse(Session["LegajoMedico"].ToString(), out legajoMedico))
            {
                medico.setLegajoMed(legajoMedico);
            }

            if (med.ActuMed(medico))
            {
                lblMensaje.Text = "El medico se ha actualizado con exito";
                limpiarCamposMed();
            }
            else
            {
                lblMensaje.Text = "No se pudo actualizar el medico";
            }
        }

        protected void limpiarCamposMed()
        {
            txtNombre.Text = "";
            txtApellido.Text = "";
            txtNacionalidad.Text = "";
            txtFechaNac.Text = "";
            txtDireccion.Text = "";
            txtCorreoElectronico.Text = "";
            txtTelefono.Text = "";
            ddlSexo.SelectedIndex = 1;
            ddlProvincia.SelectedIndex = 1;
            ddlLocalidades.SelectedIndex = 1;
            ddlEspecialidad.SelectedIndex = 1;
        }
    }
}