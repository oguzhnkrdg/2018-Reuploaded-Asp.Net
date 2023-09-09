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
    public partial class DoktorBilgiDuzenle : System.Web.UI.Page
    {
        OleDbConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            CKEditor1.config.toolbar = new object[]
               {
                new object[] { "Source", "NewPage", "Templates" },
                new object[] { "PasteFromWord", "SpellChecker", "Scayt" },
                new object[] { "Format","Bold", "Italic", "Underline", "Strike", "-", "Subscript", "Superscript" },
                new object[] { "NumberedList", "BulletedList", "-", "Outdent", "Indent", "Blockquote"},
                new object[] { "JustifyLeft", "JustifyCenter", "JustifyRight", "JustifyBlock" },
                new object[] { "Link", "Unlink","Maximize"},
                new object[] { "Table", "HorizontalRule","SpecialChar"},
               };

            lbl_Hata.Visible = false;
            string CS = ConfigurationManager.ConnectionStrings["baglanti"].ConnectionString;
            con = new OleDbConnection(CS);
            con.Open();
            if (!Page.IsPostBack)
            {
                DoktorBilgiDoldur();
                if (Request.QueryString["git"] == "sil")
                {
                    string sorgu = "DELETE FROM DoktorBilgileri WHERE D_TCKimlik=@D_TCKimlik";
                    OleDbCommand cmd = new OleDbCommand(sorgu, con);
                    cmd.Parameters.AddWithValue("@D_TCKimlik", Convert.ToInt32(Request.QueryString["id"]));

                    int i = cmd.ExecuteNonQuery();
                    if (i == 1)
                    {
                        //lbl_Hata.Visible = true;
                        //lbl_Hata.Text = "Silindi";
                        DoktorBilgiDoldur();

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

        private void BolumDoldur()
        {
            string sorgu = "SELECT * FROM Bolumler WHERE B_No>=0 ORDER BY B_Adi ";
            OleDbCommand cmd = new OleDbCommand(sorgu, con);

            OleDbDataReader dr = cmd.ExecuteReader();
            drp_Bolum.DataSource = dr;
            drp_Bolum.DataTextField = "B_Adi";
            drp_Bolum.DataValueField = "B_No";
            drp_Bolum.DataBind();
            drp_Bolum.Items.Insert(0, new ListItem("Lütfen bir bölüm seçiniz", "-1"));
        }

        private void IlceDoldur()
        {
            string sorgu = "SELECT * FROM Ilceler WHERE ILCE_IL_KODU=@ILCE_IL_KODU AND ILCE_KODU>=0 ORDER BY ILCE_Adi";
            OleDbCommand cmd = new OleDbCommand(sorgu, con);
            cmd.Parameters.AddWithValue("@ILCE_IL_KODU",Convert.ToInt32(drp_AdresIl.SelectedValue));
            OleDbDataReader dr = cmd.ExecuteReader();
            drp_AdresIlce.DataSource = dr;
            drp_AdresIlce.DataTextField = "ILCE_Adi";
            drp_AdresIlce.DataValueField = "ILCE_KODU";
            drp_AdresIlce.DataBind();
            drp_AdresIlce.Items.Insert(0, new ListItem("Lütfen bir bölüm seçiniz", "-1"));
        }

        private void IlDoldur()
        {
            string sorgu = "SELECT * FROM Iller WHERE IL_KODU>=0 ORDER BY IL_Adi";
            OleDbCommand cmd = new OleDbCommand(sorgu, con);

            OleDbDataReader dr = cmd.ExecuteReader();
            drp_AdresIl.DataSource = dr;
            drp_AdresIl.DataTextField = "IL_Adi";
            drp_AdresIl.DataValueField = "IL_KODU";
            drp_AdresIl.DataBind();
            drp_AdresIl.Items.Insert(0, new ListItem("Lütfen bir bölüm seçiniz", "-1"));
        }

        private void DoktorBilgiDoldur()
        {
            string sorgu = "SELECT DoktorBilgileri.D_TCKimlik, DoktorBilgileri.D_AdSoyad, DoktorBilgileri.D_CepTel, DoktorBilgileri.D_Adresi, DoktorBilgileri.D_Adresili, DoktorBilgileri.D_Adresilcesi, DoktorBilgileri.D_Bolumu, DoktorBilgileri.D_Bilgiler, DoktorBilgileri.D_FotografKucuk, DoktorBilgileri.D_FotografBuyuk, DoktorBilgileri.D_BilgilerAyrinti, Iller.IL_Adi, Ilceler.ILCE_Adi, Bolumler.B_Adi FROM DoktorBilgileri,Bolumler,Iller,Ilceler WHERE Bolumler.B_No = DoktorBilgileri.D_Bolumu AND Iller.IL_KODU = Ilceler.ILCE_IL_KODU AND DoktorBilgileri.D_Adresili=Iller.IL_KODU AND DoktorBilgileri.D_Adresilcesi= Ilceler.ILCE_KODU ORDER BY DoktorBilgileri.D_AdSoyad";
            OleDbCommand cmd = new OleDbCommand(sorgu, con);
            OleDbDataReader dr = cmd.ExecuteReader();
            rpt_DoktorBilgiTbl.DataSource = dr;
            rpt_DoktorBilgiTbl.DataBind();
        }

        protected void drp_AdresIl_SelectedIndexChanged(object sender, EventArgs e)
        {
            IlceDoldur();            
        }

        protected void rpt_DoktorBilgiTbl_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "Edit")
            {
                LinkButton btnEdit = (LinkButton)e.Item.FindControl("lnkBtn_Edit");
                hf_TCKimlik.Value = e.CommandArgument.ToString();
                MultiView1_Edit.ActiveViewIndex = 0;
                BolumDoldur();
                IlDoldur(); 
                string sorgu = "SELECT DoktorBilgileri.D_TCKimlik, DoktorBilgileri.D_AdSoyad, DoktorBilgileri.D_CepTel, DoktorBilgileri.D_Adresi, DoktorBilgileri.D_Adresili, DoktorBilgileri.D_Adresilcesi, DoktorBilgileri.D_Bolumu, DoktorBilgileri.D_Bilgiler, DoktorBilgileri.D_FotografKucuk, DoktorBilgileri.D_FotografBuyuk, DoktorBilgileri.D_BilgilerAyrinti FROM DoktorBilgileri WHERE D_TCKimlik =@D_TCKimlik";
               
                OleDbCommand cmd = new OleDbCommand(sorgu, con);
                cmd.Parameters.AddWithValue("@D_TCKimlik", hf_TCKimlik.Value);
                OleDbDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    dr.Read();
                    txt_TCKimlik.Text = dr["D_TCKimlik"].ToString();
                    txt_adSoyad.Text = dr["D_AdSoyad"].ToString();
                    txt_cepTel.Text = dr["D_CepTel"].ToString();
                    txt_adres.Text = dr["D_Adresi"].ToString();
                    drp_Bolum.SelectedValue = dr["D_Bolumu"].ToString();
                    drp_AdresIl.SelectedValue = dr["D_Adresili"].ToString();
                    IlceDoldur();
                    drp_AdresIlce.SelectedValue = dr["D_Adresilcesi"].ToString();
                    txt_Bilgiler.Text = dr["D_Bilgiler"].ToString();
                    lbl_Img01.Text = "VT Kayıtlı Değer : " + dr["D_FotografKucuk"].ToString();
                    lbl_Img02.Text = "VT Kayıtlı Değer : " + dr["D_FotografBuyuk"].ToString();
                    CKEditor1.Text = dr["D_BilgilerAyrinti"].ToString();
                }

            }
            
        }
    }
}