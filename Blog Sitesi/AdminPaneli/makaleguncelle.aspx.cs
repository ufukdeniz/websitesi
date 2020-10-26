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
    public partial class makaleguncelle : System.Web.UI.Page
    {
        sqlbaglantisi baglan = new sqlbaglantisi();
        string makaleID = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["adminKullanici"] == null)
            {
                Response.Redirect("yoneticigiris.aspx");
            }

            makaleID = Request.QueryString["makaleID"];
            if (Page.IsPostBack==false)
            {
                SqlCommand cmdmgetir = new SqlCommand("select*from Makale where makaleID='"+makaleID+"'", baglan.baglan());
                SqlDataReader drmgetır = cmdmgetir.ExecuteReader();

                DataTable dtmgetir = new DataTable("tablo");
                dtmgetir.Load(drmgetır);
                DataRow row = dtmgetir.Rows[0];
                txt_makalebaslik.Text = row["makaleBaslik"].ToString();
                txt_makaleozet.Text = row["makaleOzet"].ToString();
                txt_yorumsayısı.Text = row["makaleYorumSayisi"].ToString();
                txt_makaleicerik.Text = row["makaleIcerik"].ToString();

                

            }
        }

        protected void btn_guncelle_Click(object sender, EventArgs e)
        {
            if (fu_slider.HasFile)

            {
                fu_slider.SaveAs(Server.MapPath("/sresim/" + fu_slider.FileName ));
                SqlCommand cmdmguncelle = new SqlCommand("update Makale set makaleBaslik='"+txt_makalebaslik.Text+"',makaleOzet='"+txt_makaleozet.Text+"',makaleIcerik='"+txt_makaleicerik.Text+"',makaleYorumSayisi='"+txt_yorumsayısı.Text+"',makaleResmi='/sresim"+fu_slider.FileName+ "'where makaleID='" + makaleID + "'", baglan.baglan());
                cmdmguncelle.ExecuteNonQuery();

                Response.Redirect("makaleler.aspx");

                    
            }
            else
            {
                SqlCommand cmdmguncelle = new SqlCommand("update Makale set makaleBaslik ='"+txt_makalebaslik.Text+"',makaleOzet='"+txt_makaleozet.Text+"',makaleIcerik='"+txt_makaleicerik.Text+"',makaleYorumSayisi='"+txt_yorumsayısı.Text+ "'where makaleID='" + makaleID + "'", baglan.baglan());
                cmdmguncelle.ExecuteNonQuery();
                Response.Redirect("makaleler.aspx");

            }
        }
    }
}