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
            try
            {
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
                {
                    con.Open();

                    string query = "SELECT COUNT(*) FROM [dbo].[userTable] WHERE username = @username AND Password = @password";
                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.Parameters.AddWithValue("@username", login_username.Value);
                    cmd.Parameters.AddWithValue("@password", login_pwd.Value);

                    int count = Convert.ToInt32(cmd.ExecuteScalar());

                    if (count > 0)
                    {
                        query = "SELECT [fname], [usertype] FROM [dbo].[userTable] WHERE username = @username";
                        cmd.CommandText = query;
                        using (SqlDataReader dr = cmd.ExecuteReader())
                        {
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
                    }
                    else
                    {
                        prompt.Visible = true;
                        prompt.ForeColor = System.Drawing.Color.Red;
                        prompt.Text = "Invalid username or password!";
                    }
                }
            }
            catch (Exception ex)
            {
                // Handle exceptions
                prompt.Visible = true;
                prompt.ForeColor = System.Drawing.Color.Red;
                prompt.Text = "An error occurred: " + ex.Message;
            }
        }


    }
}
