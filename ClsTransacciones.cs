using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Trabajo
{
    public class ClsTransacciones
    {
        public string conexion()
        {
            string cn = "Data Source=LAPTOP-4D1SOPMH;Initial Catalog=HOSPEDAJE01;Integrated Security=True";
            return cn;
        }
        public DataTable Buscar_Cliente(String Buscar)
        {
            DataTable dt = new DataTable();
            using (SqlConnection cn = new SqlConnection())
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    using (SqlDataAdapter da = new SqlDataAdapter())
                    {
                        cn.ConnectionString = conexion();
                        cmd.Connection = cn;
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "Buscar_Clientess";
                        cmd.Parameters.Add("@BUSCAR", SqlDbType.VarChar).Value = Buscar;
                        da.SelectCommand = cmd;
                        cn.Open();
                        da.Fill(dt);
                        cn.Close();
                    }
                }
            }
            return dt;
        }
    }
    

}