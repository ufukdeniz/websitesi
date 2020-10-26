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
    
    public partial class yorumguncelle : System.Web.UI.Page
    {
sqlbaglantisi baglan = new sqlbaglantisi();
        string yorumID = "";
        string makaleID = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["adminKullanici"] == null)
            {
                Response.Redirect("yoneticigiris.aspx");
            }
            yorumID = Request.QueryString["yorumID"];
            if (Page.IsPostBack==false)
            {
                SqlCommand cmdyorumgetir = new SqlCommand("select *from Yorum where yorumID='"+yorumID+"'", baglan.baglan());
                SqlDataReader drygetir = cmdyorumgetir.ExecuteReader();
                DataTable dtygetir = new DataTable("tablo");
                dtygetir.Load(drygetir);
                DataRow row = dtygetir.Rows[0];

                txt_adsoyad.Text = row["yorumAdSoyad"].ToString();
                txt_yorumicerik.Text = row["yorumIcerik"].ToString();
            }
        }

        protected void btn_guncelle_Click1(object sender, EventArgs e)
        {
            makaleID = Request.QueryString["makaleID"];
            SqlCommand cmdonay = new SqlCommand("Update Yorum Set yorumAdSoyad='"+txt_adsoyad.Text+"',yorumIcerik='"+txt_yorumicerik.Text+"',yorumOnay='"+cbox_onay.Checked+"' where yorumID='"+yorumID+"'", baglan.baglan());
            cmdonay.ExecuteNonQuery();
           
            if (cbox_onay.Checked==true)
            {
 SqlCommand cmdekle = new SqlCommand("Update Makale set makaleYorumSayisi=makaleYorumSayisi+1 where makaleID='"+makaleID+"'", baglan.baglan());
            cmdekle.ExecuteNonQuery();
                Response.Redirect("yorumlar.aspx");
            }


            if (cbox_onay.Checked==false)
            {
                SqlCommand cmdazalt = new SqlCommand("Update Makale set makaleYorumsayisi=makaleYorumSayisi-1 where makaleID='" + makaleID + "'",baglan.baglan());
                cmdazalt.ExecuteNonQuery();
                Response.Redirect("yorumlar.aspx");
            }
        }

        
    }
}