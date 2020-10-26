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
    public partial class yorumcevap : System.Web.UI.Page
    {

sqlbaglantisi baglan = new sqlbaglantisi();
        string makaleID = "";

        protected void btn_yorumcevap_Click(object sender, EventArgs e)
        {

            makaleID = Request.QueryString["makaleID"];
            SqlCommand cmdcvpyaz = new SqlCommand("insert into Yorum (yorumAdSoyad,yorumIcerik,yorumResim,makaleID) values ('"+txt_adminadsoyad.Text+"','"+txt_yorumIcerik.Text+"','/temalar/admin.png','"+makaleID+"')",baglan.baglan());

            cmdcvpyaz.ExecuteNonQuery();
            Response.Redirect("yorumlar.aspx");
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["adminKullanici"] == null)
            {
                Response.Redirect("yoneticigiris.aspx");
            }
        }
    }
}