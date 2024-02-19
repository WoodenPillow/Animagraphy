using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class AdminDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            if (!Page.IsPostBack)
            {
                SqlDataAdapter da = new SqlDataAdapter("select * from userTable where usertype = '" + usertype.Text + "'", con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                uname.DataSource = dt;
                uname.DataTextField = "username";
                DataBind();
                
                SqlDataAdapter da1 = new SqlDataAdapter("select * from Animals", con);
                DataTable dt1 = new DataTable();
                da1.Fill(dt1);
                animalname.DataSource = dt1;
                animalname.DataTextField = "AnimalName";
                DataBind();
                
            }

            if (!IsPostBack)
            {
                BindUserData();
            }
        }

        protected void uname_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            SqlDataAdapter da = new SqlDataAdapter("select * from userTable where username = '" + uname.Text + "'", con);
            DataTable dt = new DataTable();
            da.Fill(dt);

            fname.Text = dt.Rows[0][1].ToString();
            lname.Text = dt.Rows[0][2].ToString();
            gender.SelectedItem.Text = dt.Rows[0][3].ToString();
            interestedTopic.SelectedItem.Text = dt.Rows[0][4].ToString();
            email.Text = dt.Rows[0][5].ToString();
            pwd.Text = dt.Rows[0][7].ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            string query = "update [userTable] set fname ='" + fname.Text + "',lname = '" + lname.Text + "',gender ='" + gender.Text + "',interestedTopic ='"
                           + interestedTopic.Text + "',email='" + email.Text + "',password = '" + pwd.Text + "',usertype ='" + usertype.Text + "' where username = '"
                           + uname.Text + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();

            con.Close();
            Response.Redirect("~/8AdminDashboard/AdminDashboard.aspx");

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            string query = "delete from userTable where username = '" + uname.Text + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();

            con.Close();
            Response.Redirect("~/8AdminDashboard/AdminDashboard.aspx");
        }

        protected void gender_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void interestedtopic_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Login.aspx");
        }

        private void BindUserData()
        {
            // Write your code to fetch user data from the database
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            SqlDataAdapter da = new SqlDataAdapter("SELECT username, email, userType, gender FROM userTable", con);
            DataTable dt = new DataTable();
            da.Fill(dt);

            // Bind the data to the repeater control
            userRepeater.DataSource = dt;
            userRepeater.DataBind();
        }

        protected void addButton1_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
                {
                    con.Open();

                    string animalnameinput = TextBox1.Text.Trim();
                    string query = "select count(*) from Animals where AnimalName = '" + TextBox1.Text + "'";
                    SqlCommand cmd = new SqlCommand(query, con);
                    int check = Convert.ToInt32(cmd.ExecuteScalar().ToString());

                    if (check > 0)
                    {
                        errMsg.Visible = true;
                        errMsg.ForeColor = System.Drawing.Color.Red;
                        errMsg.Text = "Duplicated Animal Data!";
                    }

                    else
                    {
                        //create record in a table called userTable string query1
                        string query1 = "insert into Animals (AnimalName, ScientificName, Ecosystem, LifeStatus) values (@animalname, @scientificname, @ecosystem, @lifestatus) ";
                        SqlCommand cmd1 = new SqlCommand(query1, con);
                        cmd1.Parameters.AddWithValue("@animalname", TextBox1.Text);
                        cmd1.Parameters.AddWithValue("@scientificname", TextBox2.Text);
                        cmd1.Parameters.AddWithValue("@ecosystem", TextBox3.Text);
                        cmd1.Parameters.AddWithValue("@lifestatus", TextBox4.Text);
                        cmd1.ExecuteNonQuery();
                        Response.Redirect("~/8AdminDashboard/AdminDashboard.aspx");
                    }
                }
            }
            catch (Exception ex)
            {
                errMsg.Visible = true;
                errMsg.ForeColor = System.Drawing.Color.Red;
                errMsg.Text = "Failed to add animal data!" + ex.ToString();
            }
        }

        protected void animalname_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            SqlDataAdapter da = new SqlDataAdapter("select * from Animals where AnimalName = '" + animalname.Text + "'", con);
            DataTable dt = new DataTable();
            da.Fill(dt);

            scientificname.Text = dt.Rows[0][2].ToString();
            ecosystem.Text = dt.Rows[0][3].ToString();
            lifestatus.Text = dt.Rows[0][4].ToString();
        }

        protected void editButton1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            string query = "update [Animals] set ScientificName ='" + scientificname.Text + "',Ecosystem = '" + ecosystem.Text + "',LifeStatus ='" + lifestatus.Text + 
                           "' where AnimalName = '" + animalname.Text + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();

            con.Close();
            Response.Redirect("~/8AdminDashboard/AdminDashboard.aspx");

        }
        protected void editButton2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            string query = "delete from Animals where AnimalName = '" + animalname.Text + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();

            con.Close();
            Response.Redirect("~/8AdminDashboard/AdminDashboard.aspx");
        }
    }
}