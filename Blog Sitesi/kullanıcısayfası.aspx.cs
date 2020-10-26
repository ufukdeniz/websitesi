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
    public partial class kullanıcısayfası : System.Web.UI.Page
    {

sqlbaglantisi baglan = new sqlbaglantisi();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand cmdmakale = new SqlCommand("SELECT dbo.Makale.makaleBaslik, dbo.Makale.makaleOzet, dbo.Makale.makaleOkunma, dbo.Makale.makaleTarih,dbo.Makale.makaleID, dbo.Makale.makaleYorumSayisi, dbo.Kategori.kategoriResmi FROM   dbo.Kategori INNER JOIN dbo.Makale ON dbo.Kategori.kategoriID = dbo.Makale.kategoriID order by makaleID desc", baglan.baglan());
            SqlDataReader drmakalegetir = cmdmakale.ExecuteReader();

            dtl_makale.DataSource = drmakalegetir;
            dtl_makale.DataBind();
        }

        
    } 
}   