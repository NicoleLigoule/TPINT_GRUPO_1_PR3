using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;

namespace Vistas
{
    public partial class Inicio_Cine : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
         
        }

        protected void cvUsuario_ServerValidate(object source, ServerValidateEventArgs args)
        {
            Negocio.Login log = new Negocio.Login();
            bool nombreUsuario = log.ValidarUsuario(args.Value);

            if (!string.IsNullOrEmpty(args.Value) && nombreUsuario == true)
            {
                args.IsValid = true; // No deberia saltar el RFV
            }
            else
            {
                args.IsValid = false; // Deberia saltar el RFV
            }
        }

        protected void cvContrasenia_ServerValidate(object source, ServerValidateEventArgs args)
        {
            Negocio.Login log = new Negocio.Login();
            string usuario = txtUsuario.Text;
            bool contrasenia = log.LogearUsuario(usuario, args.Value);

            if (!string.IsNullOrEmpty(args.Value) && contrasenia == true)
            {
                args.IsValid = true; // No deberia saltar el RFV
            }
            else
            {
                args.IsValid = false; // Deberia saltar el RFV
            }
        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Response.Redirect("MenuMedico.aspx"); // TO-DO: En caso de ser administrador, esto deberia redireccionar a la pagina admin
            }
        }
    }
}