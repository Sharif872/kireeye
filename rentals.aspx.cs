using MySql.Data.MySqlClient;
using System;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace kireeye
{
    public partial class rentals : System.Web.UI.Page
    {
        string cs = "server=localhost;user=root;password=;database=rentall";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadRooms();
                LoadCustomers();
                GetData();
            }
        }

        public void LoadRooms()
        {
            MySqlConnection conn = new MySqlConnection(cs);
            conn.Open();
            string sql = "SELECT room_id, room_number FROM Rooms";
            MySqlCommand cmd = new MySqlCommand(sql, conn);
            ddleproom.DataSource = cmd.ExecuteReader();
            ddleproom.DataTextField = "room_number";
            ddleproom.DataValueField = "room_id";
            ddleproom.DataBind();
            ddleproom.Items.Insert(0, "Select Room");
            conn.Close();
        }

        public void LoadCustomers()
        {
            MySqlConnection conn = new MySqlConnection(cs);
            conn.Open();
            string sql = "SELECT customer_id, name FROM Customers";
            MySqlCommand cmd = new MySqlCommand(sql, conn);
            ddlepmname.DataSource = cmd.ExecuteReader();
            ddlepmname.DataTextField = "name";
            ddlepmname.DataValueField = "customer_id";
            ddlepmname.DataBind();
            ddlepmname.Items.Insert(0, "Select Customer");
            conn.Close();
        }

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
            userdgv.DataSource = dt;
            userdgv.DataBind();
            conn.Close();
        }

        protected void btnragistrion_Click(object sender, EventArgs e)
        {
            MySqlConnection conn = new MySqlConnection(cs);
            conn.Open();
            string sql = "INSERT INTO Rentals (room_id, customer_id, rental_date, return_date) VALUES (" +
                         "'" + ddleproom.SelectedValue + "', " +
                         "'" + ddlepmname.SelectedValue + "', " +
                         "'" + txtpass.Text + "', " +
                         "'" + txtrole.Text + "')";
            MySqlCommand cmd = new MySqlCommand(sql, conn);
            cmd.ExecuteNonQuery();
            lblinfo.Text = "Inserted Successfully";
            conn.Close();
            lblinfo.Visible = true;
            GetData();
        }
    }
}
