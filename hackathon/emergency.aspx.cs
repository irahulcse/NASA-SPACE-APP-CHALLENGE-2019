using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class Default4 : System.Web.UI.Page
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

    protected void Button1_Click(object sender, EventArgs e)
    {

       
        try
        {
            FileUpload img = (FileUpload)imgUpload;
            // Image1.ImageUrl = img. ;
            Byte[] imgByte = null;
            if (img.HasFile && img.PostedFile != null)
            {
                //To create a PostedFile
                HttpPostedFile File = imgUpload.PostedFile;
                //Create byte Array with file len
                imgByte = new Byte[File.ContentLength];
                //force the control to load data in array
                File.InputStream.Read(imgByte, 0, File.ContentLength);
            }
            // Insert the employee name and image into db
            string conn = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
            con = new SqlConnection(conn);

            con.Open();
            string sql = "INSERT INTO emergency VALUES(@name, @email,@mobile,@image,@lat,@long,@descr,@address) SELECT @@IDENTITY";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@name", TextBox1.Text.Trim());
            cmd.Parameters.Add("@email", SqlDbType.VarChar, 50).Value = TextBox2.Text;
            cmd.Parameters.Add("@mobile", SqlDbType.BigInt).Value = TextBox3.Text;
            cmd.Parameters.AddWithValue("@image", imgByte);
            cmd.Parameters.Add("@lat", SqlDbType.Float).Value = H.Value;
            cmd.Parameters.Add("@long", SqlDbType.Float).Value = Hh.Value;
            cmd.Parameters.Add("@descr", SqlDbType.VarChar, 500).Value = TextBox4.Text;
            cmd.Parameters.Add("@address", SqlDbType.VarChar, 50).Value = x.Value;
            cmd.ExecuteNonQuery();
            lblResult.Text = "Saved Suceesfully";
            //int id = Convert.ToInt32(cmd.ExecuteScalar());
            //lblResult.Text = String.Format("Employee ID is {0}", id);
            // Response.Redirect("Handler.ashx");
         //   Image1.ImageUrl = "~/ShowImage.ashx?id=" + id;
        }
        catch
        {
            lblResult.Text = "There was an error";
        }
        finally
        {            
            con.Close();
        }
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
}