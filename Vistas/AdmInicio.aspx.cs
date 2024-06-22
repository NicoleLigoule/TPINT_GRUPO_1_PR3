using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vistas
{
    public partial class AdmInicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // TO-DO: Necesitamos verificar si el usuario es administrador antes de mostrarle esta página ya que sino puede acceder desde cualquier lado
            if (!User.IsInRole("Administrador"))
            {
                // TO-DO: Si no es admin, redireccionarlo a otra página que sea un aviso.
                Response.Redirect("PaginaNoAutorizada.aspx");
            }
        }
    }
}