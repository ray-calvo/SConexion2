using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using static System.Configuration.ConfigurationManager;

namespace SConexion2
{
    class DBDatos
    {
       
        public static string preconex = ConnectionStrings["stringConexion"].ConnectionString;
        static SqlConnection conexion = new SqlConnection(preconex);

        public bool VerifyConnection()
        {           
            try
            {
                AbrirConexion();
                CerrarConexion();
                return true;
            }
            catch
            {
                return false;
            }

        }
        static void AbrirConexion()
        {
            if (conexion.State == System.Data.ConnectionState.Closed) conexion.Open();
        }

        static void CerrarConexion()
        {
            if (conexion.State == System.Data.ConnectionState.Open) conexion.Close();
        }

        public static DataTable Listar(string nombreProcedimiento)
        {
            try
            {
                AbrirConexion();
                SqlCommand cmd = new SqlCommand(nombreProcedimiento, conexion);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                DataTable tabla = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(tabla);


                return tabla;
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                CerrarConexion();
            }
        }

        public Tuple<int,string> BuscarProducto(string barcode)
        {
            try
            {

                    AbrirConexion();
                    using (var command = new SqlCommand())
                    {
                        command.Connection = conexion;
                        command.CommandText = "select CatProductos.Codigo, CatProductos.Descripcion " +
                                             "from CatProductos " +
                                             "INNER JOIN CodigosRel " +
                                             "ON CatProductos.Codigo = CodigosRel.CodigoInt " +
                                             "where CodigosRel.CodRelacionado = @Barcode";
                        command.Parameters.AddWithValue("@Barcode", barcode);
                        command.CommandType = CommandType.Text;
                        SqlDataReader reader = command.ExecuteReader();
                        if (reader.Read() == true)
                        {
                            int codigo = reader.GetInt32(0);
                            string descripcion = reader.GetString(1);
                            return Tuple.Create(codigo, descripcion);
                        }
                        else
                            return Tuple.Create(0, "");
                    }
             

            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                CerrarConexion();
            }
        }

        public Tuple<int,int> ConsultaValida(string barcode,int codint)
        {
            try
            {
                var tabla = ConfigurationManager.AppSettings["Terminal"];
                AbrirConexion();
                using (var command = new SqlCommand())
                {
                    command.Connection = conexion;
                    command.CommandText = "select * from " + tabla + " where CodigoEan=@Barcode or CodigoInt=@CodigoInt";
                    command.Parameters.AddWithValue("@Barcode", barcode);
                    command.Parameters.AddWithValue("@CodigoInt", codint);
                    command.CommandType = CommandType.Text;
                    SqlDataReader reader = command.ExecuteReader();
                    if (reader.Read() == true)
                    {
                        int id = reader.GetInt32(1);
                        int cantidad = reader.GetInt32(4);
                        return Tuple.Create(id, cantidad);
                    }
                    else
                        return Tuple.Create(0,0);
                }

            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                CerrarConexion();
            }
        }

        public int ConsultaId (string codigobarras)
        {
            try
            {
                var tabla = ConfigurationManager.AppSettings["Terminal"];
                AbrirConexion();
                using (var command = new SqlCommand())
                {
                    command.Connection = conexion;
                    command.CommandText = "select * from CodigosRel where CodRelacionado=@Barcode";
                    command.Parameters.AddWithValue("@Barcode", codigobarras);
                    command.CommandType = CommandType.Text;
                    SqlDataReader reader = command.ExecuteReader();
                    if (reader.Read() == true)
                    {
                        int id = reader.GetInt32(0);
                        return id;
                    }
                    else
                        return 0;
                }

            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                CerrarConexion();
            }
        }
       
        public int register(int codigoInt,string codigoEan, string descripcion, int cantidad)
        {
            try
            {
                

                var tabla = ConfigurationManager.AppSettings["Terminal"];
                AbrirConexion();
                using (var command = new SqlCommand())
                {
                    command.Connection = conexion;
                    command.CommandText = "insert into " + tabla + " values(@codigoint, @codigo, @descripcion, @cantidad)";
                    command.Parameters.AddWithValue("@codigoint", codigoInt);
                    command.Parameters.AddWithValue("@codigo", codigoEan);
                    command.Parameters.AddWithValue("@descripcion", descripcion);
                    command.Parameters.AddWithValue("@cantidad", cantidad);
                    command.CommandType = CommandType.Text;
                    return command.ExecuteNonQuery();
                }
            }

            catch (Exception)
            {
                throw;
            }
            finally
            {
                CerrarConexion();
            }
        }

