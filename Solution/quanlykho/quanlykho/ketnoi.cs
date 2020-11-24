using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace quanlykho
{
    class ketnoi
    {

        public static SqlConnection Conn()
        {
            string connString = "Data Source = DESKTOP-3PCK6EV\\SQLEXPRESS; Initial Catalog = quanlykho; Integrated Security = True";
            SqlConnection conn = new SqlConnection(connString);
            return conn;
        }
    }
}
