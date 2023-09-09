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
    public partial class ProfilDuzenle : System.Web.UI.Page
    {
        OleDbConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            string CS = ConfigurationManager.ConnectionStrings["baglanti"].ConnectionString;
            con = new OleDbConnection(CS);
            if (!IsPostBack)
            {
                BilgiYukle();
            }
        }

        private void BilgiYukle()
        {
            con.Open();
            string sorgu = "SELECT * FROM HastaBilgileri WHERE tckimlik=@tckimlik";
            OleDbCommand cmd = new OleDbCommand(sorgu, con);
            cmd.Parameters.AddWithValue("@tckimlik", Session["tckimlik"].ToString());
            OleDbDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                txt_adSoyad.Text = dr["adSoyad"].ToString();
                txt_tcKimlik.Text = dr["tckimlik"].ToString();
                txt_dTrh.Text = ((DateTime)dr["dtarih"]).ToString("yyyy-MM-dd");
                txt_tel.Text = dr["tel"].ToString();
                txt_eMail.Text = dr["email"].ToString();
                if (Convert.ToBoolean(dr["cinsiyet"].ToString()) == true)
                {
                    rdbtn_cnsyt1.Checked = true;
                }
                else
                {
                    rdbtn_cnsyt2.Checked = true;
                }
            }
            else
            {

            }
            con.Close();
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            con.Open();
            string sorgu = "UPDATE HastaBilgileri SET adSoyad=@adSoyad,dtarih=@dtarih,tel=@tel,email=@email WHERE tckimlik=@tckimlik";
            OleDbCommand cmd = new OleDbCommand(sorgu, con);
            cmd.Parameters.AddWithValue("@adSoyad", txt_adSoyad.Text);
            cmd.Parameters.AddWithValue("@dtarih", txt_dTrh.Text);
            cmd.Parameters.AddWithValue("@tel", txt_tel.Text);
            cmd.Parameters.AddWithValue("@email", txt_eMail.Text);
            cmd.Parameters.AddWithValue("@tckimlik", Convert.ToInt32(txt_tcKimlik.Text));

            if (cmd.ExecuteNonQuery() == 1)
            {
                lbl_Hata.ForeColor = Color.Green;
                lbl_Hata.Text = "Güncelleme Başarılı";
            }
            else
            {
                lbl_Hata.ForeColor = Color.Red;
                lbl_Hata.Text = "Güncelleme Başarısız";
            }
            con.Close();
        }

    }
}