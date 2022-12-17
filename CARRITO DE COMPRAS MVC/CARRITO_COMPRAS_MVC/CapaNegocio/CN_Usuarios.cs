using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDatos;
using CapaEntidad;

namespace CapaNegocio
{
    public class CN_Usuarios
    {
        private CD_Usuarios objCaparaDato = new CD_Usuarios();
        public List<Usuario> Listar()
        {
            return objCaparaDato.Listar();
        }

        public int Registrar(Usuario usuario, out string Mensaje)
        {
            Mensaje = string.Empty;
            if (string.IsNullOrEmpty(usuario.Nombres) || string.IsNullOrWhiteSpace(usuario.Nombres)) Mensaje += "El nombre no puede estar vacio<br>";
            if (string.IsNullOrEmpty(usuario.Apellidos) || string.IsNullOrWhiteSpace(usuario.Apellidos)) Mensaje += "Los apellidos no puede estar vacio<br>";
            if (string.IsNullOrEmpty(usuario.Correo) || string.IsNullOrWhiteSpace(usuario.Correo)) Mensaje += "El correo no puede estar vacio<br>";

            if (string.IsNullOrEmpty(Mensaje))
            {
                string clave = "test123";
                usuario.Clave = CN_Recursos.ConvertirSha256(clave);
                return objCaparaDato.Registrar(usuario, out Mensaje);
            }
            else return 0;
        }
        public bool Editar(Usuario usuario, out string Mensaje)
        {
            Mensaje = string.Empty;
            if (string.IsNullOrEmpty(usuario.Nombres) || string.IsNullOrWhiteSpace(usuario.Nombres)) Mensaje += "El nombre no puede estar vacio<br>";
            if (string.IsNullOrEmpty(usuario.Apellidos) || string.IsNullOrWhiteSpace(usuario.Apellidos)) Mensaje += "Los apellidos no puede estar vacio<br>";
            if (string.IsNullOrEmpty(usuario.Correo) || string.IsNullOrWhiteSpace(usuario.Correo)) Mensaje += "El correo no puede estar vacio<br>";
            if (string.IsNullOrEmpty(Mensaje))
            {
                return objCaparaDato.Editar(usuario, out Mensaje);
            }
            return false;
        }
        public bool Eliminar(int id, out string Mensaje) => objCaparaDato.Eliminar(id, out Mensaje);
        
    }
}
