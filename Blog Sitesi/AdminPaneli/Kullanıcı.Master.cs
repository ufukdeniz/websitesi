using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;

using System.Web.UI.WebControls;

namespace Blog_Sitesi.AdminPaneli
{
    public partial class Kullanıcı : System.Web.UI.MasterPage
    {
               sqlbaglantisi baglan = new sqlbaglantisi();
        protected void Page_Load(object sender, EventArgs e)
        {

            //slider
            SqlCommand cmdslider = new SqlCommand("select TOP 5 * from Makale order by makaleOkunma Desc", baglan.baglan());
            SqlDataReader drslider = cmdslider.ExecuteReader();
            dtl_slider.DataSource = drslider;
            dtl_slider.DataBind();


            //duyurular

            SqlCommand cmdduyuru = new SqlCommand("select TOP 5 *from Duyurular order by duyurularID Desc", baglan.baglan());
            SqlDataReader drduyuru = cmdduyuru.ExecuteReader();

            dtl_duyuru.DataSource = drduyuru;
            dtl_duyuru.DataBind();

            //kategoriler

            SqlCommand cmdkategori = new SqlCommand("select*from Kategori", baglan.baglan());
            SqlDataReader drkategori = cmdkategori.ExecuteReader();

            dtl_kategorigetir.DataSource = drkategori;
            dtl_kategorigetir.DataBind();
        }

        protected void btn_ara_Click(object sender, EventArgs e)
        {
            Response.Redirect("arama.aspx?aranankelime="+txt_ara.Text);
        }
    }
}