﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using Entidades;

namespace Vistas
{
    public partial class AsignarTurno : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarEspecialidad();
                CargarPaciente();
                
            }
            
            verificarCarga();


        }

        private void CargarEspecialidad()
        {
            CargadoDDL negocioProvincia = new CargadoDDL();
            List<Especialidad> list4 = negocioProvincia.ObtenerEspecialidadDDL();

            foreach (Especialidad Especialidades in list4)
            {
                ddlEspecialidad.Items.Add(new ListItem(Especialidades.getNombre_especialidad(), Especialidades.getId_especialidad().ToString()));
            }
        }
        private void Cargarmedico(string especialidad)
        {
            limpiarDDl();
            Label1.Text = int.Parse(ddlEspecialidad.SelectedItem.Value).ToString();
             
            ddlMedico.Items.Clear();
            CargadoDDL negocio = new CargadoDDL();
            List<Medico> list = negocio.ObtenerMEdico_Turnos(especialidad);

            foreach (Medico medico in list)
            {
                ddlMedico.Items.Add(new ListItem(medico.getNombreMed() + " " + medico.getApellidoMed(), medico.getLegajoMed().ToString()));
            }
        }
        private void CargaFecha(string lejmed)
        {
            Label2.Text = int.Parse(ddlMedico.SelectedItem.Value).ToString();
            ddlDiaDeAtencion.Items.Clear();
            CargadoDDL negocio = new CargadoDDL();
            List<Turno> list = negocio.ObtenerFechas_Turnos(lejmed);

            foreach (Turno fecha in list)
            {
                ddlDiaDeAtencion.Items.Add(new ListItem(fecha.GetDiaAtencion(), fecha.Getfecha()));
            }
        }
        private void CargaHorario(string lejmed,string fecha_)
        {
            ddlHorario.Items.Clear();
            CargadoDDL negocio = new CargadoDDL();
            List<Turno> list = negocio.ObtenerHorario_Turnos(lejmed,fecha_);

            foreach (Turno fecha in list)
            {
                ddlHorario.Items.Add(new ListItem(fecha.GetHorario().ToString(), fecha.GetLegajo().ToString()));
            }
        }

        private void CargarPaciente()
        {
            ddlPaciente.Items.Clear();
            CargadoDDL negocio = new CargadoDDL();
            List<Entidades.Paciente> list = negocio.ObtenerPaciente_el();

            foreach (Entidades.Paciente pac in list)
            {
                ddlPaciente.Items.Add(new ListItem(pac.getNombrePac() + " " + pac.getApellidoPac(), pac.getDNIPac()));
            }
        }
        private void limpiarDDl()
        {
            ddlDiaDeAtencion.Items.Clear();
            ddlHorario.Items.Clear();
        }
        private void verificarCarga()
        {
            //btnAsignar.Enabled = true;
            lblespecialidades.Text = "";
            lblMedicos.Text = "";
            lblFechas.Text = "";
            lblHorarios.Text = "";
            if (ddlEspecialidad.SelectedItem != null && !string.IsNullOrEmpty(ddlEspecialidad.SelectedItem.Value))
            {
                if (int.Parse(Label1.Text)!= int.Parse(ddlEspecialidad.SelectedItem.Value))
                { 
                    Cargarmedico(ddlEspecialidad.SelectedItem.Value);
                }
               
                if (ddlMedico.SelectedItem == null || string.IsNullOrEmpty(ddlMedico.SelectedItem.Value))
                {
                    lblMedicos.Text = "No se encuentran medicos de esa especialidad";
                }
            }
            if (ddlMedico.SelectedItem != null && !string.IsNullOrEmpty(ddlMedico.SelectedItem.Value))
            {
                if (int.Parse(Label2.Text) != int.Parse(ddlMedico.SelectedItem.Value))
                {
                    CargaFecha(ddlMedico.SelectedItem.Value);
                }
                if (ddlDiaDeAtencion.SelectedItem == null || string.IsNullOrEmpty(ddlDiaDeAtencion.SelectedItem.Value))
                {
                    ddlHorario.Items.Clear();
                    lblFechas.Text = "No se encuentran Fecha desponible para ese medico";
                }
            }
            else
            {

                lblFechas.Text = "No se encuentran Fecha desponible para ese medico";
                //btnAsignar.Enabled = false;
            }
            if (ddlMedico.SelectedItem != null && !string.IsNullOrEmpty(ddlMedico.SelectedItem.Value) && ddlDiaDeAtencion.SelectedItem != null && !string.IsNullOrEmpty(ddlDiaDeAtencion.SelectedItem.Value))
            {
                CargaHorario(ddlMedico.SelectedItem.Value, ddlDiaDeAtencion.SelectedItem.Value);
                if (ddlMedico.SelectedItem == null || string.IsNullOrEmpty(ddlMedico.SelectedItem.Value))
                {
                    lblHorarios.Text = "No se encuentran horario disponible para esa fecha";
                }
            }
            else
            {
                lblHorarios.Text = "No se encuentran horario disponible para esa fecha";
                //btnAsignar.Enabled = false;
            }
        }
        protected void btnAsignar_Click(object sender, EventArgs e)
        {
            //if(ddlMedico.SelectedItem != null)
            //{
                TurnoAtencion carga = new TurnoAtencion();
                Turno turnoAs = new Turno(ddlMedico.SelectedItem.Value, ddlDiaDeAtencion.SelectedItem.Value, ddlHorario.SelectedItem.Text, ddlPaciente.SelectedItem.Value);

                if (carga.AsignarPaciente_Turno(turnoAs))
                {
                    lblMensajes.Text = "se asigno correctamente";
                }
                else
                {
                    lblMensajes.Text = "no se pudo asignar";
                }
                verificarCarga();
            //}
            //else
            //{
            //    lblespecialidades.Text = "Debe elegir una especialidad con profesionales disponibles.";
            //}
        }
    }
}