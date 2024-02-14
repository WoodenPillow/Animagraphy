using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Security.Cryptography;

namespace WAPP_Assignment
{
    public partial class Registration : System.Web.UI.Page
        {
        protected void Button1_Click(object sender, EventArgs e)
            {
                try
                {
                // Log a message indicating that the button click event handler is being executed
                System.Diagnostics.Debug.WriteLine("Register button clicked. Processing registration...");
          
                string connectionString = ConfigurationManager.ConnectionStrings["assignmentDatabase"].ConnectionString;

                    using (SqlConnection con = new SqlConnection(connectionString))
                    {
                        con.Open();

                        string username = this.username.Text.Trim();
                        if (string.IsNullOrEmpty(username))
                        {
                            throw new Exception("Username cannot be empty.");
                        }

                        string query = "SELECT COUNT(*) FROM [dbo].[ass_database] WHERE username = @username";
                        using (SqlCommand cmd = new SqlCommand(query, con))
                        {
                            cmd.Parameters.AddWithValue("@username", username);
                            int count = Convert.ToInt32(cmd.ExecuteScalar());

                            if (count > 0)
                            {
                                prompt.Visible = true;
                                prompt.ForeColor = System.Drawing.Color.Red;
                                prompt.Text = "Username has been taken!";
                            }
                            else
                            {
                                string insertQuery = "INSERT INTO [dbo].[ass_database] ([First Name], [Last Name], Gender, [Interested Topic], Email, Username, Password) VALUES (@firstName, @lastName, @gender, @interestedTopic, @email, @username, @password)";
                                using (SqlCommand insertCmd = new SqlCommand(insertQuery, con))
                                {
                                    insertCmd.Parameters.AddWithValue("@firstName", fname.Text);
                                    insertCmd.Parameters.AddWithValue("@lastName", lname.Text);
                                    insertCmd.Parameters.AddWithValue("@gender", gender.SelectedValue);
                                    insertCmd.Parameters.AddWithValue("@interestedTopic", interestedTopic.SelectedValue);
                                    insertCmd.Parameters.AddWithValue("@email", email.Text);
                                    insertCmd.Parameters.AddWithValue("@username", username);
                                    insertCmd.Parameters.AddWithValue("@password", HashPassword(pwd.Text));
                                    insertCmd.ExecuteNonQuery();
                                }
                
                            // Ensure that the redirection to the login page is attempted
                            System.Diagnostics.Debug.WriteLine("Redirecting to Login.aspx...");
                            Response.Redirect("Login.aspx");
                             }
                         }
                     }
                }
                catch (Exception ex)
                {
                // Log any exceptions that occur during the registration process
                System.Diagnostics.Debug.WriteLine("Error occurred during registration: " + ex.Message);

                // Display an error message to the user
                prompt.Visible = true;
                prompt.ForeColor = System.Drawing.Color.Red;
                prompt.Text = "Registration failed: " + ex.Message;
            }
        }

        private string HashPassword(string password)
        {
            byte[] salt = new byte[16];
            new RNGCryptoServiceProvider().GetBytes(salt);
            var pbkdf2 = new Rfc2898DeriveBytes(password, salt, 10000);
            byte[] hash = pbkdf2.GetBytes(20);
            byte[] hashBytes = new byte[36];
            Array.Copy(salt, 0, hashBytes, 0, 16);
            Array.Copy(hash, 0, hashBytes, 16, 20);
            return Convert.ToBase64String(hashBytes);
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}
