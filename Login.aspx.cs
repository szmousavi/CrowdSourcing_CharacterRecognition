using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SocialNetWorkConnectionString"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("Select * from Users  where Username = '" + TextBox1.Text + "' and Password = '" + TextBox2.Text + "'", conn);
        conn.Open();
        SqlDataReader reader;
        reader = cmd.ExecuteReader();
        if (reader.HasRows == false)
        {
            conn.Close();
            LMsg.Text = "اطلاعات وارد شده اشتباه است !";
        }
        else
        {
            //string user = "";
            //string pass = "";
            string le = "";
 
            while (reader.Read())
            {
                Session["Username"] = reader["Username"].ToString();
                Session["Password"] = reader["Password"].ToString();
                Session["level"] = reader["level"].ToString();
                Session["po"] = reader["po"].ToString();
                le = Session["level"].ToString();
            }
            if (le == "admin")
            {
                Response.Redirect("admin/Default.aspx");
                conn.Close();
            }
            else
            {
                Response.Redirect("user/Default.aspx");
                conn.Close();
            }
        }
    }
}
