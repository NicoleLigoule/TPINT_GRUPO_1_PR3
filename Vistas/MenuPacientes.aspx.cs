using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vistas
{
    public partial class MenuPacientes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
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
        }
    }
}