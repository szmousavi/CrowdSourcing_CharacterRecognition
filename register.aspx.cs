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
using System.Globalization;
using System.Data.SqlClient;

public partial class register : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SocialNetWorkConnectionString"].ConnectionString);
    
    PersianCalendar pc = new PersianCalendar();
    DateTime thisDate = DateTime.Now;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == ""  ||TextBox2.Text == ""  || TextBox3.Text == ""  ||TextBox4.Text == "")
        {
            lblResult.Text = " خطا در ارسال پیام تمامی اطلاعات را وارد نمائید";
            lblResult.Visible = true;
        }
        else
        {

            //SqlCommand cmd = new SqlCommand("INSERT INTO users(username,password,email,CreateDate,IsActivated,FullName,level,po)VALUES (@username,@password,@email,@CreateDate,@IsActivated,@FullName,@level,@po) ", conn);
            SqlCommand cmd = new SqlCommand("INSERT INTO users(username,password,email,IsActivated,FullName,level,po)VALUES (@username,@password,@email,@IsActivated,@FullName,@level,@po) ", conn);

            cmd.Parameters.AddWithValue("@username",TextBox1.Text );
            cmd.Parameters.AddWithValue("@password",TextBox2.Text);
            cmd.Parameters.AddWithValue("@email", TextBox3.Text);
            //cmd.Parameters.AddWithValue("@CreateDate", thisDate.ToString());

            
            cmd.Parameters.AddWithValue("@IsActivated", "true");
            cmd.Parameters.AddWithValue("@FullName", TextBox4.Text);
            cmd.Parameters.AddWithValue("@level", "bronze");
            cmd.Parameters.AddWithValue("@po", "50");
            
            
            conn.Open();
            cmd.ExecuteNonQuery(); ;
            lblResult.Text = " پیام شما با موفقیت ارسال شد";

        }
    }
}
