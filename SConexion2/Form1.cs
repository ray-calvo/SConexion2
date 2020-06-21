using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;


namespace SConexion2
{
    public partial class Form1 : Form
    {
        public bool vacio;
        
        public Form1()
        {
            
            InitializeComponent();
            var checa = new DBDatos();
            bool valida = checa.VerifyConnection();
            if (valida == true)
            {
                string opciones = ConfigurationManager.AppSettings["Opcion"];
                if (opciones == "Normal")
                {
                    MessageBox.Show("Esta terminal esta configurada para inventarios normales", "Informacion del sistema", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    dataGridView1.DataSource = DBDatos.ListarInventario();
                    gbTerminal.Text = ConfigurationManager.AppSettings["Terminal"];
                    lblMenu.Text="Toma de Inventarios "+ ConfigurationManager.AppSettings["Opcion"];
                    txtCodigo.Select();
                }
                else
                    if (opciones == "Continuo")
                        {
                            txtCantidad.Enabled = false;
                            MessageBox.Show("Esta terminal esta configurada para inventarios continuos", "Informacion del sistema", MessageBoxButtons.OK, MessageBoxIcon.Information);
                            dataGridView1.DataSource = DBDatos.ListarInventario();
                            gbTerminal.Text = ConfigurationManager.AppSettings["Terminal"];
                            lblMenu.Text = "Toma de Inventarios " + ConfigurationManager.AppSettings["Opcion"];
                            txtCodigo.Select();
                }
                    else
                        {
                            MessageBox.Show("Debes de configurar tu terminal", "Informacion del sistema", MessageBoxButtons.OK, MessageBoxIcon.Error);
                            FConexion frm = new FConexion();
                            frm.ShowDialog();
                        }
            }
            else
            {
                MessageBox.Show("Debes de configurar tu terminal", "Informacion del sistema", MessageBoxButtons.OK, MessageBoxIcon.Error);
                FConexion frm = new FConexion();
                frm.ShowDialog();
            }
          

        }

        private void btnBuscar_Click(object sender, EventArgs e)
        {
            // Configure the message box to be displayed
            const string message = "Este proceso crear el archivo de inventario,y borra la toma de inventario" + "\n" +
                                    "¿Deseas Continuar?";
            const string caption = "Proceso de Inventario";           
            var result = MessageBox.Show(message, caption,
                                          MessageBoxButtons.YesNo,
                                          MessageBoxIcon.Question);

            // If the no button was pressed ...
            if (result == DialogResult.Yes)
            {
                if (!Directory.Exists(@"C:\Inventario"))
                {
                    Directory.CreateDirectory(@"C:\Inventario");
                }
                var NombreTabla = ConfigurationManager.AppSettings["Terminal"];
                TextWriter sw = new StreamWriter(@"C:\Inventario\"+ NombreTabla + ".txt");
                int rowcount = dataGridView1.Rows.Count;
                for (int i = 0; i < rowcount; i++)
                {
                    sw.WriteLine((dataGridView1.Rows[i].Cells[2].Value.ToString()).Trim() + ","
                                  + (dataGridView1.Rows[i].Cells[4].Value.ToString()).Trim() + "\t");
                }

                sw.Close();
                dataGridView1.DataSource = DBDatos.BorrarInventario();
                MessageBox.Show("Datos Exportados correctamente");
                txtCodigo.Select();
            }
            else
                txtCodigo.Select();
            
        }
               
        private void txtCodigo_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyValue == Convert.ToChar(Keys.Enter))
            {
                var datos = new DBDatos();
                var descripcion = datos.BuscarProducto(txtCodigo.Text);

                if (descripcion.Item2 == "")
                {
                    MessageBox.Show("NO EXISTE EL PRODUCTO", "INFORMACION DEL SISTEMA", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    limpiar();
                }
                else
                {
                    string opciones = ConfigurationManager.AppSettings["Opcion"];
                    if (opciones == "Normal")
                    {
                        txtCodigoInterno.Text = descripcion.Item1.ToString();
                        txtDescripcion.Text = descripcion.Item2;
                        txtCantidad.Select();
                    }
                    else
                    {
                        int valor = 1;
                        txtCodigoInterno.Text = descripcion.Item1.ToString();
                        txtDescripcion.Text = descripcion.Item2;
                        var registrardatos = new DBDatos();
                        var codigo = registrardatos.ConsultaId(txtCodigo.Text);
                        var consulta = registrardatos.ConsultaValida(txtCodigo.Text, codigo);
                        if (consulta.Item1 == int.Parse(txtCodigoInterno.Text))
                        {
                            
                            int cantnueva = valor + consulta.Item2;
                            var actcant = registrardatos.ActualizaCant(consulta.Item1, cantnueva);
                            limpiar();
                            txtCodigo.Select();
                            dataGridView1.DataSource = DBDatos.ListarInventario();
                            PosicionData();

                        }
                        else
                        {
                            var result = registrardatos.register(int.Parse(txtCodigoInterno.Text), txtCodigo.Text, txtDescripcion.Text, valor);
                            if (result >= 1)
                            {
                                limpiar();
                                txtCodigo.Select();
                                dataGridView1.DataSource = DBDatos.ListarInventario();
                                PosicionData();
                            }
                        }

                    }
                }
                    
            }
        }
        private void  limpiar()
        {
           
            txtCodigoInterno.Text = "";
            txtCodigo.Text = "";
            txtDescripcion.Text = "";
            txtCantidad.Text = "";
            txtId.Text = "";
            txtEditCant.Text = "";
            txtCodigo.Select();

        }
        private void PosicionData()
        {
            dataGridView1.ClearSelection();//If you want

            int nRowIndex = dataGridView1.Rows.Count - 1;
            int nColumnIndex = 3;

            dataGridView1.Rows[nRowIndex].Selected = true;
            dataGridView1.Rows[nRowIndex].Cells[nColumnIndex].Selected = true;

            //In case if you want to scroll down as well.
            dataGridView1.FirstDisplayedScrollingRowIndex = nRowIndex;
        }

        private void txtCantidad_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyValue == Convert.ToChar(Keys.Enter))
            {
                if (String.IsNullOrEmpty(txtCantidad.Text))
                {

                    MessageBox.Show("Favor de llenar todos los campos.");
                    txtCantidad.Select();
                }
                else
                {
                    string opciones = ConfigurationManager.AppSettings["Opcion"];
                    if (opciones == "Normal")
                    {
                        var registrardatos = new DBDatos();
                        var codigo = registrardatos.ConsultaId(txtCodigo.Text);
                        var consulta = registrardatos.ConsultaValida(txtCodigo.Text, codigo);
                        if (consulta.Item1 == int.Parse(txtCodigoInterno.Text))
                        {
                            int cantnueva = int.Parse(txtCantidad.Text) + consulta.Item2;
                            var actcant = registrardatos.ActualizaCant(consulta.Item1, cantnueva);
                            limpiar();
                            txtCodigo.Select();
                            dataGridView1.DataSource = DBDatos.ListarInventario();
                            PosicionData();

                        }
                        else
                        {
                           
                            var result = registrardatos.register(int.Parse(txtCodigoInterno.Text), txtCodigo.Text, txtDescripcion.Text, int.Parse(txtCantidad.Text));
                            if (result >= 1)
                            {
                                limpiar();
                                txtCodigo.Select();
                                dataGridView1.DataSource = DBDatos.ListarInventario();
                                PosicionData();
                            }
                        }
                    }
                    else
                    {
                        var registrardatos = new DBDatos();
                        var codigo = registrardatos.ConsultaId(txtCodigo.Text);
                        var consulta = registrardatos.ConsultaValida(txtCodigo.Text, codigo);
                        if (consulta.Item1 == int.Parse(txtCodigoInterno.Text))
                        {
                            int cantnueva = int.Parse(txtCantidad.Text) + consulta.Item2;
                            var actcant = registrardatos.ActualizaCant(consulta.Item1, cantnueva);
                            limpiar();
                            txtCodigo.Select();
                            dataGridView1.DataSource = DBDatos.ListarInventario();
                            PosicionData();

                        }
                        else
                        {
                            int valor = 1;
                            var result = registrardatos.register(int.Parse(txtCodigoInterno.Text), txtCodigo.Text, txtDescripcion.Text, valor);
                            if (result >= 1)
                            {
                                limpiar();
                                txtCodigo.Select();
                                dataGridView1.DataSource = DBDatos.ListarInventario();
                                PosicionData();
                            }
                        }
                    }
                }
            }
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            foreach (DataGridViewColumn c in dataGridView1.Columns)
                if (c.Name != "Cantidad") c.ReadOnly = true;
        }

