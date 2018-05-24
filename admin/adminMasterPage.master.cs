using System;
using System.Collections;
using System.Configuration;
using System.Data;

using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;


public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //string strname = Session["User_ID_"].ToString();
        //string strlevel = Session["levl"].ToString();
        //string Strpath = Session["pathupload"].ToString();

        Label1.Text = Session["Username"].ToString();
        Label2.Text = Session["level"].ToString();
        Label3.Text = Session["po"].ToString();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        Session.Clear();
        Session.Abandon();
        Response.Redirect("../default.aspx");
    }
}
