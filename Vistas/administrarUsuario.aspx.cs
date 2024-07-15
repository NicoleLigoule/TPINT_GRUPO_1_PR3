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
    public partial class administrarUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           Negocio.Login log = new Negocio.Login();
            string usuario;
            if (Session["nombreUsuario"] != null) 
            {
                usuario = Session["nombreUsuario"].ToString();
                txtUsuario.Text = usuario;
            }
        }

        protected void btnAsignar_Click(object sender, EventArgs e)
        {
            Negocio.Login log = new Negocio.Login();
            string usuario;
            int leg=0;
            if (Session["nombreUsuario"] != null)
            {
                usuario = Session["nombreUsuario"].ToString();
                leg = log.obtener_legajo(usuario);
            }
           
            if(log.VerificarNombreUsuario(txtUsuario.Text, leg) == 0)
            {
                Usuario usuari = new Usuario(leg, txtUsuario.Text, txtRContrasenia.Text);
                log.ACtualizarUs(usuari);
            }
            ///aca tengo que hacer la logica que informe q el nombre se repite

        }
    }
}