        private void dataGridView1_SelectionChanged(object sender, EventArgs e)
        {
            
        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {
            FConexion frm = new FConexion();
            frm.ShowDialog();
        }

        private void dataGridView1_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            gbEditar.Visible = true;
            txtId.Text = (dataGridView1.CurrentRow.Cells["Id"].Value.ToString()).Trim();
            txtDescEdit.Text = (dataGridView1.CurrentRow.Cells["Descripcion"].Value.ToString()).Trim();
            txtEditCant.Text = (dataGridView1.CurrentRow.Cells["Cantidad"].Value.ToString()).Trim();
            //txtEditCant.SelectAll();
            //txtEditCant.SelectionStart = 0;
            //txtEditCant.SelectionLength = txtEditCant.Text.Length;
           

        }

        private void btnSaveEdit_Click(object sender, EventArgs e)
        {
            int id = int.Parse(txtId.Text);
            var editardatos = new DBDatos();
            var result = editardatos.Editar(id, int.Parse(txtEditCant.Text));
            if (result >= 1)
            {
                limpiar();
                txtCodigo.Select();
                dataGridView1.DataSource = DBDatos.ListarInventario();
                PosicionData();
                gbEditar.Visible = false;
                MessageBox.Show("Cantidad Actualizada");
            }
           
        }

        private void btnEliminarReg_Click(object sender, EventArgs e)
        {
            // Configure the message box to be displayed
            const string message = "¿Realmente desea eliminar el registro?" + "\n" +
                                    "¿Deseas Continuar?";
            const string caption = "Proceso de Inventario";
            var resultado = MessageBox.Show(message, caption,
                                          MessageBoxButtons.YesNo,
                                          MessageBoxIcon.Question);

            // If the no button was pressed ...
            if (resultado == DialogResult.Yes)
            {
                int id = int.Parse(txtId.Text);
                var eliminardatos = new DBDatos();
                var result = eliminardatos.Eliminar(id);
                if (result >= 1)
                {
                    limpiar();
                    txtCodigo.Select();
                    dataGridView1.DataSource = DBDatos.ListarInventario();
                    PosicionData();
                    gbEditar.Visible = false;
                    MessageBox.Show("Registro Eliminado");
                }
            }
            else
                txtCodigo.Select();
        }

        private void pictureBox2_Click(object sender, EventArgs e)
        {
            limpiar();
            gbEditar.Visible = false;
        }
    }
}
