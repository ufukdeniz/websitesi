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
    public partial class kategoriler : System.Web.UI.Page
    {
        sqlbaglantisi baglan = new sqlbaglantisi();
        string kategoriID = "";
        string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["adminKullanici"] == null)
            {
                Response.Redirect("yoneticigiris.aspx");
            }

            kategoriID = Request.QueryString["kategoriID"];
            islem = Request.QueryString["islem"];

            if (islem=="sil")
            {
                SqlCommand cmdsil = new SqlCommand("delete from Kategori where  kategoriID='"+kategoriID+"'", baglan.baglan());
                cmdsil.ExecuteNonQuery();
            }
            if (Page.IsPostBack==false)
            {
                pnl_kategoriekle.Visible = false;
                pnl_kategoriDuzenle.Visible = false;
            }

            //kategorileri dataliste çekme
            SqlCommand cmdkgetir = new SqlCommand("select * from Kategori", baglan.baglan());
            SqlDataReader drkgetir = cmdkgetir.ExecuteReader();

            DataList_kategorigetir.DataSource = drkgetir;
            DataList_kategorigetir.DataBind();
        }

        protected void btn_artı_Click(object sender, EventArgs e)
        {
            pnl_kategoriekle.Visible = true;
        }

        protected void btn_eksi_Click(object sender, EventArgs e)
        {
            pnl_kategoriekle.Visible = false;
        }

        protected void btn_kategoriekle_Click(object sender, EventArgs e)
        {
            if (fu_kategoriresim.HasFile)
            {
                fu_kategoriresim.SaveAs(Server.MapPath("/kresim/" + fu_kategoriresim.FileName));

                SqlCommand cmdkekle = new SqlCommand("insert into Kategori(kategoriAd,kategoriSira,kategoriResmi) Values('"+txt_kategoriadi.Text+"','"+txt_sira.Text+"','/kresim/"+fu_kategoriresim.FileName+"')",baglan.baglan());
                cmdkekle.ExecuteNonQuery();
                Response.Redirect("kategoriler.aspx");
            }
            else
            {
                btn_kategoriekle.Text = "ResimEkleyiniz";
            }

        }

        protected void btn_keksi_Click(object sender, EventArgs e)
        {
            pnl_kategoriDuzenle.Visible = false;
        }

        protected void btn_karti_Click(object sender, EventArgs e)
        {
            pnl_kategoriDuzenle.Visible = true;
        }
    }
}