﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;

namespace Vistas
{
    public partial class GestionPacientes : System.Web.UI.Page
    {
        private ABMLPaciente ABMLPaciente;

        public GestionPacientes()
        {
            if(ABMLPaciente == null)
            {
                ABMLPaciente = new ABMLPaciente();
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                cargarddlTipoFiltro();
                cargarddSexo();
            }
            vistaDdlSexo();

            cargarGrvPacientes();
        }

        protected void cargarGrvPacientes()
        {
            if(ddlTipoFiltro.SelectedValue == "Sexo")
            {
                String sexo = DdlSexo.SelectedValue;
                grvPacientes.DataSource = ABMLPaciente.cargartablaPacienteSegunSexo(sexo);
            }
            if (ddlTipoFiltro.SelectedValue == "Nombre")
            {
                String nombre = txtBusqueda.Text;
                grvPacientes.DataSource = ABMLPaciente.cargartablaPacienteSegunNombre(nombre);
            }
            else
            {
                grvPacientes.DataSource = ABMLPaciente.cargartablaPaciente();
            }
            
            grvPacientes.DataBind();
        }

        protected void grvPacientes_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grvPacientes.PageIndex = e.NewPageIndex;

            if (ddlTipoFiltro.SelectedValue == "Sexo")
            {
                String sexo = DdlSexo.SelectedValue;
                grvPacientes.DataSource = ABMLPaciente.cargartablaPacienteSegunSexo(sexo);
            }

            else
            {
                grvPacientes.DataSource = ABMLPaciente.cargartablaPaciente();
            }
            grvPacientes.DataBind();
        }

        protected void grvPacientes_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            Session["Editar"] = ((Label)grvPacientes.Rows[e.NewSelectedIndex].FindControl("lbl_DNIpc")).Text;
            hplEditarSeleccionado.Visible = true;
        }

        protected void grvPacientes_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                DateTime fechaNacimiento = Convert.ToDateTime(DataBinder.Eval(e.Row.DataItem, "FechaNacimiento_pc"));
                //e.Row.Cells[7].Text = fechaNacimiento.ToString("yyyy-MM-dd");
                Label lblFechaNac = e.Row.FindControl("lbl_Fechapc") as Label;
                if (lblFechaNac != null)
                {
                    lblFechaNac.Text = fechaNacimiento.ToString("yyyy-MM-dd");
                }
            }
        }

        protected void cargarddlTipoFiltro()
        {
            ddlTipoFiltro.Items.Add("");
            ddlTipoFiltro.Items.Add("Nombre");
            ddlTipoFiltro.Items.Add("Provincia");
            ddlTipoFiltro.Items.Add("Sexo");
        }

        protected void cargarddSexo()
        {
            DdlSexo.Items.Add("Masculino");
            DdlSexo.Items.Add("Femenino");
            DdlSexo.Items.Add("Otros");
        }

        protected void vistaDdlSexo()
        {
            if (ddlTipoFiltro.SelectedValue == "Sexo")
            {
                DdlSexo.Visible = true;
                txtBusqueda.Visible = false;
            }
            else
            {
                DdlSexo.Visible = false;
                txtBusqueda.Visible = true;
            }
        }
    }
}