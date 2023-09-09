using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.OleDb;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace HastaneOtomasyon.Admin
{
    public partial class HastaRandevu : System.Web.UI.Page
    {
        OleDbConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            string CS = ConfigurationManager.ConnectionStrings["baglanti"].ConnectionString;
            con = new OleDbConnection(CS);
            if (!IsPostBack)
            {
                BolumYukle();
                txt_RTrh.Text = DateTime.Today.ToShortDateString();
            }

        }

        private void BolumYukle()
        {
            con.Open();
            string sorgu = "SELECT * FROM Bolumler WHERE B_No>=0 ORDER BY B_Adi ";
            OleDbCommand cmd = new OleDbCommand(sorgu, con);

            OleDbDataReader dr = cmd.ExecuteReader();
            drp_Bolum.DataSource = dr;
            drp_Bolum.DataTextField = "B_Adi";
            drp_Bolum.DataValueField = "B_No";
            drp_Bolum.DataBind();
            drp_Bolum.Items.Insert(0, new ListItem("Lütfen bir bölüm seçiniz", "-1"));
            con.Close();
        }

        private void DoktorYukle()
        {
            con.Open();
            string sorgu = "SELECT * FROM DoktorBilgileri WHERE D_Bolumu=@D_Bolumu ORDER BY D_AdSoyad ";
            OleDbCommand cmd = new OleDbCommand(sorgu, con);
            cmd.Parameters.AddWithValue("@D_Bolumu", drp_Bolum.SelectedValue);
            OleDbDataReader dr = cmd.ExecuteReader();
            drp_Doktor.DataSource = dr;
            drp_Doktor.DataTextField = "D_AdSoyad";
            drp_Doktor.DataValueField = "D_TCKimlik";
            drp_Doktor.DataBind();
            drp_Doktor.Items.Insert(0, new ListItem("Lütfen bir doktor seçiniz", "-1"));
            con.Close();
        }

        protected void drp_Bolum_SelectedIndexChanged(object sender, EventArgs e)
        {
            DoktorYukle();
            drp_Doktor.Enabled = true;
        }

        protected void drp_Doktor_SelectedIndexChanged(object sender, EventArgs e)
        {
            HastaRandevuBilgiGetir();
            RandevuSaatGetir();
        }


        AlinmisRandevu AlRnd;
        List<AlinmisRandevu> bitenRndTbl = new List<AlinmisRandevu>();

        private void HastaRandevuBilgiGetir()
        {
            con.Open();
            string sorgu = "SELECT HastaRandevuBilgileri.HR_D_TCKimlik,HastaRandevuBilgileri.HR_RandevuTarihi, HastaRandevuBilgileri.HR_RandevuSaati FROM HastaRandevuBilgileri WHERE HastaRandevuBilgileri.HR_RandevuTarihi=@HR_RandevuTarihi AND HastaRandevuBilgileri.HR_D_TCKimlik=@HR_D_TCKimlik";
            OleDbCommand cmd = new OleDbCommand(sorgu, con);
            cmd.Parameters.AddWithValue("@HR_RandevuTarihi", txt_RTrh.Text);
            cmd.Parameters.AddWithValue("@HR_D_TCKimlik", drp_Doktor.SelectedValue);
            OleDbDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                AlRnd = new AlinmisRandevu();
                AlRnd.RndTarih = ((DateTime)dr["HR_RandevuTarihi"]).ToShortDateString();
                AlRnd.RndSaat = dr["HR_RandevuSaati"].ToString();
                bitenRndTbl.Add(AlRnd);
            }
            con.Close();
        }

        private void RandevuSaatGetir()
        {
            con.Open();
            string sorgu = "SELECT RandevuTablo.RT_SiraNo, RandevuTablo.RT_Kodu, RandevuTablo.RT_RandevuSaati FROM RandevuTablo, BolumDoktorRandevulari WHERE(RandevuTablo.RT_Kodu=BolumDoktorRandevulari.BD_RandevuSabah OR RandevuTablo.RT_Kodu=BolumDoktorRandevulari.BD_RandevuOgle) AND BolumDoktorRandevulari.BD_TCKimlik=@BD_TCKimlik AND RandevuTablo.RT_Kodu<>-1";
            OleDbCommand cmd = new OleDbCommand(sorgu, con);
            cmd.Parameters.AddWithValue("@BD_TCKimlik", drp_Doktor.SelectedValue);
            OleDbDataReader dr = cmd.ExecuteReader();
            rpt_RandevuSaat.DataSource = dr;
            rpt_RandevuSaat.DataBind();
            con.Close();
        }

        protected void rpt_RandevuSaat_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            //((LinkButton)e.CommandSource).ForeColor = Color.Red;

            //e.Item.Visible=false;


            //foreach (RepeaterItem item in rpt_RandevuSaat.Items)
            //{
            //    if (item.FindControl("lnkBtn_Saat") != null)
            //    {
            //        LinkButton btnSaat = (LinkButton)item.FindControl("lnkBtn_Saat");
            //        if (btnSaat.ForeColor == Color.White)
            //        {
            //            btnSaat.Attributes.Add("class", "btn btn-app btn-sm btn-light");
            //            btnSaat.ForeColor = ColorTranslator.FromHtml("#478fca");
            //        }
            //    }
            //}

            //LinkButton btnSaat1 = (LinkButton)e.Item.FindControl("lnkBtn_Saat");
            //TextBox Tarih = (TextBox)e.Item.FindControl("txt_RTrh");
            //btnSaat1.ForeColor = Color.White;
            //btnSaat1.Attributes.Add("class", "btn btn-app btn-sm btn-light");
            //iddeger = "#PageContentPlaceHolder_rpt_RandevuSaat_lnkBtn_Saat_0";
            //txt_AdSoyad.Text = Session["adSoyad"].ToString();
            //txt_Doktor.Text = drp_Bolum.SelectedItem.ToString();
            //txt_Rsaat.Text = ((LinkButton)e.CommandSource).Text;
            //txt_Doktor.Text = drp_Doktor.SelectedItem.ToString();
            //txt_Tarih.Text = Tarih.Text;
            
           
        }


        protected void btnOnay_Click(object sender, EventArgs e)
        {
            con.Open();
            string sorgu = "INSERT INTO HastaRandevuBilgileri (HR_H_TCKimlik,HR_D_TCKimlik,HR_RandevuTarihi,HR_RandevuSaati) VALUES (@HR_H_TCKimlik,@HR_D_TCKimlik,@HR_RandevuTarihi,@HR_RandevuSaati)";
            OleDbCommand cmd = new OleDbCommand(sorgu, con);
            cmd.Parameters.AddWithValue("@HR_H_TCKimlik", Convert.ToInt64(Session["tckimlik"].ToString()));
            cmd.Parameters.AddWithValue("@HR_D_TCKimlik", Convert.ToInt64(drp_Doktor.SelectedValue));
            cmd.Parameters.AddWithValue("@HR_RandevuTarihi", txt_RTrh.Text);
            cmd.Parameters.AddWithValue("@HR_RandevuSaati", HiddenField1.Value);
            int i = cmd.ExecuteNonQuery();
            if (i == 1)
            {
                Response.Redirect("AdminDefault.aspx");
            }
            else
            {
                lbl_Hata.Text = "Kaydedilemedi";
            }
        }

        protected void rpt_RandevuSaat_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType != ListItemType.Item && e.Item.ItemType != ListItemType.AlternatingItem) return;
            LinkButton btn = (LinkButton)e.Item.FindControl("lnkBtn_Saat");

            foreach (var item in bitenRndTbl)
            {
                if (txt_RTrh.Text == item.RndTarih && btn.Text == item.RndSaat)
                {
                    btn.Attributes.Add("disabled", "disabled");
                }
            }
        }
    }
}