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
    
    public partial class duyuruguncelle : System.Web.UI.Page
    {
           sqlbaglantisi baglan = new sqlbaglantisi();
        string duyurularID = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["adminKullanici"]==null)
            {
                Response.Redirect("yoneticigiris.aspx");
            }

            duyurularID = Request.QueryString["duyurularID"];
            if (Page.IsPostBack==false)
            {
                SqlCommand cmddgetir = new SqlCommand("select * from Duyurular where  duyurularID='"+duyurularID+"'",baglan.baglan());
                SqlDataReader drdgetir = cmddgetir.ExecuteReader();
                DataTable dtdgetir = new DataTable("tablo");
                dtdgetir.Load(drdgetir);
                DataRow row = dtdgetir.Rows[0];
                txt_dbaslik.Text = row["duyurularBaslik"].ToString();
                txt_dicerik.Text = row["duyurularIcerik"].ToString();



            }
        }

        protected void btn_dguncelle_Click(object sender, EventArgs e)
        {
            SqlCommand cmddguncelle = new SqlCommand("update Duyurular set duyurularBaslik='" + txt_dbaslik.Text + "',duyurularIcerik='" + txt_dicerik.Text + "'where duyurularID='"+duyurularID+"'", baglan.baglan());
            cmddguncelle.ExecuteNonQuery();
            Response.Redirect("duyurular.aspx");


        }
    }
}