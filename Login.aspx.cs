using System;
using System.Data.SqlClient;
using System.Configuration;

namespace WAPP_Assignment
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    con.Open();

                    // Query to check if the username and password match
                    string query = "SELECT COUNT(*) FROM [dbo].[userTable] WHERE username = @username AND password = @password";

                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        string username = login_username.Value;
                        string password = login_pwd.Value;

                        // Add parameters to the SQL query
                        cmd.Parameters.AddWithValue("@username", username);
                        cmd.Parameters.AddWithValue("@password", password);
                        int count = Convert.ToInt32(cmd.ExecuteScalar());

                        if (count > 0)
                        {
                            string userType = "";
                            SqlCommand cmdType = new SqlCommand("SELECT usertype FROM [dbo].[userTable] WHERE username = @username", con);
                            SqlDataReader dr = cmdType.ExecuteReader();

                            while (dr.Read())
                            {
                                if (!dr.IsDBNull(dr.GetOrdinal("usertype"))) // Check if the column is not null
                                {
                                    userType = dr["usertype"].ToString().Trim();
                                    break; // Exit the loop once userType is assigned
                                }
                            }

                            // Redirect users based on their user type
                            if (userType == "admin")
                            {
                                Response.Redirect("~/8AdminDashboard/AdminDashboard.aspx");
                            }
                            else if (userType == "member")
                            {
                                Response.Redirect("~/7Matching/Matching.aspx");
                            }
                            else
                            {
                                ShowErrorMessage("Username and Password Mismatch!");
                            }
                        }
                        else
                        {
                            ShowErrorMessage("Invalid username or password!");
                        }
                    }
                    con.Close();
                }
            }
            catch (Exception ex)
            {
                // Display error message if an exception occurs
                ShowErrorMessage("An error occurred: " + ex.Message);
            }

        }

        private void ShowErrorMessage(string message)
        {
            // Helper method to display error message
            prompt.Visible = true;
            prompt.ForeColor = System.Drawing.Color.Red;
            prompt.Text = message;
        }
    }
}
