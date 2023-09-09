using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HastaneOtomasyon.Admin
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        OleDbConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            string CS = ConfigurationManager.ConnectionStrings["baglanti"].ConnectionString;
            con = new OleDbConnection(CS);
            if (!IsPostBack)
            {
                RandevuOzetDoldur();
            }
        }

        private void RandevuOzetDoldur()
        {
            con.Open();
            string sorgu = "SELECT HastaRandevuBilgileri.HR_RandevuTarihi, HastaRandevuBilgileri.HR_RandevuSaati, HastaBilgileri.adSoyad, Bolumler.B_Adi, DoktorBilgileri.D_AdSoyad FROM HastaBilgileri INNER JOIN ((Bolumler INNER JOIN DoktorBilgileri ON Bolumler.B_No = DoktorBilgileri.D_Bolumu) INNER JOIN HastaRandevuBilgileri ON DoktorBilgileri.D_TCKimlik = HastaRandevuBilgileri.HR_D_TCKimlik) ON HastaBilgileri.tckimlik = HastaRandevuBilgileri.HR_H_TCKimlik WHERE (((HastaRandevuBilgileri.HR_H_TCKimlik)=@HR_H_TCKimlik)) ORDER BY HastaRandevuBilgileri.HR_RandevuTarihi DESC";
            OleDbCommand cmd = new OleDbCommand(sorgu, con);
            cmd.Parameters.AddWithValue("@HR_H_TCKimlik", Convert.ToInt64(Session["tckimlik"]));
            OleDbDataReader dr = cmd.ExecuteReader();
            rpt_RandevuOzetTbl.DataSource = dr;
            rpt_RandevuOzetTbl.DataBind();
            con.Close();
        }
    }
}