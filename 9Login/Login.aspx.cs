using System;
using System.Data.SqlClient;
using System.Configuration;

namespace WAPP_Assignment
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // This method is executed when the page is loaded
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = "SELECT COUNT(*) FROM [dbo].[userTable] WHERE username = @username AND password = @password";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@username", login_username.Value);
                cmd.Parameters.AddWithValue("@password", login_pwd.Value);

                try
                {
                    con.Open();
                    int count = Convert.ToInt32(cmd.ExecuteScalar());

                    if (count > 0)
                    {
                        query = "SELECT [fname], [usertype] FROM [dbo].[userTable] WHERE username = @username";
                        cmd.CommandText = query;
                        SqlDataReader dr = cmd.ExecuteReader();

                        string type = "";
                        string name = "";

                        while (dr.Read())
                        {
                            type = dr["usertype"].ToString().Trim();
                            name = dr["fname"].ToString().Trim();
                        }

                        Session["fname"] = name;

                        if (type == "admin")
                        {
                            Response.Redirect("~/8AdminBashboard/AdminDashboard.aspx");
                        }
                        else if (type == "member")
                        {
                            Response.Redirect("~/7Matching/Matching.aspx");
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
                catch (Exception)
                {
                    prompt.Visible = true;
                    prompt.ForeColor = System.Drawing.Color.Red;
                    prompt.Text = "Invalid Input! ";
                    return;
                }

                con.Close();
            }
        }

    }
}
