using System;
using System.Web.UI.WebControls;
using Negocio;
using Entidades;
using System.Data;

namespace Vistas
{
    public partial class VistasMedico : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                UpdateGridView();  
            }
        }

        private void UpdateGridView()
        {
            Negocio.Login log = new Negocio.Login();
            string usuario;
            int leg = 0;
            if (Session["nombreUsuario"] != null)
            {
                usuario = Session["nombreUsuario"].ToString();
                leg = log.obtener_legajo(usuario);
            }
            TurnoAtencion tabla = new TurnoAtencion();
            grdTurnoMedico.DataSource = tabla.cargartablaTurnos(leg);
            grdTurnoMedico.DataBind();
        }

        protected void grdTurnoMedico_RowEditing(object sender, GridViewEditEventArgs e)
        {
            grdTurnoMedico.EditIndex = e.NewEditIndex;
            UpdateGridView();
        }

        protected void grdTurnoMedico_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            grdTurnoMedico.EditIndex = -1;
            UpdateGridView();
        }

        protected void grdTurnoMedico_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = grdTurnoMedico.Rows[e.RowIndex];

            // valores de editar
            int legajo = Convert.ToInt32(((Label)row.FindControl("lblLegajo1")).Text);
            string fecha = ((Label)row.FindControl("lblFecha")).Text;
            string diaAtencion = ((Label)row.FindControl("lblDiaTurno")).Text;
            int horario = Convert.ToInt32(((Label)row.FindControl("lblHorario")).Text);

            string asistenciaText = ((TextBox)row.FindControl("TxtAsistencia")).Text;
            bool asistencia = asistenciaText.Trim().Equals("true", StringComparison.OrdinalIgnoreCase);

            string dniPaciente = ((Label)row.FindControl("lblDniPac")).Text;
            string descripcion = ((TextBox)row.FindControl("txtObservaciones")).Text;

            string estadoText = ((Label)row.FindControl("lblEstado")).Text;
            bool estado = estadoText.Trim().Equals("true", StringComparison.OrdinalIgnoreCase);

            Turno tu = new Turno
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

            TurnoAtencion tabla = new TurnoAtencion();
            tabla.ActualizarTurno(tu);

            grdTurnoMedico.EditIndex = -1;
            UpdateGridView();
        }


        protected void grdTurnoMedico_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grdTurnoMedico.PageIndex = e.NewPageIndex;
            UpdateGridView();
        }

        protected void btnFiltrarPorDni_Click(object sender, EventArgs e)
        {
            Negocio.Login log = new Negocio.Login();
            string usuario;
            int leg = 0;
            if (Session["nombreUsuario"] != null)
            {
                usuario = Session["nombreUsuario"].ToString();
                leg = log.obtener_legajo(usuario);
            }

            TurnoAtencion tabla = new TurnoAtencion();

            DataView dataView = new DataView(tabla.cargartablaTurnos(leg));

            if (!string.IsNullOrEmpty(txtDni.Text))
            {
                dataView.RowFilter = $"DniPaciente_tu LIKE '%{txtDni.Text}%'";
            }

            grdTurnoMedico.DataSource = dataView;
            grdTurnoMedico.DataBind();

        }

       
    }
}