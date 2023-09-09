using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.OleDb;

namespace HastaneOtomasyon
{
    public partial class yenikayit : System.Web.UI.Page
    {
        OleDbConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            string CS = ConfigurationManager.ConnectionStrings["baglanti"].ConnectionString;
            con = new OleDbConnection(CS);
        }

        private bool kontrol()
        {
            string sorgu = "SELECT * FROM Kullanicilar WHERE kad=@kad";
            OleDbCommand cmd = new OleDbCommand(sorgu, con);
            cmd.Parameters.AddWithValue("@kad", txt_kAd.Text);
            OleDbDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                return true;
            }
            else
            {
                return false;
            }

        }
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                con.Open();
                if (kontrol() == false)
                {
                    string sorgu = "INSERT INTO Kullanicilar (kad,parola,adSoyad,tckimlik,yetki) VALUES (@kad,@parola,@adSoyad,@tckimlik,@yetki)";                    
                    OleDbCommand cmd = new OleDbCommand(sorgu, con);
                    cmd.Parameters.AddWithValue("@kad", txt_kAd.Text);
                    cmd.Parameters.AddWithValue("@parola", txt_parola.Text);
                    cmd.Parameters.AddWithValue("@adSoyad", txt_adSoyad.Text);
                    cmd.Parameters.AddWithValue("@tckimlik", Convert.ToInt32(txt_tcKimlik.Text));
                    cmd.Parameters.AddWithValue("@yetki", "Hasta");
                    int i = cmd.ExecuteNonQuery();

                    string sorgu2 = "INSERT INTO HastaBilgileri (adSoyad,tckimlik,email,dtarih,cinsiyet,tel) VALUES (@adSoyad,@tckimlik,@email,@dtarih,@cinsiyet,@tel)";
                    OleDbCommand cmd2 = new OleDbCommand(sorgu2, con);
                    cmd2.Parameters.AddWithValue("@adSoyad", txt_adSoyad.Text);
                    cmd2.Parameters.AddWithValue("@tckimlik", Convert.ToInt32(txt_tcKimlik.Text));
                    cmd2.Parameters.AddWithValue("@email", txt_eMail.Text);
                    cmd2.Parameters.AddWithValue("@dtarih", txt_dTrh.Text);
                    bool Cinsiyet;
                    if (rdbtn_cnsyt1.Checked)
                    {
                        Cinsiyet = true;
                    }
                    else
                    {
                        Cinsiyet = false;
                    }

                    cmd2.Parameters.AddWithValue("@cinsiyet", Cinsiyet);
                    cmd2.Parameters.AddWithValue("@tel", txt_tel.Text);
                    int i2 = cmd2.ExecuteNonQuery();

                    if (i == 1 && i2==1)
                    {
                        Response.Redirect("randevual.aspx");
                    }
                    else
                    {
                        lbl_Hata.Text = "Kaydedilemedi";
                    }
                }
                else
                {
                    lbl_Hata.Text = "Bu kullanıcı adı sistemde var. Kullanıcı adını değiştirip tekrar deneyiniz.";
                }
                con.Close();
            }
            else
            {
                lbl_Hata.Text = "Tüm alanlara veri girişi zorunludur.";
            }
        }
    }
}