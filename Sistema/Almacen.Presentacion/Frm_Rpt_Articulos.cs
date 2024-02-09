using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MySql.Data;
using MySql.Data.MySqlClient;
using Microsoft.Reporting.WinForms;

namespace Sol_Almacen.Presentacion
{
    public partial class Frm_Rpt_Articulos : Form
    {
        public Frm_Rpt_Articulos()
        {
            InitializeComponent();
        }
        #region "Mis Métodos"
        private void Listado()
        {
            MySqlConnection SqlCon = new MySqlConnection();
            try
            {              
                SqlCon = Conexion.getInstancia().CrearConexion();
                string sql_tarea = "select a.codigo_ar," +
                                   " a.descripcion_ar," +
                                   " a.marca_ar," +
                                   " b.descripcion_um," +
                                   " c.descripcion_ca," +
                                   " a.stock_actual" +                                  
                                   " from tb_articulos a " +
                                   " inner join tb_unidades_medidas b on a.codigo_um=b.codigo_um " +
                                   " inner join tb_categorias c on a.codigo_ca=c.codigo_ca " +                                 
                                   " where a.estado=1 " +
                                   " order by a.codigo_ar";
                MySqlDataAdapter da = new MySqlDataAdapter(sql_tarea,SqlCon);
                // se envia el proceso de sql_tarea con sqlcon
                DataSet ds = new DataSet();
                da.Fill(ds);     // obtener toda la info de ds
                ReportDataSource fuente = new ReportDataSource("DataSet1", ds.Tables[0]);
                // se le menciona el DataSet1 y se carga en ds.Tables[0]
                reportViewer1.LocalReport.DataSources.Clear();     // limpieza del detalle
                reportViewer1.LocalReport.DataSources.Add(fuente);   // se agrega el conenido
                reportViewer1.LocalReport.ReportEmbeddedResource = "Sol_Almacen.Presentacion.Rpt_articulos.rdlc";
                // cual es el arhivo de trabajo
                reportViewer1.LocalReport.Refresh();        // refresque toda la info
                reportViewer1.Refresh();      // refresh 
                reportViewer1.RefreshReport();   // refresh total

            }
            catch (Exception ex)
            {

                throw ex;
            }
            finally
            {
                if(SqlCon.State== ConnectionState.Open) SqlCon.Close();
            }
        }
        #endregion

        private void Frm_Rpt_Articulos_Load(object sender, EventArgs e)
        {

            //this.reportViewer1.RefreshReport();
            this.Listado();     // para que accione todo lo trabajado
        }
    }
}
