using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Threading;


public partial class login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {

        con.ConnectionString = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }

    }
    private Int32 Check(String u, String p)
    {
        SqlCommand cmd = new SqlCommand("logincheck1", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@un", SqlDbType.VarChar, 50).Value = u;
        cmd.Parameters.Add("@up", SqlDbType.VarChar, 50).Value = p;
        cmd.Parameters.Add("@ret", SqlDbType.Int);
        cmd.Parameters["@ret"].Direction = ParameterDirection.ReturnValue;
        cmd.ExecuteNonQuery();
        Int32 k = Convert.ToInt32(cmd.Parameters["@ret"].Value);
        cmd.Dispose();
        return k;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Int32 d = Check(TextBox1.Text, Textbox2.Text);
        if (d == -1)
        {
            Response.Write("<h3>Wrong Username</h3>");
        }
        if (d == 1)
        {
            Response.Write("<h3>Wrong Password</h3>");
        }
        if (d == 2)
        {

            Response.Redirect("index.aspx");
        }

    }


   
}