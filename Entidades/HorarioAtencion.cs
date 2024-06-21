using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class HorarioAtencion
    {
        private int legajo_ha;
        private string diaAtencion_ha;
        private int horarioAtencion;
        private string estado_ha;

        public HorarioAtencion(int legajo_ha, string diaAtencion_ha, int horarioAtencion, string estado_ha)
        {
            this.legajo_ha = legajo_ha;
            this.diaAtencion_ha = diaAtencion_ha;
            this.horarioAtencion = horarioAtencion;
            this.estado_ha = estado_ha;
        }

        public int getLegajo_ha() {
            return legajo_ha;
        }

        public string getDiaAtencion_ha() {
            return diaAtencion_ha;
        }

        public int getHorarioAtencion() {
            return horarioAtencion;
        }

        public string getEstado_ha() {
            return estado_ha;
        }

        public void setLegajo_ha(int legajo_ha) {
            this.legajo_ha = legajo_ha;
        }

        public void setDiaAtencion_ha(string diaAtencion_ha) {
            this.diaAtencion_ha = diaAtencion_ha;
        }

        public void setHorarioAtencion(int horarioAtencion) {
            this.horarioAtencion = horarioAtencion;
        }

        public void setEstado_ha(string estado_ha) {
            this.estado_ha = estado_ha;
        }
    }
}
