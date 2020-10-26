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
    public partial class duyurular : System.Web.UI.Page
    {
         sqlbaglantisi baglan = new sqlbaglantisi();
        string duyurularID = "";
        string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["adminKullanici"] == null)
            {
                Response.Redirect("yoneticigiris.aspx");
            }

            duyurularID = Request.QueryString["duyurularID"];
            islem = Request.QueryString["islem"];
            if (islem=="sil")
            {
                SqlCommand cmddsil = new SqlCommand("delete from Duyurular where duyurularID='"+duyurularID+"'", baglan.baglan());
                cmddsil.ExecuteNonQuery();
            }

            if (Page.IsPostBack==false)
            {
                pnl_duyuruekleme.Visible = false;
                pnl_duyurudüzenle.Visible = false;

                //duyuruları getir
                SqlCommand cmddgetir = new SqlCommand("select*from Duyurular",baglan.baglan());
                SqlDataReader drdgetir = cmddgetir.ExecuteReader();
                dtl_duyurugetir.DataSource = drdgetir;
                dtl_duyurugetir.DataBind();



            }


        }

        protected void btn_deeksi_Click(object sender, EventArgs e)
        {
            pnl_duyuruekleme.Visible = false;
        }

        protected void btn_deartı_Click(object sender, EventArgs e)
        {
            pnl_duyuruekleme.Visible = true;
        }

        protected void btn_duyuruekle_Click(object sender, EventArgs e)
        {
            SqlCommand cmddekle = new SqlCommand("insert into Duyurular (duyurularBaslik,duyurularIcerik,duyurularResim) values('"+txt_dbaslik.Text+"','"+ckeditor.Text+"','/temalar/Duyuru.png')", baglan.baglan());
            cmddekle.ExecuteNonQuery();
            Response.Redirect("duyurular.aspx");
        }

        protected void btn_ddartı_Click(object sender, EventArgs e)
        {
            pnl_duyurudüzenle.Visible = true;
        }

        protected void btn_ddeksi_Click(object sender, EventArgs e)
        {
            pnl_duyurudüzenle.Visible = false;
        }
    }
}