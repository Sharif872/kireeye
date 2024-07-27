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
    public partial class login : System.Web.UI.Page
    {
        string cs = "server = localhost; user = root; password =; database = rentall";
        protected void Page_Load(object sender, EventArgs e)
        {
            lblinfo.Visible = false;
        }
        public void loginCode()
        {
            MySqlConnection conn = new MySqlConnection(cs);
            conn.Open();

            string sql = "select username,password from users where username='" + txtuname.Text + "'and password='" + txtpassword.Text + "'";
            MySqlCommand cmd = new MySqlCommand(sql, conn);

            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Session["user_id"] = txtuname.Text;
                Response.Redirect("index.aspx");
            }
            else
            {
                lblinfo.Text = "Invalid username or password";
            }
            conn.Close();
            txtuname.Text = "";
            txtpassword.Text = "";


        }
        protected void btnlogin_Click(object sender, EventArgs e)
        {
            loginCode();
            lblinfo.Visible = true;
        }
    }
}