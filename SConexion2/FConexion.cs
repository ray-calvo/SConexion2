using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace SConexion2
{
    public partial class FConexion : Form
    {
        public FConexion()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            string nConexion = "Data Source="+txtServidor.Text+";Initial Catalog="+txtDB.Text+ ";Integrated Security=SSPI;";
            string nTerminal = (string)cbTerminal.SelectedItem;
            string nOptions = (string)cmbOptions.SelectedItem;
            DBDatos.cambiarConexion(nConexion,nTerminal,nOptions);
        }

       

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
