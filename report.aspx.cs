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
    public partial class report : System.Web.UI.Page
    {
        string cs = "server = localhost; user = root; password =; database = rentall";

        protected void Page_Load(object sender, EventArgs e)
        {
            GetData();
            loadDatafromemp();

        }
        public void loadDatafromemp()
        {
            if (!IsPostBack)
            {

                MySqlConnection conn = new MySqlConnection(cs);
                conn.Open();

                string sql = "select employee_id, name from jobss";
                MySqlCommand cmd1 = new MySqlCommand(sql, conn);


                try
                {
                    ddl.DataSource = cmd1.ExecuteReader();
                    ddl.DataTextField = "name";
                    ddl.DataValueField = "employee_id";
                    ddl.DataBind();
                    ddl.Items.Insert(0, "select from emp name");

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
            string res = "SELECT * FROM reports";
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

            string sql = "insert into reports values(null, '" + txtpass.Text + "', '" + txtusername.Text + ",'" + ddl.Text + "', '" + txtrole.Text + "')";
            MySqlCommand cmd = new MySqlCommand(sql, conn);
            cmd.ExecuteNonQuery();
            lblinfo.Text = "Inserted Success";
            conn.Close();
            lblinfo.Visible = true;
            GetData();
        }
    }
}