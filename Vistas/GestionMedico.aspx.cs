﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;

namespace Vistas
{
    public partial class GestionMedico : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ABMLMedico tabla = new ABMLMedico();
            GridViewMedicos1.DataSource = tabla.cargartabla();
            GridViewMedicos1.DataBind();



        }

        protected void GridViewMedicos1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridViewMedicos1.PageIndex = e.NewPageIndex;
            ABMLMedico tabla = new ABMLMedico();
            GridViewMedicos1.DataSource = tabla.cargartabla();
            GridViewMedicos1.DataBind();
        }

        protected void GridViewMedicos1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            Session["Editar"] = ((Label)GridViewMedicos1.Rows[e.NewSelectedIndex].FindControl("lblDni")).Text;
            Session["LegajoMedico"] = ((Label)GridViewMedicos1.Rows[e.NewSelectedIndex].FindControl("lblLegajo")).Text;
        }

        protected void GridViewMedicos1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                DateTime fechaNacimiento = Convert.ToDateTime(DataBinder.Eval(e.Row.DataItem, "FechaNacimiento_me"));
                //e.Row.Cells[7].Text = fechaNacimiento.ToString("dd/MM/yyyy");
                Label lblFechaNac = e.Row.FindControl("lblFechaNac") as Label;
                if (lblFechaNac != null)
                {
                    lblFechaNac.Text = fechaNacimiento.ToString("dd/MM/yyyy");
                }
            }
        }
    }
}