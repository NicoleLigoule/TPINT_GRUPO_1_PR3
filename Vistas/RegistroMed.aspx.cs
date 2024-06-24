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
    public partial class RegistroMed : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarDropDown();
               
                // Verificar si el usuario es administrador
                bool esAdmin = false;
                if (Session["esAdmin"] != null)
                {
                    esAdmin = (bool)Session["esAdmin"];
                }

                if (!esAdmin)
                {
                    hlMenuAdministrador.Visible = false;
                }
                
            }
            
            CargarDropDownLocalidad(ddlProvincia.SelectedItem.Value);
        }
        private void CargarDropDown()
        {
            CargadoDDL negocioProvincia = new CargadoDDL();
            List<Especialidad> list = negocioProvincia.ObtenerEspecialidadDDL();

            foreach (Especialidad Especialidades in list)
            {
                ddlEspecialidad.Items.Add(new ListItem(Especialidades.getNombre_especialidad(), Especialidades.getId_especialidad().ToString()));
            }
            
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
            ABMLMedico AgregarMedico = new ABMLMedico();
            Medico Medico = new Medico
                (
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
                txtTelefono.Text);

            if (AgregarMedico.agregarMedico(Medico))
            {
                
                lblMensaje.Text =  "Se agrego correctamente";
            }
            else
            {
                lblMensaje.Text = " No se pudo agregar";
            }
            limpiarcapos();

        }
        protected void limpiarcapos()
        {
            txtDni.Text = "";
            txtNombre.Text = "";
            txtApellido.Text = "";
            ddlProvincia.SelectedIndex = 0;
            ddlLocalidades.SelectedIndex = 0;
            ddlEspecialidad.SelectedIndex = 0;
            ddlSexo.SelectedItem.Text = "";
            txtNacionalidad.Text = "";
            txtFechaNac.Text = "";
            txtDireccion.Text = "";
            txtCorreoElectronico.Text = "";
            txtTelefono.Text = "";
        }
    }
}