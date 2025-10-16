using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace SmartBank
{
    public partial class Contactusaspx : System.Web.UI.Page
    {
       protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string name = txtName.Text.Trim();
                string email = txtEmail.Text.Trim();
                string subject = txtSubject.Text.Trim();
                string message = txtMessage.Text.Trim();
                string date = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");

                string connectionString = ConfigurationManager.ConnectionStrings["BankDB"].ConnectionString;
                if (connectionString.ToLower().StartsWith("metadata="))
                {
                    System.Data.Entity.Core.EntityClient.EntityConnectionStringBuilder efBuilder = new System.Data.Entity.Core.EntityClient.EntityConnectionStringBuilder(connectionString);
                    connectionString = efBuilder.ProviderConnectionString;
                }
                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    string query = "INSERT INTO ContactMessages (FullName, Email, Subject, Message, DateSent) VALUES (@FullName, @Email, @Subject, @Message, @DateSent)";
                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.Parameters.AddWithValue("@FullName", name);
                    cmd.Parameters.AddWithValue("@Email", email);
                    cmd.Parameters.AddWithValue("@Subject", subject);
                    cmd.Parameters.AddWithValue("@Message", message);
                    cmd.Parameters.AddWithValue("@DateSent", date);

                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }

                lblMessage.Text = "تم إرسال رسالتك بنجاح، شكرًا لتواصلك معنا.";
                pnlForm.Visible = false;
            }
        }
    }
}