        public int Editar (int id, int cantidad)
        {
            try
            {
                var tabla = ConfigurationManager.AppSettings["Terminal"];
                AbrirConexion();
                using (var command = new SqlCommand())
                {
                    command.Connection = conexion;
                    command.CommandText = "update " + tabla + " set cantidad=@cantidad where id=@id";
                    command.Parameters.AddWithValue("@id", id);
                    command.Parameters.AddWithValue("@cantidad", cantidad);
                    command.CommandType = CommandType.Text;
                    return command.ExecuteNonQuery();
                }
            }

            catch (Exception)
            {
                throw;
            }
            finally
            {
                CerrarConexion();
            }
        }

        public int ActualizaCant(int id, int cantidad)
        {
            try
            {
                var tabla = ConfigurationManager.AppSettings["Terminal"];
                AbrirConexion();
                using (var command = new SqlCommand())
                {
                    command.Connection = conexion;
                    command.CommandText = "update " + tabla + " set cantidad=@cantidad where codigoint=@id";
                    command.Parameters.AddWithValue("@id", id);
                    command.Parameters.AddWithValue("@cantidad", cantidad);
                    command.CommandType = CommandType.Text;
                    return command.ExecuteNonQuery();
                }
            }

            catch (Exception)
            {
                throw;
            }
            finally
            {
                CerrarConexion();
            }
        }

        public int Eliminar(int id)
        {
            try
            {
                var tabla = ConfigurationManager.AppSettings["Terminal"];
                AbrirConexion();
                using (var command = new SqlCommand())
                {
                    command.Connection = conexion;
                    command.CommandText = "delete " + tabla + " where id=@id";
                    command.Parameters.AddWithValue("@id", id);
                    command.CommandType = CommandType.Text;
                    return command.ExecuteNonQuery();
                }
            }

            catch (Exception)
            {
                throw;
            }
            finally
            {
                CerrarConexion();
            }
        }
        public static DataTable ListarInventario()
        {
            try
            {
                var tabla = ConfigurationManager.AppSettings["Terminal"];
                AbrirConexion();
                using (var command = new SqlCommand())
                {
                    command.Connection = conexion;
                    command.CommandText = "select * from " + tabla + "" ;
                    command.CommandType = CommandType.Text;
                    DataTable table = new DataTable();
                    SqlDataAdapter da = new SqlDataAdapter(command);
                    da.Fill(table);


                    return table;
                }
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                CerrarConexion();
            }
        }

        public static DataTable BorrarInventario()
        {
            try
            {
                var tabla = ConfigurationManager.AppSettings["Terminal"];
                AbrirConexion();
                using (var command = new SqlCommand())
                {
                    command.Connection = conexion;
                    command.CommandText = "delete  from " + tabla + "";
                    command.CommandType = CommandType.Text;
                    DataTable table = new DataTable();
                    SqlDataAdapter da = new SqlDataAdapter(command);
                    da.Fill(table);


                    return table;
                }
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                CerrarConexion();
            }
        }

        public static void cambiarConexion(string cadenaConex,string terminal,string options)
        {
            String cadenaNueva = cadenaConex;
            String terminalNueva = terminal;
            string optionNueva = options;
            Configuration config = ConfigurationManager.OpenExeConfiguration(ConfigurationUserLevel.None);
            config.ConnectionStrings.ConnectionStrings["stringConexion"].ConnectionString = cadenaNueva;
            config.Save(ConfigurationSaveMode.Modified, true);
            Properties.Settings.Default.Save();
            MessageBox.Show("LA CADENA DE CONEXION SE ACTUALIZO CORRECTAMENTE", "INFORMACION DEL SISTEMA", MessageBoxButtons.OK, MessageBoxIcon.Information);
            config.AppSettings.Settings["Terminal"].Value = terminal;
            config.Save(ConfigurationSaveMode.Modified);
            Properties.Settings.Default.Save();
            config.AppSettings.Settings["Opcion"].Value = options;
            config.Save(ConfigurationSaveMode.Modified);
            Properties.Settings.Default.Save();
            MessageBox.Show("LA TERMINAL Y LA OPCION SE ACTUALIZO CORRECTAMENTE", "INFORMACION DEL SISTEMA", MessageBoxButtons.OK, MessageBoxIcon.Information);
            ConfigurationManager.RefreshSection(config.AppSettings.SectionInformation.Name);
            Application.Restart();
        }
      
    }
}
