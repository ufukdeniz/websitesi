using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Blog_Sitesi.AdminPaneli
{
    public partial class yorumlar : System.Web.UI.Page
    {
sqlbaglantisi baglan = new sqlbaglantisi();
        string yorumID = "";
        string islem = "";
        string islemiki = "";
        string makaleID = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["adminKullanici"] == null)
            {
                Response.Redirect("yoneticigiris.aspx");
            }

            yorumID = Request.QueryString["yorumID"];
            islem = Request.QueryString["islem"];
            islemiki = Request.QueryString["islemiki"];
            makaleID = Request.QueryString["makaleID"];

            if (islemiki=="siliki")
            {
                SqlCommand cmdsil = new SqlCommand("delete from Yorum where yorumID='" + yorumID + "'", baglan.baglan());
                cmdsil.ExecuteNonQuery();
                SqlCommand cmdazalt = new SqlCommand("Update Makale set makaleYorumSayisi=makaleYorumSayisi-1 where makaleID='"+makaleID+"'", baglan.baglan());
                Response.Redirect("yorumlar.aspx");


            }

            if (islem=="sil")
            {
                SqlCommand cmdsil = new SqlCommand("delete from Yorum where yorumID='" + yorumID + "'",baglan.baglan());
                cmdsil.ExecuteNonQuery();
                Response.Redirect("yorumlar.aspx");
            }
            if (Page.IsPostBack==false)
            {
                pnl_onaysızyorum.Visible = false;
                pnl_onaysızyorum.Visible = false;


            SqlCommand cmdyorum = new SqlCommand("SELECT dbo.Makale.makaleID, dbo.Makale.makaleBaslik, dbo.Makale.makaleYorumSayisi, dbo.Yorum.yorumID, dbo.Yorum.yorumAdSoyad, dbo.Yorum.yorumEmail, dbo.Yorum.yorumIcerik, dbo.Yorum.yorumTarih, dbo.Yorum.yorumResim, dbo.Yorum.yorumOnay FROM   dbo.Makale INNER JOIN dbo.Yorum ON dbo.Makale.makaleID = dbo.Yorum.makaleID where yorumOnay=0", baglan.baglan());
            SqlDataReader dryorum = cmdyorum.ExecuteReader();
            dtl_yorum.DataSource =dryorum;
            dtl_yorum.DataBind();
              
               SqlCommand cmdonayli = new SqlCommand("SELECT dbo.Makale.makaleID, dbo.Makale.makaleBaslik, dbo.Makale.makaleYorumSayisi, dbo.Yorum.yorumID, dbo.Yorum.yorumAdSoyad, dbo.Yorum.yorumEmail, dbo.Yorum.yorumIcerik, dbo.Yorum.yorumTarih, dbo.Yorum.yorumResim, dbo.Yorum.yorumOnay FROM   dbo.Makale INNER JOIN dbo.Yorum ON dbo.Makale.makaleID = dbo.Yorum.makaleID where yorumOnay=1", baglan.baglan());
                SqlDataReader dronayli = cmdonayli.ExecuteReader();
                dtl_yorumonay.DataSource = dronayli;
                dtl_yorumonay.DataBind();
            }


        }


        protected void btn_oyartı_Click(object sender, EventArgs e)
        {
            pnl_onaysızyorum.Visible = true;
        }

        protected void btn_oyeksi_Click(object sender, EventArgs e)
        {
            pnl_onaysızyorum.Visible = false;
        }

        protected void btn_ooarti_Click(object sender, EventArgs e)
        {
            pnl_onaylıyorum.Visible = true;
        }

        protected void btn_ooeksi_Click(object sender, EventArgs e)
        {
            pnl_onaylıyorum.Visible = false;
        }
    }
}