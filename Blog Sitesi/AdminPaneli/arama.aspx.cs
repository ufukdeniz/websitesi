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
    public partial class arama : System.Web.UI.Page
    {sqlbaglantisi baglan = new sqlbaglantisi();
        string aranankelime = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            aranankelime = Request.QueryString["aranankelime"];
            if (Page.IsPostBack==false)
            {
                SqlCommand cmdara = new SqlCommand("SELECT dbo.Makale.makaleBaslik, dbo.Makale.makaleOzet, dbo.Makale.makaleIcerik, dbo.Makale.makaleOkunma, dbo.Makale.makaleTarih,dbo.Makale.makaleID, dbo.Makale.makaleYorumSayisi, dbo.Kategori.kategoriResmi FROM   dbo.Kategori INNER JOIN dbo.Makale ON dbo.Kategori.kategoriID = dbo.Makale.kategoriID where  makaleBaslik like '%"+aranankelime+"%' or makaleOzet like '%"+aranankelime+"%'or makaleIcerik like '%"+aranankelime+"%'", baglan.baglan());
                SqlDataReader drara = cmdara.ExecuteReader();
                dtl_ara.DataSource = drara;
                dtl_ara.DataBind();

            }
        }
    }
}