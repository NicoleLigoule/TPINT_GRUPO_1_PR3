using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Administrador
    {
        private int legajo_administrador;
        private string nombre_administrador;
        private string apellido_administrador;
        private string dni_administrador;
        private string estado_administrador;

        public Administrador(int legajo_administrador, string nombre_administrador, string apellido_administrador, string dni_administrador, string estado_administrador)
        {
            this.legajo_administrador = legajo_administrador;
            this.nombre_administrador = nombre_administrador;
            this.apellido_administrador = apellido_administrador;
            this.dni_administrador = dni_administrador;
            this.estado_administrador = estado_administrador;
        }

        public int getLegajo_administrador() {
            return legajo_administrador;
        }

        public string getNombre_administrador() {
            return nombre_administrador;
        }

        public string getApellido_administrador() {
            return apellido_administrador;
        }

        public string getDni_administrador() {
            return dni_administrador;
        }

        public string getEstado_administrador() {
            return estado_administrador;
        }

        public void setLegajo_administrador(int legajo_administrador) {
            this.legajo_administrador = legajo_administrador;
        }

        public void setNombre_administrador(string nombre_administrador) {
            this.nombre_administrador = nombre_administrador;
        }

        public void setApellido_administrador(string apellido_administrador) {
            this.apellido_administrador = apellido_administrador;
        }

        public void setDni_administrador(string dni_administrador) {
            this.dni_administrador = dni_administrador;
        }

        public void setEstado_administrador(string estado_administrador) {
            this.estado_administrador = estado_administrador;
        }
    }
}
