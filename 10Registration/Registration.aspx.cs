using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Text.RegularExpressions;
using System.Security.Cryptography;
using System.Web;

namespace WAPP_Assignment
{
    public partial class Registration : System.Web.UI.Page
        {
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    con.Open();

                    string query = "SELECT COUNT(*) FROM [dbo].[userTable] WHERE username = @username";
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@username", username.Text);
                        int count = Convert.ToInt32(cmd.ExecuteScalar());

                        if (count > 0)
                        {
                            prompt.Visible = true;
                            prompt.ForeColor = System.Drawing.Color.Red;
                            prompt.Text = "Username has been taken!";
                        }
                        else
                        {
                            if (!ValidateEmail(email.Text))
                            {
                                prompt.Text = "Invalid email format!";
                                prompt.Visible = true;
                                return;
                            }

                            string insertQuery = @" 
                                INSERT INTO [dbo].[userTable] ([fname], [lname], [gender], [interestedTopic], [email], [username], [password], [usertype]) 
                                VALUES (@firstName, @lastName, @gender, @interestedTopic, @email, @username, @password, @usertype);

                                INSERT INTO [dbo].[leaderboard] ([name], [points], [learningHours]) 
                                VALUES (@name, 0, 0);"; // Set points and learning hours to 0 for the new user

                            using (SqlCommand insertCmd = new SqlCommand(insertQuery, con))
                            {
                                insertCmd.Parameters.AddWithValue("@firstName", fname.Text);
                                insertCmd.Parameters.AddWithValue("@lastName", lname.Text);
                                insertCmd.Parameters.AddWithValue("@gender", gender.SelectedValue);
                                insertCmd.Parameters.AddWithValue("@interestedTopic", interestedTopic.SelectedValue);
                                insertCmd.Parameters.AddWithValue("@email", email.Text);
                                insertCmd.Parameters.AddWithValue("@username", username.Text);
                                insertCmd.Parameters.AddWithValue("@password", pwd.Text);
                                insertCmd.Parameters.AddWithValue("@usertype", "Member");
                                insertCmd.Parameters.AddWithValue("@name", fname.Text + " " + lname.Text); // Concatenate first name and last name
                                insertCmd.ExecuteNonQuery();
                            }
                            Response.Redirect("~/Login.aspx");
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                // Log the exception or display a user-friendly error message
                prompt.Visible = true;
                prompt.ForeColor = System.Drawing.Color.Red;
                prompt.Text = "Registration failed: " + ex.Message;
            }
        }

        private bool ValidateEmail(string email)
        {
            // Use a robust email validation regex
            string emailRegex = @"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$";
            return Regex.IsMatch(email, emailRegex);
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

    }
}
