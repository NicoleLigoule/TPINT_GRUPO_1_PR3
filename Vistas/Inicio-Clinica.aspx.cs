using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;

namespace Vistas
{
    public partial class Inicio_Cine : System.Web.UI.Page
    {
        bool usuarioAdmin = false;

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
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }

        protected void cvContrasenia_ServerValidate(object source, ServerValidateEventArgs args)
        {
            Negocio.Login log = new Negocio.Login();
            string usuario = txtUsuario.Text;
            bool contrasenia = log.LogearUsuario(usuario, args.Value, ref usuarioAdmin);

            if (!string.IsNullOrEmpty(args.Value) && contrasenia == true)
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
                usuarioAdmin = false;
            }
        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            Negocio.Login log = new Negocio.Login();
            if (Page.IsValid)
            {
                Session["nombreUsuario"] = txtUsuario.Text;
                Session["esAdmin"] = usuarioAdmin;

                if (usuarioAdmin)
                {
                    Response.Redirect("AdmInicio.aspx"); // Si es admin, nos redirige a AdmInicio.aspx
                }
                else
                {
                    Response.Redirect("MenuMedico.aspx"); // TO-DO: En caso de ser administrador, esto deberia redireccionar a la pagina admin
                }
            }
        }
    }
}