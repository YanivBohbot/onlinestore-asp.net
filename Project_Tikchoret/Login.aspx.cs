using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace Project_Tikchoret
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Registration_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration_User_to_Database.aspx");
        }

        protected void Button1_login_Click(object sender, EventArgs e)
        {

            if (CheckUserLogin(TextBox1_Username.Text, TextBox2_Password.Text) && TextBox1_Username.Text != "Yaniv" && TextBox2_Password.Text!="123")
            {
                Label_result.Text = "Successful Login";
                Response.Redirect("User_Store.aspx");
            }
            else
                Label_result.Text = "Bad login!";

            if(TextBox1_Username.Text=="Yaniv" && TextBox2_Password.Text=="123" )
            {
                Response.Redirect("ADMINSTRATOR.aspx");
            }

        }


        private bool CheckUserLogin(string userName, string password)
        {
    string conString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    using (SqlConnection con = new SqlConnection(conString))
        {
        SqlCommand com = new SqlCommand("SELECT Username FROM Users WHERE Username = @Username AND Password = @Password", con);
        com.Parameters.Add("@Username", SqlDbType.NVarChar).Value = userName;
        com.Parameters.Add("@Password", SqlDbType.NVarChar).Value = password;
        con.Open();
                
        string result = Convert.ToString(com.ExecuteScalar());
        if (string.IsNullOrEmpty(result))
            return false;
        else
            return true;
     }
}

    }
}