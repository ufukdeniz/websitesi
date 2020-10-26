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
    public partial class makaleler : System.Web.UI.Page

    {
        sqlbaglantisi baglan = new sqlbaglantisi();
        string makaleID = "";
        string islem = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["adminKullanici"]==null)
            {
                Response.Redirect("yoneticigiris.aspx");
            }

            makaleID = Request.QueryString["makaleID"];
            islem = Request.QueryString["islem"];
            if (islem=="sil")
            {
                SqlCommand cmdmsil = new SqlCommand("delete from Makale where makaleID='"+makaleID+"'",baglan.baglan());
                cmdmsil.ExecuteNonQuery();

            }

            if (Page.IsPostBack==false)
            {


                pnl_makaleekle.Visible = false;
                pnl_makaleekle.Visible = false;
                pnl_makaledosya.Visible = false;

                //katerogileri getir
                SqlCommand cmdkgetir = new SqlCommand("select * from Kategori",baglan.baglan());
                SqlDataReader drkgetir = cmdkgetir.ExecuteReader();

                ddl_kategori.DataTextField = "kategoriAd";
                ddl_kategori.DataValueField = "kategoriID";
                ddl_kategori.DataSource = drkgetir;
                ddl_kategori.DataBind();
                //makale getir
                SqlCommand cmdmgetir = new SqlCommand("select*from Makale", baglan.baglan());
                SqlDataReader drmgetir = cmdmgetir.ExecuteReader();
                dtl_mgetir.DataSource = drmgetir;
                dtl_mgetir.DataBind();


                    }
        }

        protected void btn_meksi_Click(object sender, EventArgs e)
        {
            pnl_makaleekle.Visible = false;
        }

        protected void btn_marti_Click(object sender, EventArgs e)
        {
            pnl_makaleekle.Visible = true;
        }

        protected void btn_mekle_Click(object sender, EventArgs e)
        {
            if (fu_slider.HasFile)
            {
                fu_slider.SaveAs(Server.MapPath("/sresim/" + fu_slider.FileName));
                SqlCommand cmdmekle = new SqlCommand("insert into Makale(makaleBaslik,makaleOzet,makaleIcerik,makaleResmi,kategoriID)values('"+txt_makalebaslik.Text+"','"+txt_makaleozet.Text+"','"+txt_makaleicerik.Text+"','/sresim/"+fu_slider.FileName+"','"+ddl_kategori.SelectedValue+"')", baglan.baglan());

                cmdmekle.ExecuteNonQuery();

                SqlCommand cmdkadet = new SqlCommand("update Kategori set kategoriAdet=kategoriAdet+1 where kategoriID='"+ddl_kategori.SelectedValue+"'", baglan.baglan());
                cmdkadet.ExecuteNonQuery();

                Response.Redirect("makaleler.aspx");    


            }
            else
            {
                btn_mekle.Text = "Resim Ekleyiniz";
            }
        }

        protected void btn_mdartı_Click(object sender, EventArgs e)
        {
            pnl_makaleduzenle.Visible=true;
        }

        protected void btn_mdeksi_Click(object sender, EventArgs e)
        {
            pnl_makaleduzenle.Visible = false;
        }

        protected void btn_deksi_Click(object sender, EventArgs e)
        {
            pnl_makaledosya.Visible = false;
        }

        protected void btn_darti_Click(object sender, EventArgs e)
        {
            pnl_makaledosya.Visible = true;
        }

        protected void btn_mdekle_Click(object sender, EventArgs e)
        {
            if (fu_mdosya.HasFile)
            {
                fu_mdosya.SaveAs(Server.MapPath("/dosyalar/" + fu_mdosya.FileName));

                Response.Redirect("makaleler.aspx");

            }

            else
            {
                btn_mdekle.Text = "Dosya Ekleyiniz";
            }
        }
    }
}