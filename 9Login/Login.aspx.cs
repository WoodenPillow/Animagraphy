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
            /*
            string connectionString = ConfigurationManager.ConnectionStrings["assignmentDatabase"].ConnectionString;

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = "SELECT COUNT(*) FROM [dbo].[ass_database] WHERE username = @username AND Password = @password";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@username", login_username.Value);
                cmd.Parameters.AddWithValue("@password", login_pwd.Value);

                try
                {
                    con.Open();
                    int count = Convert.ToInt32(cmd.ExecuteScalar());

                    if (count > 0)
                    {
                        query = "SELECT [First Name], [Usertype] FROM [dbo].[ass_database] WHERE username = @username";
                        cmd.CommandText = query;
                        SqlDataReader dr = cmd.ExecuteReader();

                        string type = "";
                        string name = "";

                        while (dr.Read())
                        {
                            type = dr["usertype"].ToString().Trim();
                            name = dr["First Name"].ToString().Trim();
                        }

                        Session["fname"] = name;

                        if (type == "admin")
                        {
                            Response.Redirect("adminDashboard.aspx");
                        }
                        else if (type == "member")
                        {
                            Response.Redirect("memberDashboard.aspx");
                        }
                        else
                        {
                            prompt.Visible = true;
                            prompt.ForeColor = System.Drawing.Color.Red;
                            prompt.Text = "Username and Password Mismatch!";
                        }
                    }
                    else
                    {
                        prompt.Visible = true;
                        prompt.ForeColor = System.Drawing.Color.Red;
                        prompt.Text = "Invalid username or password!";
                    }
                }
                catch (Exception ex)
                {
                    // Handle exceptions (e.g., logging, displaying error message)
                    prompt.Visible = true;
                    prompt.ForeColor = System.Drawing.Color.Red;
                    prompt.Text = "An error occurred: " + ex.Message;
                }
            }
            */
        }
    }
}
