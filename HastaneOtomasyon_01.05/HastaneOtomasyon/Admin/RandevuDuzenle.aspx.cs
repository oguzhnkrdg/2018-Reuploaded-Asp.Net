using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.OleDb;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HastaneOtomasyon.Admin
{
    public partial class RandevuDuzenle : System.Web.UI.Page
    {
        OleDbConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            lbl_Hata.Visible = false;
            string CS = ConfigurationManager.ConnectionStrings["baglanti"].ConnectionString;
            con = new OleDbConnection(CS);
            con.Open();


            if (!Page.IsPostBack)
            {           
                RandevuOzetDoldur();
                if (Request.QueryString["git"] == "sil")
                {
                    string sorgu = "DELETE FROM HastaRandevuBilgileri WHERE HR_SiraNo=@HR_SiraNo";
                    OleDbCommand cmd = new OleDbCommand(sorgu, con);
                    cmd.Parameters.AddWithValue("@HR_SiraNo", Convert.ToInt32(Request.QueryString["id"]));

                    int i = cmd.ExecuteNonQuery();
                    if (i == 1)
                    {
                        //lbl_Hata.Visible = true;
                        //lbl_Hata.Text = "Silindi";
                        RandevuOzetDoldur();
                        
                    }
                    else
                    {
                        //lbl_Hata.Visible = true;
                        //lbl_Hata.Text = "Silinmedi";
                    }

                

                }
                if (Request.QueryString["git"] == "delete")
                {
                    //Panel1.CssClass = "alert info_msg";
                    //Panel1.Visible = true;
                    //lblmesaj.Text = "İşletme Bilgileri  Başarıyla Silinmiştir";


                }
            }



        }

        private void RandevuSaatGetir()
        {

            string sorgu = "SELECT RandevuTablo.RT_SiraNo, RandevuTablo.RT_Kodu, RandevuTablo.RT_RandevuSaati FROM RandevuTablo, BolumDoktorRandevulari WHERE(RandevuTablo.RT_Kodu=BolumDoktorRandevulari.BD_RandevuSabah OR RandevuTablo.RT_Kodu=BolumDoktorRandevulari.BD_RandevuOgle) AND BolumDoktorRandevulari.BD_TCKimlik=@BD_TCKimlik AND RandevuTablo.RT_Kodu<>-1";
            OleDbCommand cmd = new OleDbCommand(sorgu, con);
            cmd.Parameters.AddWithValue("@BD_TCKimlik", drp_Doktor.SelectedValue);
            OleDbDataReader dr = cmd.ExecuteReader();
            rpt_RandevuSaat.DataSource = dr;
            rpt_RandevuSaat.DataBind();

        }

        AlinmisRandevu AlRnd;
        List<AlinmisRandevu> bitenRndTbl = new List<AlinmisRandevu>();

        private void HastaRandevuBilgiGetir()
        {

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

        }

        private void DoktorYukle()
        {
            //con.Open();        
            string sorgu = "SELECT * FROM DoktorBilgileri WHERE D_Bolumu=@D_Bolumu ORDER BY D_AdSoyad ";
            OleDbCommand cmd = new OleDbCommand(sorgu, con);
            cmd.Parameters.AddWithValue("@D_Bolumu", drp_Bolum.SelectedValue);
            OleDbDataReader dr = cmd.ExecuteReader();
            drp_Doktor.DataSource = dr;
            drp_Doktor.DataTextField = "D_AdSoyad";
            drp_Doktor.DataValueField = "D_TCKimlik";
            drp_Doktor.DataBind();
            drp_Doktor.Items.Insert(0, new ListItem("Lütfen bir doktor seçiniz", "-1"));
            //con.Close();
        }
        private void BolumYukle()
        {
            //con.Open();
            string sorgu = "SELECT * FROM Bolumler WHERE B_No>=0 ORDER BY B_Adi ";
            OleDbCommand cmd = new OleDbCommand(sorgu, con);

            OleDbDataReader dr = cmd.ExecuteReader();
            drp_Bolum.DataSource = dr;
            drp_Bolum.DataTextField = "B_Adi";
            drp_Bolum.DataValueField = "B_No";
            drp_Bolum.DataBind();
            drp_Bolum.Items.Insert(0, new ListItem("Lütfen bir bölüm seçiniz", "-1"));
            //con.Close();            
        }
        private void RandevuOzetDoldur()
        {
            //con.Open();
            string sorgu = "SELECT HastaRandevuBilgileri.HR_SiraNo, HastaRandevuBilgileri.HR_RandevuTarihi, HastaRandevuBilgileri.HR_RandevuSaati, HastaBilgileri.adSoyad, Bolumler.B_Adi, DoktorBilgileri.D_AdSoyad FROM HastaBilgileri INNER JOIN ((Bolumler INNER JOIN DoktorBilgileri ON Bolumler.B_No = DoktorBilgileri.D_Bolumu) INNER JOIN HastaRandevuBilgileri ON DoktorBilgileri.D_TCKimlik = HastaRandevuBilgileri.HR_D_TCKimlik) ON HastaBilgileri.tckimlik = HastaRandevuBilgileri.HR_H_TCKimlik WHERE (((HastaRandevuBilgileri.HR_H_TCKimlik)=[@HR_H_TCKimlik])) ORDER BY HastaRandevuBilgileri.HR_RandevuTarihi DESC";
            OleDbCommand cmd = new OleDbCommand(sorgu, con);
            cmd.Parameters.AddWithValue("@HR_H_TCKimlik", Convert.ToInt64(Session["tckimlik"]));
            OleDbDataReader dr = cmd.ExecuteReader();
            rpt_RandevuOzetTbl.DataSource = dr;
            rpt_RandevuOzetTbl.DataBind();
            //con.Close();
        }

        protected void rpt_RandevuSaat_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            foreach (RepeaterItem item in rpt_RandevuSaat.Items)
            {
                if (item.FindControl("lnkBtn_Saat") != null)
                {
                    LinkButton btnSaat = (LinkButton)item.FindControl("lnkBtn_Saat");
                    if (btnSaat.ForeColor == Color.White)
                    {
                        btnSaat.Attributes.Add("class", "btn btn-app btn-sm btn-pink");
                        btnSaat.ForeColor = ColorTranslator.FromHtml("#478fca");
                    }
                }
            }

            LinkButton btnSaat1 = (LinkButton)e.Item.FindControl("lnkBtn_Saat");
            btnSaat1.ForeColor = Color.White;
            btnSaat1.Attributes.Add("class", "btn btn-app btn-sm btn-info");
            hf_RndSaat.Value = ((LinkButton)e.CommandSource).Text;


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

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            //con.Open();
            string sorgu = "UPDATE HastaRandevuBilgileri SET HR_D_TCKimlik=@HR_D_TCKimlik,HR_RandevuTarihi=@HR_RandevuTarihi,HR_RandevuSaati=@HR_RandevuSaati WHERE HR_SiraNo=@HR_SiraNo";
            OleDbCommand cmd = new OleDbCommand(sorgu, con);
            cmd.Parameters.AddWithValue("@HR_D_TCKimlik", Convert.ToInt64(drp_Doktor.SelectedValue));
            cmd.Parameters.AddWithValue("@HR_RandevuTarihi", (Convert.ToDateTime(txt_RTrh.Text).ToString("yyyy-MM-dd")));
            cmd.Parameters.AddWithValue("@HR_RandevuSaati", hf_RndSaat.Value);
            cmd.Parameters.AddWithValue("@HR_SiraNo", Convert.ToInt32(hf_SiraNo.Value));



            int i = cmd.ExecuteNonQuery();
            if (i == 1)
            {
                lbl_Hata.Visible = true;
                lbl_Hata.Text = "Güncellendi";
                RandevuOzetDoldur();
                MultiView1_Edit.ActiveViewIndex = -1;
            }
            else
            {
                lbl_Hata.Visible = true;
                lbl_Hata.Text = "Güncellenemedi";
            }
            //con.Close();
        }

        protected void rpt_RandevuOzetTbl_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "Edit")
            {
                LinkButton btnEdit = (LinkButton)e.Item.FindControl("lnkBtn_Edit");
                hf_SiraNo.Value = e.CommandArgument.ToString();
                MultiView1_Edit.ActiveViewIndex = 0;
                BolumYukle();

                //con.Open();
                string sorgu = "SELECT HastaRandevuBilgileri.HR_RandevuTarihi, HastaRandevuBilgileri.HR_RandevuSaati, Bolumler.B_No, HastaRandevuBilgileri.HR_D_TCKimlik FROM HastaBilgileri INNER JOIN ((Bolumler INNER JOIN DoktorBilgileri ON Bolumler.B_No = DoktorBilgileri.D_Bolumu) INNER JOIN HastaRandevuBilgileri ON DoktorBilgileri.D_TCKimlik = HastaRandevuBilgileri.HR_D_TCKimlik) ON HastaBilgileri.tckimlik = HastaRandevuBilgileri.HR_H_TCKimlik WHERE (((HastaRandevuBilgileri.HR_SiraNo)=@HR_H_SiraNo))";
                OleDbCommand cmd = new OleDbCommand(sorgu, con);
                cmd.Parameters.AddWithValue("@HR_SiraNo", hf_SiraNo.Value);
                OleDbDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    dr.Read();
                    hf_RndSaat.Value = dr["HR_RandevuSaati"].ToString();
                    drp_Bolum.SelectedValue = dr["B_No"].ToString();
                    DoktorYukle();
                    drp_Doktor.SelectedValue = dr["HR_D_TCKimlik"].ToString();
                    txt_RTrh.Text = ((DateTime)dr["HR_RandevuTarihi"]).ToShortDateString();
                    HastaRandevuBilgiGetir();
                    RandevuSaatGetir();

                }
                else
                {

                }
                //con.Close();


            }
            //else if (e.CommandName == "Delete")
            //{
            //    LinkButton btnDelete = (LinkButton)e.Item.FindControl("lnkBtn_Delete");
            //    hf_SiraNo.Value = e.CommandArgument.ToString();
            //    Response.Write("javascript:void_confirm=confirm('Silmek istediğinize eminmisiniz?');return void_confirm;");
            //    //Response.Redirect("RandevuDuzenle.aspx?git=sil&id=" + hf_SiraNo.Value);
                
            //}
        }

        protected void drp_Bolum_SelectedIndexChanged(object sender, EventArgs e)
        {
            DoktorYukle();
        }

        protected void drp_Doktor_SelectedIndexChanged(object sender, EventArgs e)
        {
            HastaRandevuBilgiGetir();
            RandevuSaatGetir();
        }
    }
}