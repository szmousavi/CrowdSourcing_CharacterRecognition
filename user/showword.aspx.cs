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
       //int WordID = Convert.ToInt32(ViewState["WID"]);
        int WordID = Convert.ToInt32(Request.QueryString["WID"].ToString());

        SqlCommand cmd = new SqlCommand("UPDATE  TabWord set text=@text,username=@username WHERE  word_id=" + WordID.ToString() + " ", conn);

        cmd.Parameters.AddWithValue("@text", TextBox5.Text);
        cmd.Parameters.AddWithValue("@username", Session["Username"].ToString());
        
        //cmd.Parameters.AddWithValue("@WID", WordID.ToString());


        conn.Open();
        cmd.ExecuteNonQuery();
        Response.Redirect("Default.aspx");
  
    }
}
