using System;
using System.Configuration;
using System.Data.SqlClient;
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
                        int count = Convert.ToInt32(cmd.ExecuteScalar());
                        cmd.Parameters.AddWithValue("@username", username);

                        if (count > 0)
                        {
                            prompt.Visible = true;
                            prompt.ForeColor = System.Drawing.Color.Red;
                            prompt.Text = "Username has been taken!";
                        }
                        else
                        {
                            // Validate email format
                            if (!IsValidEmail(email.Text))
                            {
                                throw new Exception("Invalid email format.");
                            }

                            string insertQuery = "INSERT INTO [dbo].[userTable] ([fname], [lname], [gender], [interestedTopic], [email], [username], [password], [usertype]) VALUES (@firstName, @lastName, @gender, @interestedTopic, @email, @username, @password, @usertype)";
                            using (SqlCommand insertCmd = new SqlCommand(insertQuery, con))
                            {
                                insertCmd.Parameters.AddWithValue("@firstName", fname.Text);
                                insertCmd.Parameters.AddWithValue("@lastName", lname.Text);
                                insertCmd.Parameters.AddWithValue("@gender", gender.SelectedValue);
                                insertCmd.Parameters.AddWithValue("@interestedTopic", interestedTopic.SelectedValue);
                                insertCmd.Parameters.AddWithValue("@email", email.Text);
                                insertCmd.Parameters.AddWithValue("@username", username);
                                insertCmd.Parameters.AddWithValue("@password", pwd.Text);
                                insertCmd.Parameters.AddWithValue("@usertype", "member"); 
                                insertCmd.ExecuteNonQuery();
                            }
                            Response.Redirect("~/9Login/Login.aspx");
                        }
                    }
                    con.Close();
                }
            }
            catch (Exception)
            {
                // Display an error message to the user
                prompt.Visible = true;
                prompt.ForeColor = System.Drawing.Color.Red;
                prompt.Text = "Registration failed!";
            }
        }

        protected bool IsValidEmail(string email)
        {
            try
            {
                var addr = new System.Net.Mail.MailAddress(email);
                return addr.Address == email;
            }
            catch
            {
                return false;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

    }
}
