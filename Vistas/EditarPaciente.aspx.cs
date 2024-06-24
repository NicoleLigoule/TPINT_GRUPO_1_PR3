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
    public partial class EditarPaciente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarDropDown();
                if (Session["Editar"] != null)
                {
                    lblDni.Text = Session["Editar"].ToString();
                    ABMLPaciente pac = new ABMLPaciente();
                    Entidades.Paciente paciente = new Entidades.Paciente();
                    paciente=pac.traerPaciente(Session["Editar"].ToString());
                    txtNombrePac.Text = paciente.getNombrePac();
                    txtApellidoPac.Text = paciente.getApellidoPac();
                    string textoBuscado = paciente.getSexoPac();
                    ListItem item = ddlSexoPac.Items.FindByText(textoBuscado);
                    if (item != null)
                    {
                        ddlSexoPac.SelectedIndex = ddlSexoPac.Items.IndexOf(item);
                    }
                    ddlProvincia.SelectedIndex = 3;/*paciente.getProvPac();*/
                    CargarDropDownLocalidad(ddlProvincia.SelectedItem.Value);
                    ddlLocalidad.SelectedIndex = 5; /*paciente.getLocaPac();*/
                    txtNacionalidad.Text = paciente.getNacionalidadPac();
                    txtFechaNac.Text = paciente.getFechaPac();
                    txtDireccionPac.Text = paciente.getDireccionPac();
                    txtCorreoElectronicoPac.Text = paciente.getCorreoPac();
                    txtTelefonoPac.Text = paciente.getTelefonoPac();
                    lblMensaje.Text = paciente.getProvPac().ToString() + paciente.getLocaPac().ToString();
                  


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
                ABMLPaciente pac = new ABMLPaciente();
            Entidades.Paciente paciente = new Entidades.Paciente(
            lblDni.Text,
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
            

) ;





            if (pac.ActuPac(paciente))
            {

                lblMensaje.Text = "El paciente se ha actualizado con exito";
            }
            else
            {
                lblMensaje.Text = "No se pudo actualizar el paciente";
            }

        }
    }
}
