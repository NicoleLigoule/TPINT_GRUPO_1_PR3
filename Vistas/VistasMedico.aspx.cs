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
    public partial class VistasMedico : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TurnoAtencion tabla = new TurnoAtencion();
            grdTurnoMedico.DataSource = tabla.cargartablaTurnos();
            grdTurnoMedico.DataBind();


        }

        protected void grdTurnoMedico_RowEditing(object sender, GridViewEditEventArgs e)
        {
            grdTurnoMedico.EditIndex = e.NewEditIndex;
            TurnoAtencion tabla = new TurnoAtencion();
            grdTurnoMedico.DataSource = tabla.cargartablaTurnos();
        }

        protected void grdTurnoMedico_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            grdTurnoMedico.EditIndex = -1;
            TurnoAtencion tabla = new TurnoAtencion();
            grdTurnoMedico.DataSource = tabla.cargartablaTurnos();
        }

        protected void grdTurnoMedico_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            // Obtén los valores de la fila que está siendo editada
            GridViewRow row = grdTurnoMedico.Rows[e.RowIndex];

            // Obtén los valores de las claves de datos (Legajo y Fecha)
            int legajo = Convert.ToInt32(grdTurnoMedico.DataKeys[e.RowIndex].Values["Legajo"]);
            string fecha = grdTurnoMedico.DataKeys[e.RowIndex].Values["Fecha"].ToString();

            // Obtén los valores de los controles de edición
            string diaAtencion = ((Label)row.FindControl("lblDiaAtencion")).Text;
            int horario = Convert.ToInt32(((Label)row.FindControl("lblHorario")).Text);
            bool asistencia = ((CheckBox)row.FindControl("chkAsistencia")).Checked;
            string dniPaciente = ((Label)row.FindControl("lblDniPaciente")).Text;
            string descripcion = ((TextBox)row.FindControl("txtDescripcion")).Text;
            bool estado = ((TextBox)row.FindControl("txtEstado")).Text == "true"; // Ajuste para convertir a booleano

            // Crear una instancia de Turno y actualizar el turno
            Entidades.Turno tu = new Entidades.Turno
            {
                _Legajo = legajo,
                _fecha = fecha,
                _DiaAtencion_ha = diaAtencion,
                _Horario = horario,
                _Asistencia = asistencia,
                _DniPaciente_tu = dniPaciente,
                _Descripcion = descripcion,
                _Estado_ha = estado
            };

            // Llama al método de actualización en la capa de negocio
            TurnoAtencion tabla = new TurnoAtencion();
            tabla.ActualizarTurno(tu);

            // Restablece el índice de edición y vuelve a cargar el GridView
            grdTurnoMedico.EditIndex = -1;
            grdTurnoMedico.DataSource = tabla.cargartablaTurnos();
            grdTurnoMedico.DataBind();
        }




        protected void grdTurnoMedico_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grdTurnoMedico.PageIndex = e.NewPageIndex;
            TurnoAtencion tabla = new TurnoAtencion();
            grdTurnoMedico.DataSource = tabla.cargartablaTurnos();
        }
    }
}