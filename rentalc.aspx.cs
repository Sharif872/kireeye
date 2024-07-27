using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace kireeye
{
    public partial class rentalc : System.Web.UI.Page
    {
        string cs = "server = localhost; user = root; password =; database = rentall";
        public void GetData()
        {
            MySqlConnection conn = new MySqlConnection(cs);
            conn.Open();
            string res = "SELECT r.rental_id, ro.room_number, c.name, r.rental_date, r.return_date FROM Rentals r " +
                         "JOIN Rooms ro ON r.room_id = ro.room_id " +
                         "JOIN Customers c ON r.customer_id = c.customer_id";
            MySqlCommand cmd = new MySqlCommand(res, conn);
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);

            GridView1.DataSource = dt;
            GridView1.DataBind();
            conn.Close();

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            GetData();
        }
    }
}