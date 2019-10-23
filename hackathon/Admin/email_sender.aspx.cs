using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Collections;

public partial class Default2 : System.Web.UI.Page
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
        SqlCommand cmd = new SqlCommand("select t.email,t3.email from register_hck t INNER JOIN emergency t3 ON t.address=t3.address ", con);
        ArrayList emailArray = new ArrayList();
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            emailArray.Add(dr["email"]);
        }
        foreach (string email in emailArray)
        {
            const string username = "dtilak1999@gmail.com";
            const string password = "Sanyam99+";
            // SmtpClient smtpclient = new SmtpClient();
            SmtpClient smtpclient = new SmtpClient();
            MailMessage mail = new MailMessage();
            MailAddress fromaddress = new MailAddress("dtilak1999@gmail.com");
            smtpclient.Host = "smtp.gmail.com";
            smtpclient.Port = 587;
            mail.From = fromaddress;
            mail.To.Add(email);
            mail.Subject = "Forest Fire in Your Area";
            mail.Body = "<html><head><title></title></head><body><p>There is a fire in your city look at in our website and aware others also</p></body></html> ";
            mail.IsBodyHtml = true;
            smtpclient.EnableSsl = true;
            smtpclient.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtpclient.Credentials = new System.Net.NetworkCredential(username, password);
            smtpclient.Send(mail);
            Label1.Text = "Your email was sent sucessfully ";
            dr.Close();
            con.Close();




        }
    }
}