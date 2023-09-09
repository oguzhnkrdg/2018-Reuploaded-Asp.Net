using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.OleDb;
using System.Drawing;

namespace MasterPage_Amp11b
{
    public partial class Kaydol : System.Web.UI.Page
    {
        OleDbConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            string CS = ConfigurationManager.ConnectionStrings["baglanti2"].ConnectionString;
            con = new OleDbConnection(CS);
        }

        private bool kAdKontrol()
        {
            string sorgu = "SELECT kad,eposta FROM uye WHERE kad=@kad";
            OleDbCommand cmd = new OleDbCommand(sorgu, con);
            cmd.Parameters.AddWithValue("@kad", txt_yk_kulad.Text);
            OleDbDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                lbl_Sonuc.Text = "Kullanıcı adı sistemde var";
                return true;
            }
            else
            {
                return false;
            }

        }

        protected void btn_kaydol_Click(object sender, EventArgs e)
        {
            con.Open();
            string sorgu = "INSERT INTO uye (kad,ad,soyad,parola,yetki,dYeri,dTarihi,adres,tel,eposta) VALUES (@kad,@ad,@soyad,@parola,@yetki,@dYeri,@dTarihi,@adres,@tel,@eposta)";
            OleDbCommand cmd = new OleDbCommand(sorgu, con);
            cmd.Parameters.AddWithValue("@kad", txt_yk_kulad.Text);
            cmd.Parameters.AddWithValue("@ad", txt_adi.Text);
            cmd.Parameters.AddWithValue("@soyad", txt_soyadi.Text);
            cmd.Parameters.AddWithValue("@parola", txt_yk_parola.Text);
            cmd.Parameters.AddWithValue("@yetki", "Uye");
            cmd.Parameters.AddWithValue("@dYeri", drp_dogum_yeri.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@dTarihi", txt_dogum_tarihi.Text);
            cmd.Parameters.AddWithValue("@adres", txt_adres.Text);
            cmd.Parameters.AddWithValue("@tel", txt_tel.Text);
            cmd.Parameters.AddWithValue("@eposta", txt_eposta.Text);

            if (kAdKontrol() == false)
            {
                if (cmd.ExecuteNonQuery() == 1)
                {
                    lbl_Sonuc.ForeColor = Color.Green;
                    lbl_Sonuc.Text = "Kayıt Başarılı";

                    txt_yk_kulad.Text = "";
                    txt_adi.Text = "";
                    txt_soyadi.Text = "";
                    txt_yk_parola.Text = "";
                    txt_dogum_tarihi.Text = "";
                    txt_adres.Text = "";
                    txt_tel.Text = "";
                    txt_eposta.Text = "";
                    drp_dogum_yeri.SelectedIndex = 0;
                }
                else
                {
                    lbl_Sonuc.ForeColor = Color.Red;
                    lbl_Sonuc.Text = "Kayıt Başarısız";
                }
            }

            con.Close();
        }
    }
}