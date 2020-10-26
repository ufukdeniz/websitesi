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
    public partial class kategoriguncelle : System.Web.UI.Page
        //bu kısım önemli
    {

        sqlbaglantisi baglan = new sqlbaglantisi();
        string kategoriID = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["adminKullanici"] == null)
            {
                Response.Redirect("yoneticigiris.aspx");
            }

            kategoriID = Request.QueryString["kategoriID"];

            if (Page.IsPostBack==false)
            {
                SqlCommand cmdkguncelle = new SqlCommand("select * from Kategori where kategoriID='"+kategoriID+"'", baglan.baglan());
                SqlDataReader drkguncelle = cmdkguncelle.ExecuteReader();
                DataTable dtkguncelle = new DataTable("tablo");
                dtkguncelle.Load(drkguncelle);
                DataRow row = dtkguncelle.Rows[0];
                txt_kadi.Text = row["kategoriAd"].ToString();
                txt_ksira.Text = row["kategoriSira"].ToString();
                txt_kadet.Text = row["kategoriAdet"].ToString();
            }

        }

        protected void btn_kgüncelle_Click(object sender, EventArgs e)
        {
            if (fu_kresmi.HasFile)
            {
                fu_kresmi.SaveAs(Server.MapPath("/kresim/" + fu_kresmi.FileName));

                SqlCommand cmdkguncelle = new SqlCommand("update Kategori set kategoriAd='"+txt_kadi.Text+"',kategoriSira='"+txt_ksira.Text+"',kategoriAdet='"+txt_kadet.Text+"',kategoriResmi='/kresim/"+fu_kresmi.FileName+"'where kategoriID='"+kategoriID+"'",baglan.baglan());
                cmdkguncelle.ExecuteNonQuery();
                Response.Redirect("kategorielr.aspx");

            }
            else
            {
                SqlCommand cmdguncelle = new SqlCommand("Update Kategori set kategoriAd='"+txt_kadi.Text+"',kategoriSira='"+txt_ksira.Text+"',kategoriAdet='"+txt_kadet.Text+"'where kategoriID='"+kategoriID+"'", baglan.baglan());
                cmdguncelle.ExecuteNonQuery();
                Response.Redirect("kategoriler.aspx");
            }

        }
    }
}