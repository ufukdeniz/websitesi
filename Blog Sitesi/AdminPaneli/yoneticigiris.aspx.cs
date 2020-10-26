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
    public partial class WebForm1 : System.Web.UI.Page
    {
        sqlbaglantisi baglan = new sqlbaglantisi();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_enter_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Select*from Admin where adminKullanici='"+txt_username.Text+"' and adminSifre='"+txt_password.Text+"'", baglan.baglan());
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Session["adminKullanici"] = dr["adminKullanici"];
                Response.Redirect("adminpaneli.aspx");
            }

            else
            {
                lbl_bilgi.Text = "Hatalı Giriş ";
            }
        }

    }
}