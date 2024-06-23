using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;

namespace Vistas
{
    public partial class EliminarMedico : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        
    protected void btnEliminar_Click(object sender, EventArgs e)
        {
            ABMLMedico alta = new ABMLMedico();
            int legajo = int.Parse(txtEliminar.Text);
            if (alta.bajaMedico(legajo))
            {
                lblMensaje.Text = "Medico dado de baja correctamente";
            }
    }
}
}