using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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
            }
            else
            {
                usuario.InnerText = "Bienvenido, Invitado";
            }
        }
    }
}