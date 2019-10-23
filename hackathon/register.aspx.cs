using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

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



    private void Clear_Rec()
    {
        TextBox1.Text = String.Empty;
        TextBox2.Text = String.Empty;
        TextBox3.Text = String.Empty;
        TextBox4.Text = String.Empty;
        TextBox5.Text = String.Empty;
        TextBox6.Text = String.Empty;
        TextBox1.Focus();

    }
   

   




    //protected void check_CheckedChanged(object sender, EventArgs e)
    //{

    //    if (check.Checked == true)
    //    {
    //        submit.Enabled = true;
    //    }
    //    else
    //    {
    //        submit.Enabled = false;
    //    }
    //}


    protected void Button1_Click1(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("register_hck1", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@email", SqlDbType.VarChar, 100).Value = (TextBox1.Text);
        cmd.Parameters.Add("@username", SqlDbType.VarChar, 100).Value = (TextBox2.Text);
        cmd.Parameters.Add("@pass", SqlDbType.VarChar, 100).Value = (TextBox3.Text);
        cmd.Parameters.Add("@conpass", SqlDbType.VarChar, 100).Value = (TextBox4.Text);
        cmd.Parameters.Add("@phone", SqlDbType.BigInt).Value = Convert.ToInt64(TextBox5.Text);
        cmd.Parameters.Add("@address", SqlDbType.VarChar, 100).Value = (TextBox6.Text);
        cmd.ExecuteNonQuery();
        con.Close();
        cmd.Dispose();
        Response.Redirect("login.aspx");
        Clear_Rec();
    }
}