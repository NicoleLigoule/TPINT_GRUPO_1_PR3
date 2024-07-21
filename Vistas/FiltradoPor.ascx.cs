﻿using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vistas
{
    public partial class FiltradoPor : System.Web.UI.UserControl
    {
        private ABMLPaciente ABMLPaciente;

        public FiltradoPor()
        {
            if (ABMLPaciente == null)
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
                cargarDdlProvincias();
            }
            vistaDdlSexo();

            cargarGrvPacientes();
        }
        protected void cargarGrvPacientes()
        {
            String eleccionDelFiltrado = ddlTipoFiltro.SelectedValue;

            switch (eleccionDelFiltrado)
            {
                case "Sexo":
                    String sexo = DdlSexo.SelectedValue;
                    //GridViewMedico.DataSource = ABMLPaciente.cargartablaPacienteSegunSexo(sexo);
                    break;
                case "Nombre":
                    String nombre = txtBusqueda.Text;
                    //grvPacientes.DataSource = ABMLPaciente.cargartablaPacienteSegunNombre(nombre);
                    break;
                case "Provincia":
                    String provincia = ddlProvincias.SelectedValue;
                    //grvPacientes.DataSource = ABMLPaciente.cargartablaPacienteSegunProvincia(provincia);
                    break;
                default:
                    //grvPacientes.DataSource = ABMLPaciente.cargartablaPaciente();
                    break;
            }

            //grvPacientes.DataBind();
        }

        protected void grvPacientes_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            //grvPacientes.PageIndex = e.NewPageIndex;

            String eleccionDelFiltrado = ddlTipoFiltro.SelectedValue;

            switch (eleccionDelFiltrado)
            {
                case "Sexo":
                    String sexo = DdlSexo.SelectedValue;
                    //grvPacientes.DataSource = ABMLPaciente.cargartablaPacienteSegunSexo(sexo);
                    break;
                case "Nombre":
                    String nombre = txtBusqueda.Text;
                    //grvPacientes.DataSource = ABMLPaciente.cargartablaPacienteSegunNombre(nombre);
                    break;
                case "Provincia":
                    String provincia = ddlProvincias.SelectedValue;
                    //grvPacientes.DataSource = ABMLPaciente.cargartablaPacienteSegunProvincia(provincia);
                    break;
                default:
                    //grvPacientes.DataSource = ABMLPaciente.cargartablaPaciente();
                    break;
            }

            //grvPacientes.DataBind();
        }

        protected void grvPacientes_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            //Session["Editar"] = ((Label)grvPacientes.Rows[e.NewSelectedIndex].FindControl("lbl_DNIpc")).Text;
            //hplEditarSeleccionado.Visible = true;
        }

        //protected void grvPacientes_RowDataBound(object sender, GridViewRowEventArgs e)
        //{
        //    if (e.Row.RowType == DataControlRowType.DataRow)
        //    {
        //        DateTime fechaNacimiento = Convert.ToDateTime(DataBinder.Eval(e.Row.DataItem, "FechaNacimiento_pc"));
        //        //e.Row.Cells[7].Text = fechaNacimiento.ToString("yyyy-MM-dd");
        //        Label lblFechaNac = e.Row.FindControl("lbl_Fechapc") as Label;
        //        if (lblFechaNac != null)
        //        {
        //            lblFechaNac.Text = fechaNacimiento.ToString("yyyy-MM-dd");
        //        }
        //    }
        //}

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

        protected void cargarDdlProvincias()
        {
            ddlProvincias.DataSource = ABMLPaciente.cargartablaPaciente();
            ddlProvincias.DataTextField = "Nombre_loca";
            ddlProvincias.DataBind();
        }

        protected void vistaDdlSexo()
        {
            String eleccionDelFiltrado = ddlTipoFiltro.SelectedValue;

            switch (eleccionDelFiltrado)
            {
                case "":
                    ddlProvincias.Visible = false;
                    DdlSexo.Visible = false;
                    txtBusqueda.Visible = false;
                    btnBuscar.Visible = false;
                    break;
                case "Sexo":
                    ddlProvincias.Visible = false;
                    DdlSexo.Visible = true;
                    txtBusqueda.Visible = false;
                    btnBuscar.Visible = true;
                    break;
                case "Provincia":
                    ddlProvincias.Visible = true;
                    DdlSexo.Visible = false;
                    txtBusqueda.Visible = false;
                    btnBuscar.Visible = true;
                    break;
                default:
                    ddlProvincias.Visible = false;
                    DdlSexo.Visible = false;
                    txtBusqueda.Visible = true;
                    btnBuscar.Visible = true;
                    break;
            }
        }

        public string eleccionDelFiltrado => ddlTipoFiltro.SelectedValue;
        public string textoBusqueda => txtBusqueda.Text;
        public string sexo => DdlSexo.SelectedValue;
        public string provincia => ddlProvincias.SelectedValue;
    }
}