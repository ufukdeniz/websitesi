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
    public partial class mesajlar : System.Web.UI.Page
    {
sqlbaglantisi baglan = new sqlbaglantisi();
        string iletisimID = "";
        string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["adminKullanici"] == null)
            {
                Response.Redirect("yoneticigiris.aspx");
            }

            iletisimID = Request.QueryString["iletisimID"];
            islem = Request.QueryString["islem"];
            if (islem=="sil")
            {
                SqlCommand cmdsil = new SqlCommand("delete from Iletisim where iletisimID='"+iletisimID+"'", baglan.baglan());
                cmdsil.ExecuteNonQuery();
                Response.Redirect("mesajlar.aspx");
            }


            if (Page.IsPostBack==false)
            {
                dtl_mesaj.Visible = false;
            }

            SqlCommand cmdmesaj = new SqlCommand("select*from Iletisim", baglan.baglan());
            SqlDataReader drmesaj = cmdmesaj.ExecuteReader();
            dtl_mesajicerik.DataSource = drmesaj;
            dtl_mesajicerik.DataBind();
            

        }

        protected void btn_meartı_Click(object sender, EventArgs e)
        {
            dtl_mesaj.Visible = true;
        }

        protected void btn_meeksi_Click(object sender, EventArgs e)
        {
            dtl_mesaj.Visible = false;
        }
    }
}