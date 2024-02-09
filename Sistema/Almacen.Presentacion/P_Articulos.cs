using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

// p es de propiedad
// propiedad para interactuar con el contenido a enviar a la tabla de articulos de la BD
namespace Sol_Almacen.Presentacion
{
    public class P_Articulos
    {
        // Los tipos y nombres se sacan de la BD
        public int Codigo_ar { get; set; }
        public string Descripcion_ar { get; set; }
        public string Marca_ar { get; set; }
        public int Codigo_um { get; set; }
        public int Codigo_ca { get; set; }
        public decimal Stock_actual { get; set; }
        public string Fecha_crea { get; set; }
        public string Fecha_modifica { get; set; }
    }
}
