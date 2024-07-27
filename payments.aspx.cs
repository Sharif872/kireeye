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
    public partial class payments : System.Web.UI.Page
    {
        string cs = "server = localhost; user = root; password =; database = rentall";

        protected void Page_Load(object sender, EventArgs e)
        {
            GetData();
            loadDatafromroom();

        }
        public void loadDatafromroom()
        {
            if (!IsPostBack)
            {

                MySqlConnection conn = new MySqlConnection(cs);
                conn.Open();

                string sql = "select room_id, room_number from rooms";
                MySqlCommand cmd1 = new MySqlCommand(sql, conn);


                try
                {
                    ddlepmname.DataSource = cmd1.ExecuteReader();
                    ddlepmname.DataTextField = "room_id";
                    ddlepmname.DataValueField = "room_number";
                    ddlepmname.DataBind();
                    ddlepmname.Items.Insert(0, "select room number");

                }
                catch
                {

                }

                finally
                {
                    conn.Close();


                }
            }
        }

        public void GetData()
        {
            MySqlConnection conn = new MySqlConnection(cs);
            conn.Open();
            string res = "SELECT * FROM payments";
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

            string sql = "insert into payments values(null, '" + txtusername.Text + "',  '" + ddlepmname.Text + "', '" + txtrole.Text + "')";
            MySqlCommand cmd = new MySqlCommand(sql, conn);
            cmd.ExecuteNonQuery();
            lblinfo.Text = "Inserted Success";
            conn.Close();
            lblinfo.Visible = true;
            GetData();
            lblinfo.Text = sql;
        }
    }
}