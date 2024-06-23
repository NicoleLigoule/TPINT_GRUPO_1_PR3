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
            }else
            {
                CargarDropDownLocalidad(ddlProvincia.SelectedItem.Value);
            }
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
    }
}