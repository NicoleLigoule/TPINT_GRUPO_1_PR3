using System;
using System.Web.UI;

namespace Vistas
{
    public partial class Header : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["NombreUsuario"] != null)
            {
                string nombreUsuario = Session["NombreUsuario"].ToString();
                usuario.InnerText = "Bienvenido, " + nombreUsuario;
                cerrarSesion.Visible = true;
            }
            else
            {
                usuario.InnerText = "Bienvenido, Invitado";
                cerrarSesion.Visible = false;
            }
        }

        protected void CerrarSesion_ServerClick(object sender, EventArgs e)
        {
            Session["NombreUsuario"] = null;
            Response.Redirect("Inicio-Clinica.aspx");
        }
    }
}
