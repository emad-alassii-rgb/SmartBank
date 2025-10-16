using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace SmartBank
{
    public partial class Admin : System.Web.UI.Page
    {
        string connectionString = ConfigurationManager.ConnectionStrings["BankDB"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadMessages();
            }
        }

        private void LoadMessages()
        {
            if (connectionString.ToLower().StartsWith("metadata="))
            {
                System.Data.Entity.Core.EntityClient.EntityConnectionStringBuilder efBuilder = new System.Data.Entity.Core.EntityClient.EntityConnectionStringBuilder(connectionString);
                connectionString = efBuilder.ProviderConnectionString;
            }

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = "SELECT * FROM ContactMessages ORDER BY DateSent DESC";
                SqlDataAdapter da = new SqlDataAdapter(query, con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                GridViewMessages.DataSource = dt;
                GridViewMessages.DataBind();

                lblCount.Text = $"عدد الرسائل الحالية: {dt.Rows.Count}";
            }
        }

        protected void btnRefresh_Click(object sender, EventArgs e)
        {
            LoadMessages();
            lblStatus.Text = "تم تحديث البيانات بنجاح.";
        }

        protected void GridViewMessages_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            if (connectionString.ToLower().StartsWith("metadata="))
            {
                System.Data.Entity.Core.EntityClient.EntityConnectionStringBuilder efBuilder = new System.Data.Entity.Core.EntityClient.EntityConnectionStringBuilder(connectionString);
                connectionString = efBuilder.ProviderConnectionString;
            }

            int id = Convert.ToInt32(GridViewMessages.DataKeys[e.RowIndex].Value);
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = "DELETE FROM ContactMessages WHERE Id=@Id";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@Id", id);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }

            LoadMessages();
            lblStatus.Text = "تم حذف الرسالة بنجاح.";
        }
    }
}