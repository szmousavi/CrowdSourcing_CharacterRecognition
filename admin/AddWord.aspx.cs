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
 
using System.IO;

public partial class AdminNews_AddNews : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["SocialNetWorkConnectionString"].ConnectionString);
    
    
    protected void Page_Load(object sender, EventArgs e)
    {
        lblError.Visible = true;
 
   
    } 

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        Random rnd = new Random();
        string fileName = Path.GetFileNameWithoutExtension(PhotoUpload.FileName) +
                                rnd.Next(1000, 10000).ToString();
 
        DateTime dt = DateTime.Now;
        string ext = Path.GetExtension(PhotoUpload.FileName);

        if (PhotoUpload.FileName.Length == 0  )
        {
            lblError.Text += "" + "لطفا اطلاعات را کامل وارد نمایید ";
         }
 
        else if (PhotoUpload.FileName.Length==0)
        {
 
            lblError.Text += "" + "لطفا یک تصویر انتخاب نمائید ";
 
        }
        else if (PhotoUpload.HasFile)
        {
            if (!CheckFileType(PhotoUpload.FileName))
            {
                lblError.Text += "</br>" + "نوع فایل نادرست می باشد!";
            }
            else if (!CheckFileSize(PhotoUpload))
            {
                lblError.Text += "</br>" + "اندازه فایل بزرگتر از 1 مگابایت است";
            }
            else
            {
                fileName = "Photos/" + fileName + ext;
            }
              PhotoUpload.PostedFile.SaveAs(MapPath("~/" + fileName));

              SqlCommand cmd = new SqlCommand("INSERT INTO TabWord( image,po,writer)VALUES (@image,10,@writer) ", conn);

            //cmd.Parameters.AddWithValue("@image", "../"+fileName );
            cmd.Parameters.AddWithValue("@image",  fileName);

            cmd.Parameters.AddWithValue("@writer", Session["Username"].ToString());

            
            PhotoUpload.PostedFile.SaveAs(MapPath("~/" + fileName));
   
            conn.Open();
            cmd.ExecuteNonQuery(); ;
            lblResult.Text = " پیام شما با موفقیت ارسال شد";
            Response.Redirect("Default.aspx");
         }
 


    }
    bool CheckFileType(string fileName)
    {
        string ext = Path.GetExtension(fileName);
        switch (ext.ToLower())
        {
            case ".gif": return true;
            case ".png": return true;
            case ".jpg": return true;
            case ".jpeg": return true;
            default: return false;
        }
    }
    bool CheckFileSize(FileUpload fileName)
    {
        if (fileName.PostedFile.ContentLength >= Math.Pow(2, 20)) return false;
        else return true;
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Default.aspx");
    }
 
 
 
}
