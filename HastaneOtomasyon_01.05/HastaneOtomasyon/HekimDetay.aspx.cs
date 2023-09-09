using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Configuration;
using System.Collections;

namespace HastaneOtomasyon
{
    public partial class HekimDetay : System.Web.UI.Page
    {
        OleDbConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            string CS = ConfigurationManager.ConnectionStrings["baglanti"].ConnectionString;
            con = new OleDbConnection(CS);
            con.Open();
            doktorGetir();
        }

        private void doktorGetir()
        {
            string sorgu = "SELECT DoktorBilgileri.D_AdSoyad, Bolumler.B_Adi, DoktorBilgileri.D_FotografBuyuk, DoktorBilgileri.D_BilgilerAyrinti FROM Bolumler INNER JOIN DoktorBilgileri ON Bolumler.B_No = DoktorBilgileri.D_Bolumu WHERE DoktorBilgileri.D_TCKimlik=@D_TCKimlik";
            OleDbCommand cmd = new OleDbCommand(sorgu, con);
            cmd.Parameters.AddWithValue("@D_TCKimlik",Convert.ToInt64(Request.QueryString["id"]));
            OleDbDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                lbl_Adsoyad_Bolum.Text =dr["D_AdSoyad"].ToString() +"</br>"+dr["B_Adi"].ToString();
                Lt_Ayrinti.Text = dr["D_BilgilerAyrinti"].ToString();
                drResim.Attributes.Add("src", dr["D_FotografBuyuk"].ToString());
                lbl_adSoyad.Text = dr["D_AdSoyad"].ToString();
            }

        }
    }
}