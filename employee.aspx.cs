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
    public partial class employee : System.Web.UI.Page
    {
        string cs = "server = localhost; user = root; password =; database = rentall";

        protected void Page_Load(object sender, EventArgs e)
        {
            GetData();
            loadDatafromjob();
            
        }
        public void loadDatafromjob()
        {
            if (!IsPostBack)
            {

                MySqlConnection conn = new MySqlConnection(cs);
                conn.Open();

                string sql = "select job_id, job_title from jobss";
                MySqlCommand cmd1 = new MySqlCommand(sql, conn);


                try
                {
                    ddlepmname.DataSource = cmd1.ExecuteReader();
                    ddlepmname.DataTextField = "job_title";
                    ddlepmname.DataValueField = "job_id";
                    ddlepmname.DataBind();
                    ddlepmname.Items.Insert(0, "select job title");

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
            string res = "SELECT * FROM employees";
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

            string sql = "insert into employees values(null, '" + txtusername.Text + "', '" + txtpass.Text + "', '" + ddlepmname.Text + "', '" + txtrole.Text + "')";
            MySqlCommand cmd = new MySqlCommand(sql, conn);
            cmd.ExecuteNonQuery();
            lblinfo.Text = "Inserted Success";
            conn.Close();
            lblinfo.Visible = true;
            GetData();
        }
    }
}