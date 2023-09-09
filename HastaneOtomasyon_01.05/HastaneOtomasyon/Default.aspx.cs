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
    public partial class Default : System.Web.UI.Page
    {
        OleDbConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {

            string CS = ConfigurationManager.ConnectionStrings["baglanti"].ConnectionString;
            con = new OleDbConnection(CS);
            con.Open();
            doktorGetir();
            gorusGetir();
            haberGetir();
        }

        private void haberGetir()
        {
            string sorgu = "SELECT TOP 4 BizdenHaberler.BH_Baslik, BizdenHaberler.BH_EklemeTarihi, BizdenHaberler.BH_Icerik, BizdenHaberler.BH_Etiket1, BizdenHaberler.BH_Etiket2, BizdenHaberler.BH_Etiket3, BizdenHaberler.BH_Resim, BizdenHaberler.BH_Ekleyen FROM BizdenHaberler ORDER BY BizdenHaberler.BH_EklemeTarihi DESC";
            OleDbCommand cmd = new OleDbCommand(sorgu, con);
            OleDbDataReader dr = cmd.ExecuteReader();
            List<Haberler> haberliste = new List<Haberler>();
            string[] aylar = { "", "OCA", "ŞUB", "MAR", "NİS", "MAY", "HAZ", "TEM", "AĞU", "EYL", "EKİ", "KAS", "ARA" };

            while (dr.Read())
            {
                Haberler haber = new Haberler();
                string tarih = ((DateTime)dr["BH_EklemeTarihi"]).ToShortDateString();
                string[] tarihBilgi = tarih.Split('.');
                haber.Yil = tarihBilgi[2];
                haber.Ay = aylar[int.Parse(tarihBilgi[1])];
                if (int.Parse(tarihBilgi[0]) < 10)
                {
                    haber.Gun = "0" + tarihBilgi[0];
                }
                else
                {
                    haber.Gun = tarihBilgi[0];
                }

                haber.Baslik = dr["BH_Baslik"].ToString();
                haber.Icerik = dr["BH_Icerik"].ToString();
                haber.Etiket1 = dr["BH_Etiket1"].ToString();
                haber.Etiket2 = dr["BH_Etiket2"].ToString();
                haber.Etiket3 = dr["BH_Etiket3"].ToString();
                haber.Ekleyen = dr["BH_Ekleyen"].ToString();
                haber.Resim = "images/" + dr["BH_Resim"].ToString();
                haberliste.Add(haber);
            }
            rpt_BizdenHaberler.DataSource = haberliste;
            rpt_BizdenHaberler.DataBind();
        }

        private void gorusGetir()
        {
            string sorgu = "SELECT TOP 3 HastaBilgileri.adSoyad, HastaGorus.HG_Gorus, Bolumler.B_Adi FROM Bolumler INNER JOIN(HastaBilgileri INNER JOIN HastaGorus ON HastaBilgileri.tckimlik = HastaGorus.HG_TCKimlik) ON Bolumler.B_No = HastaGorus.HG_Bolum ORDER BY HastaGorus.HG_EklemeTarihi DESC";
            OleDbCommand cmd = new OleDbCommand(sorgu, con);
            OleDbDataReader dr = cmd.ExecuteReader();
            rpt_hastaGorus.DataSource = dr;
            rpt_hastaGorus.DataBind();

        }

        private void doktorGetir()
        {
            ArrayList tckimlik = new ArrayList();
            ArrayList tckimlikfiltre = new ArrayList();


            string sorgu = "SELECT D_TCKimlik FROM DoktorBilgileri";
            OleDbCommand cmd = new OleDbCommand(sorgu, con);
            OleDbDataReader oku = cmd.ExecuteReader();
            while (oku.Read())
            {
                tckimlik.Add(oku["D_TCKimlik"]);
            }
            Random rnd = new Random();
            for (int i = 0; i < 3; i++)
            {
                int sayi = rnd.Next(0, tckimlik.Count);
                if (!tckimlikfiltre.Contains(tckimlik[sayi]))
                {
                    tckimlikfiltre.Add(tckimlik[sayi]);
                }
                else
                {
                    i--;
                }

            }

            string sorgu2 = "SELECT DoktorBilgileri.D_AdSoyad, Bolumler.B_Adi, DoktorBilgileri.D_FotografKucuk, DoktorBilgileri.D_Bilgiler FROM Bolumler INNER JOIN DoktorBilgileri ON Bolumler.B_No = DoktorBilgileri.D_Bolumu WHERE DoktorBilgileri.D_TCKimlik IN(@TC1, @TC2, @TC3)";
            OleDbCommand cmd2 = new OleDbCommand(sorgu2, con);
            cmd2.Parameters.AddWithValue("@TC1", tckimlikfiltre[0]);
            cmd2.Parameters.AddWithValue("@TC2", tckimlikfiltre[1]);
            cmd2.Parameters.AddWithValue("@TC3", tckimlikfiltre[2]);
            OleDbDataReader dr = cmd2.ExecuteReader();
            rpt_DoktorGetir.DataSource = dr;
            rpt_DoktorGetir.DataBind();






        }
    }
}