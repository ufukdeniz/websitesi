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
    public partial class iletisim : System.Web.UI.Page
    {
sqlbaglantisi baglan = new sqlbaglantisi();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_yorumekle_Click(object sender, EventArgs e)
        {
            SqlCommand cmdekle = new SqlCommand("insert into Iletisim(iletisimAdSoyad,iletisimEmail,iletisimIcerik)values('" + txt_adsoyad.Text + "','" + txt_mail.Text + "','" + txt_yorumicerik.Text + "')", baglan.baglan());
            cmdekle.ExecuteNonQuery();
            txt_adsoyad.Text = "";
            txt_mail.Text = "";
            txt_yorumicerik.Text = "";
            lbl_bilgi.Text = "Mesajınız kaydedildi";
        }
    }
}