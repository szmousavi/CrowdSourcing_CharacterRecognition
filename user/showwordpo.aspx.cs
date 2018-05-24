using System;
using System.Collections;
using System.Configuration;
using System.Data;
 
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
 

using System.Data.SqlClient;
public partial class showNews : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SocialNetWorkConnectionString"].ConnectionString);
    

    protected void Page_Load(object sender, EventArgs e)
    {
 
        int WID;
        if (!String.IsNullOrEmpty(Request.QueryString["WID"]))
            WID = Convert.ToInt32(Request.QueryString["WID"].ToString());
        else WID = 0;
        TextBox4.Text = WID.ToString();

  
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        //SqlCommand cmd = new SqlCommand();
        int WordID = Convert.ToInt32(Request.QueryString["WID"].ToString());
        if (Session["level"].ToString() == "gold")
        {
            SqlCommand cmd = new SqlCommand("UPDATE  TabWord set po=po+5 WHERE  word_id=" + WordID.ToString() + " ", conn);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();

            SqlCommand cmd1 = new SqlCommand("select username From   TabWord   WHERE  word_id=" + WordID.ToString() + " ", conn);
            conn.Open();
            SqlDataReader reader;
            reader = cmd1.ExecuteReader();
            if (reader.HasRows == false)
            {
                conn.Close();
            }
            else
            {
                while (reader.Read())
                {
                    TextBox5.Text = reader["Username"].ToString();
                }
                conn.Close();
                SqlCommand cmdpo = new SqlCommand("UPDATE  users set po=po+.2 WHERE  Username='" + TextBox5.Text.ToString() + "' ", conn);
                conn.Open();
                cmdpo.ExecuteNonQuery();
                conn.Close();
            }
            Response.Redirect("textpo.aspx");

        }
        if (Session["level"].ToString() == "silver")
        {
            SqlCommand cmd = new SqlCommand("UPDATE  TabWord set po=po+3 WHERE  word_id=" + WordID.ToString() + " ", conn);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();

            SqlCommand cmd1 = new SqlCommand("select username From   TabWord   WHERE  word_id=" + WordID.ToString() + " ", conn);
            conn.Open();
            SqlDataReader reader;
            reader = cmd1.ExecuteReader();
            if (reader.HasRows == false)
            {
                conn.Close();
            }
            else
            {
                while (reader.Read())
                {
                    TextBox5.Text = reader["Username"].ToString();
                }
                conn.Close();
                SqlCommand cmdpo = new SqlCommand("UPDATE  users set po=po+.2 WHERE  Username='" + TextBox5.Text.ToString() + "' ", conn);
                conn.Open();
                cmdpo.ExecuteNonQuery();
                conn.Close();
            }
            Response.Redirect("textpo.aspx");
        }
        if (Session["level"].ToString() == "bronze")
        {
            SqlCommand cmd = new SqlCommand("UPDATE  TabWord set po=po+1 WHERE  word_id=" + WordID.ToString() + " ", conn);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();

            SqlCommand cmd1 = new SqlCommand("select username From   TabWord   WHERE  word_id=" + WordID.ToString() + " ", conn);
            conn.Open();
            SqlDataReader reader;
            reader = cmd1.ExecuteReader();
            if (reader.HasRows == false)
            {
                conn.Close();
            }
            else
            {
                while (reader.Read())
                {
                    TextBox5.Text = reader["Username"].ToString();
                }
                conn.Close();
                SqlCommand cmdpo = new SqlCommand("UPDATE  users set po=po+.2 WHERE  Username='" + TextBox5.Text.ToString() + "' ", conn);
                conn.Open();
                cmdpo.ExecuteNonQuery();
                conn.Close();
            }
            Response.Redirect("textpo.aspx");
       }


    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        int WordID = Convert.ToInt32(Request.QueryString["WID"].ToString());
        if (Session["level"].ToString() == "gold")
        {
            SqlCommand cmd = new SqlCommand("UPDATE  TabWord set po=po-5 WHERE  word_id=" + WordID.ToString() + " ", conn);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();

            SqlCommand cmd1 = new SqlCommand("select username From   TabWord   WHERE  word_id=" + WordID.ToString() + " ", conn);
            conn.Open();
            SqlDataReader reader;
            reader = cmd1.ExecuteReader();
            if (reader.HasRows == false)
            {
                conn.Close();
            }
            else
            {
                while (reader.Read())
                {
                    TextBox5.Text = reader["Username"].ToString();
                }
                conn.Close();
                SqlCommand cmdpo = new SqlCommand("UPDATE  users set po=po-.2 WHERE  Username='" + TextBox5.Text.ToString() + "' ", conn);
                conn.Open();
                cmdpo.ExecuteNonQuery();
                conn.Close();
            }
            Response.Redirect("textpo.aspx");

        }
        if (Session["level"].ToString() == "silver")
        {
            SqlCommand cmd = new SqlCommand("UPDATE  TabWord set po=po-3 WHERE  word_id=" + WordID.ToString() + " ", conn);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();

            SqlCommand cmd1 = new SqlCommand("select username From   TabWord   WHERE  word_id=" + WordID.ToString() + " ", conn);
            conn.Open();
            SqlDataReader reader;
            reader = cmd1.ExecuteReader();
            if (reader.HasRows == false)
            {
                conn.Close();
            }
            else
            {
                while (reader.Read())
                {
                    TextBox5.Text = reader["Username"].ToString();
                }
                conn.Close();
                SqlCommand cmdpo = new SqlCommand("UPDATE  users set po=po-.2 WHERE  Username='" + TextBox5.Text.ToString() + "' ", conn);
                conn.Open();
                cmdpo.ExecuteNonQuery();
                conn.Close();
            }
            Response.Redirect("textpo.aspx");
        }
        if (Session["level"].ToString() == "bronze")
        {
            SqlCommand cmd = new SqlCommand("UPDATE  TabWord set po=po-1 WHERE  word_id=" + WordID.ToString() + " ", conn);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();

            SqlCommand cmd1 = new SqlCommand("select username From   TabWord   WHERE  word_id=" + WordID.ToString() + " ", conn);
            conn.Open();
            SqlDataReader reader;
            reader = cmd1.ExecuteReader();
            if (reader.HasRows == false)
            {
                conn.Close();
            }
            else
            {
                while (reader.Read())
                {
                    TextBox5.Text = reader["Username"].ToString();
                }
                conn.Close();
                SqlCommand cmdpo = new SqlCommand("UPDATE  users set po=po-.2 WHERE  Username='" + TextBox5.Text.ToString() + "' ", conn);
                conn.Open();
                cmdpo.ExecuteNonQuery();
                conn.Close();
            }
            Response.Redirect("textpo.aspx");
        }
    }
}
