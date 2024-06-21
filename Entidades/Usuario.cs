using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Usuario
    {
        private int legajo_usuario;
        private string usuario_usuario;
        private string contrasenia_usuario;
        private bool administrador_usuario;
        private string estado_usuario;

        public Usuario(int legajo_us, string usuario_us, string contrasenia_us, bool administrador_us, string estado_usuario)
        {
            this.legajo_usuario = legajo_us;
            this.usuario_usuario = usuario_us;
            this.contrasenia_usuario = contrasenia_us;
            this.administrador_usuario = administrador_us;
            this.estado_usuario = estado_usuario;
        }

        public int getLegajo_usuario() {
            return legajo_usuario;
        }

        public string getUsuario_usuario() {
            return usuario_usuario;
        }

        public string getContrasenia_usuario() {
            return contrasenia_usuario;
        }

        public bool getAdministrador_usuario() {
            return administrador_usuario;
        }

        public string getEstado_usuario() { 
            return estado_usuario;
        }

        public void setLegajo_usuario(int legajo_usuario) {
            this.legajo_usuario = legajo_usuario;
        }

        public void setUsuario_usuario(string usuario_usuario) {
            this.usuario_usuario = usuario_usuario;
        }

        public void setContrasenia_usuario(string contrasenia_usuario) {
            this.contrasenia_usuario = contrasenia_usuario;
        }

        public void setAdministrador_usuario(bool administrador_usuario) {
            this.administrador_usuario = administrador_usuario;
        }

        public void setEstado_usuario(string estado_usuario) {
            this.estado_usuario = estado_usuario;
        }
    }
}
