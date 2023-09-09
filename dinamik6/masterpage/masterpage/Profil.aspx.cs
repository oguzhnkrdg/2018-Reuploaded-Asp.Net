using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.OleDb;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace masterpage
{
    public partial class Webform2 : System.Web.UI.Page
    {
        OleDbConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] == null)
            {
                Response.Redirect("Default.aspx");
            }
            string CS = ConfigurationManager.ConnectionStrings["baglanti2"].ConnectionString;
            con = new OleDbConnection(CS);
            if (!IsPostBack)
            {
                BilgiYukle();
            }

        }

        private void BilgiYukle()
        {
            con.Open();
            string sorgu = "SELECT * FROM uye WHERE id=@id";
            OleDbCommand cmd = new OleDbCommand(sorgu, con);
            cmd.Parameters.AddWithValue("@id", Convert.ToUInt32(Session["id"].ToString()));
            OleDbDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                txt_p_kulad.Text = dr["kad"].ToString();
                txt_adi.Text = dr["ad"].ToString();
                txt_soyadi.Text = dr["soyad"].ToString();
                txt_p_parola.Text = dr["parola"].ToString();
                txt_dogum_tarihi.Text = ((DateTime)dr["dTarihi"]).ToString("yyyy-MM-dd");
                txt_adres.Text = dr["adres"].ToString();
                txt_tel.Text = dr["tel"].ToString();
                txt_eposta.Text = dr["eposta"].ToString();
                drp_dogum_yeri.SelectedItem.Text = dr["dYeri"].ToString();

            }
            else
            {

            }
            con.Close();
        }

        protected void btn_guncelle_Click(object sender, EventArgs e)
        {
            con.Open();
            string sorgu = "UPDATE uye SET ad=@ad,soyad=@soyad,parola=@parola,dYeri=@dYeri,dTarihi=@dTarihi,adres=@adres,tel=@tel,eposta=@eposta WHERE id=@id";
            OleDbCommand cmd = new OleDbCommand(sorgu, con);
            cmd.Parameters.AddWithValue("@ad", txt_adi.Text);
            cmd.Parameters.AddWithValue("@soyad", txt_soyadi.Text);
            cmd.Parameters.AddWithValue("@parola", txt_p_parola.Text);
            cmd.Parameters.AddWithValue("@dYeri", drp_dogum_yeri.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@dTarihi", txt_dogum_tarihi.Text);
            cmd.Parameters.AddWithValue("@adres", txt_adres.Text);
            cmd.Parameters.AddWithValue("@tel", txt_tel.Text);
            cmd.Parameters.AddWithValue("@eposta", txt_eposta.Text);
            cmd.Parameters.AddWithValue("@id", Convert.ToInt32(Session["id"].ToString()));

            if (cmd.ExecuteNonQuery() == 1)
            {
                lbl_Sonuc.ForeColor = Color.Green;
                lbl_Sonuc.Text = "Güncelleme Başarılı";
            }
            else
            {
                lbl_Sonuc.ForeColor = Color.Red;
                lbl_Sonuc.Text = "Güncelleme Başarısız";
            }


            con.Close();
        }
    }
}