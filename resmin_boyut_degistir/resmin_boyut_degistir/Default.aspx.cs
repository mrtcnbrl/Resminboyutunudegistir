using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Data.OleDb;

public partial class _Default : System.Web.UI.Page
{
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            string resimadi = null;
            resimadi = FileUpload1.FileName;
            FileUpload1.SaveAs(Server.MapPath("Eskiimages/" + resimadi));
            Bitmap resim = new Bitmap(Server.MapPath("Eskiimages/" + resimadi));
            Image1.ImageUrl = "Eskiimages/" + resimadi;
            Label2.Text = resim.Width + " * " + resim.Height;
            Bitmap yresim = new Bitmap(resim, Convert.ToInt32(TextBox1.Text), Convert.ToInt32(TextBox2.Text));
            yresim.Save(Server.MapPath("Yeniimages/" + resimadi));
            Image2.ImageUrl = "Yeniimages/" + resimadi;
            resimadi = "Yeniimages/" + resimadi;
            Label3.Text = yresim.Width + " * " + yresim.Height;
            OleDbConnection baglanti = new OleDbConnection("Provider=microsoft.ace.oledb.12.0;Data source=" + Server.MapPath("App_Data/data.accdb"));
            baglanti.Open();
            OleDbCommand cmd = new OleDbCommand("Insert Into Resimler(ResimYolu) values('" + resimadi + "')", baglanti);
            cmd.ExecuteNonQuery();
            baglanti.Close();
            baglanti.Dispose();    
        }
        catch 
        {

            Response.Write(" *** Yeni dosya boyut girişi yapmalsınız ***");
        }
                      
                
    }   
    
}