﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace FACTURACIONUTC.Cls
{
    public class ClsProducto
    {
        public static int codigo { get; set; }
        public static string nombre { get; set; }
        public static float precio { get; set; }

        public static string BuscarProducto(string cod)
        {
            string retorno = "";
            
            SqlConnection Conn = new SqlConnection();
            try
            {
                using (Conn = DBConn.obtenerConexion())
                {
                    SqlCommand cmd = new SqlCommand("selecproducto", Conn)
                    {
                        CommandType = CommandType.StoredProcedure
                    };
                    cmd.Parameters.Add(new SqlParameter("@codigo", cod));
                   ;

                    // retorno = cmd.ExecuteNonQuery();
                    using (SqlDataReader rdr = cmd.ExecuteReader())
                    {
                        if (rdr.Read())
                        {
                            retorno = rdr["descripcion"].ToString();
                            precio = float.Parse(rdr["precio"].ToString());
                        }

                    }


                }
            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                retorno = "";
            }
            finally
            {
                Conn.Close();
                Conn.Dispose();
            }

            return retorno;
        }

    }
}