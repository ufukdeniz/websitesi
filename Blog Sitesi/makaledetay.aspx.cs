using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Blog_Sitesi
{
    public partial class makaledetay : System.Web.UI.Page
    {
        sqlbaglantisi baglan = new sqlbaglantisi();
        string makaleID = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            makaleID = Request.QueryString["makaleID"];
            if (Page.IsPostBack == false)
            {
                //makale getirmek için
                SqlCommand cmdmakale = new SqlCommand("SELECT dbo.Makale.makaleBaslik, dbo.Makale.makaleIcerik,dbo.Makale.makaleID, dbo.Makale.makaleOkunma, dbo.Makale.makaleTarih, dbo.Makale.makaleYorumSayisi, dbo.Kategori.kategoriResmi,dbo.Kategori.kategoriID FROM   dbo.Kategori INNER JOIN dbo.Makale ON dbo.Kategori.kategoriID = dbo.Makale.kategoriID where dbo.Makale.makaleID='" + makaleID + "'", baglan.baglan());
                SqlDataReader drmakale = cmdmakale.ExecuteReader();

                dtl_makale.DataSource = drmakale;
                dtl_makale.DataBind();
                //makalae okunma sayısı için
                SqlCommand cmdokunma = new SqlCommand("Update Makale Set makaleOkunma=makaleOkunma+1 where makaleID='"+makaleID+"'", baglan.baglan());
                cmdokunma.ExecuteNonQuery();

                //yorumlar
                SqlCommand cmdygetir = new SqlCommand("select *from Yorum where makaleID='" + makaleID + "'and yorumOnay=1", baglan.baglan());
                SqlDataReader drygetir = cmdygetir.ExecuteReader();
                dtl_yorumlar.DataSource = drygetir;
                dtl_yorumlar.DataBind();
                

            }


        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btn_yorumekle_Click(object sender, EventArgs e)
        {
            SqlCommand cmdyorumekle = new SqlCommand("insert into yorum(yorumAdSoyad,yorumEmail,yorumIcerik,yorumResim,makaleID) values('"+txt_adsoyad.Text+"','"+txt_mail.Text+"','"+txt_yorumicerik.Text+"','/temalar/yorumcu.png','"+makaleID+"')", baglan.baglan());

            cmdyorumekle.ExecuteNonQuery();
            lbl_bilgi.Text = "Yorumunuz Başarıyla Eklendi";
            txt_adsoyad.Text = "";
            txt_mail.Text = "";
            txt_yorumicerik.Text = "";
        }
    }
}