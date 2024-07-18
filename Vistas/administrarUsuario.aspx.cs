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
            if (!IsPostBack)
            {
                ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
                Negocio.Login log = new Negocio.Login();
                string usuario;
                if (Session["nombreUsuario"] != null)
                {
                    usuario = Session["nombreUsuario"].ToString();
                    txtUsuario.Text = usuario;
                }
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
                if (log.ACtualizarUs(usuari))
                {
                    lblMensaje.Text = "se cambio correctamente";
                }
            }
            else
            {
                lblMensaje.Text = "El nombre de usuario ya esta en uso!";
            }
            limpiarCampos();

        }
        protected void limpiarCampos()
        {
            txtUsuario.Text = "";
            txtContrasenia.Text = "";
            txtRContrasenia.Text = "";
        }

    }
}