using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace kireeye
{
    public partial class jobs: System.Web.UI.Page
    {
        string cs = "server= localhost; user=root; password=; database = rentall";
        protected void Page_Load(object sender, EventArgs e)
        {
            lblinfo.Visible = false;
            btnupdate.Visible = false;
            btndelete.Visible = false;
            GetData();
        }

        protected void btnragistrion_Click(object sender, EventArgs e)
        {
            MySqlConnection conn = new MySqlConnection(cs);
            conn.Open();
            string insert = "INSERT INTO jobss VALUEs (null, '" + txtusername.Text + "',  '" + txtpass.Text + "', '" + txtrole.Text + "')";
            MySqlCommand cmd = new MySqlCommand(insert, conn);
            cmd.ExecuteNonQuery();
            lblinfo.Text = "Success";
            lblinfo.Visible = true;
            conn.Close();


            txtrole.Text = "";
            txtusername.Text = "";
            txtpass.Text = "";
            txtid.Text = "";
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            MySqlConnection conn = new MySqlConnection(cs);
            conn.Open();
            string update = "update users set   job_title='" + txtusername.Text + "', job_description='" + txtpass.Text + "',  date='" + txtrole.Text + "' where job_id='" + txtid.Text + "'";
            MySqlCommand cmd = new MySqlCommand(update, conn);
            cmd.ExecuteNonQuery();
            lblinfo.Text = "update success full";
            lblinfo.Visible = true;
            conn.Close();
            btnragistrion.Visible = true;


            txtrole.Text = "";
            txtusername.Text = "";
            txtpass.Text = "";
            txtid.Text = "";


        }

        protected void btndelete_Click(object sender, EventArgs e)
        {
            MySqlConnection conn = new MySqlConnection(cs);
            conn.Open();
            string delete = "delete from jobss where job_id='" + txtid.Text + "'";
            MySqlCommand cmd = new MySqlCommand(delete, conn);
            cmd.ExecuteNonQuery();
            lblinfo.Text = "delete success full";
            lblinfo.Visible = true;
            conn.Close();
            btnragistrion.Visible = true;


            txtrole.Text = "";
            txtusername.Text = "";
            txtpass.Text = "";
            txtid.Text = "";
        }

        protected void btnsearch_Click(object sender, EventArgs e)
        {
            MySqlConnection conn = new MySqlConnection(cs);
            conn.Open();
            string query = " select *from jobss where job_id= ' " + txtid.Text + " '";
            MySqlCommand cmd = new MySqlCommand(query, conn);
            MySqlDataReader dr;
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                
                txtusername.Text = dr["job_title"].ToString();
                txtpass.Text = dr["job_description"].ToString();
                txtrole.Text = dr["date"].ToString();
            }
            else
            {
                lblinfo.Text = "WAA LA WAA YAY";
            }
            conn.Close();
            btnragistrion.Visible = false;
            btnupdate.Visible = true;
            btndelete.Visible = true;
        }

        public void GetData()
        {
            MySqlConnection conn = new MySqlConnection(cs);
            conn.Open();
            string res = "select *from jobss";
            MySqlCommand cmd = new MySqlCommand(res, conn);
            cmd.ExecuteNonQuery();
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            usersdgv.DataSource = dt;
            usersdgv.DataBind();
            conn.Close();
        }
    }
}