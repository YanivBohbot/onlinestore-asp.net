using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Project_Tikchoret
{
    public partial class Registration_User_to_Database : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                conn.Open();
                string checkuser = "select count(*) from Users where UserName='" + TextBox9_username.Text + "'";
                SqlCommand com = new SqlCommand(checkuser, conn);
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
                if (temp == 1)
                {
                    Response.Write("User Already Exist");

                }

                conn.Close();
            }
        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Submit_registration_Click(object sender, EventArgs e)
        {
            Response.Write("Registration Succesful !");
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                conn.Open();
                string insertQuery = "insert into Users(FirstName, LastName, UserName, mail, Password) values (@Fname, @Lname, @Uname, @email, @password)";
                SqlCommand com = new SqlCommand(insertQuery, conn);
                com.Parameters.AddWithValue("@Fname", TextBox1_first_name.Text);
                com.Parameters.AddWithValue("@Lname", TextBox2_Last_Name.Text);
                com.Parameters.AddWithValue("@Uname", TextBox9_username.Text);
                com.Parameters.AddWithValue("@email", TextBox8_email.Text);
                com.Parameters.AddWithValue("@password", TextBox10_password.Text);

                com.ExecuteNonQuery();
                Response.Redirect("Home.aspx");
                Response.Write("Registration Complited");

                conn.Close();
            }
            catch (Exception ex)
            {
                Response.Write("Error:" + ex.ToString());
            }

        }
    }
}