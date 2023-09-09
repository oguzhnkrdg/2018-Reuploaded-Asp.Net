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
    public partial class randevual : System.Web.UI.Page
    {
        OleDbConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                //Oturum kapatılmasına rağmen, eğer çerezler(cookies) silinmemişse(elle ya da süresi biterek) kullanıcı adı ve parola bilgileri dolu, checkbox bilgisi işaretli gelsin.
                if (Request.Cookies["kad"] != null && Request.Cookies["parola"] != null)
                {
                    txt_kAd.Text = Request.Cookies["kad"].Value;
                    txt_parola.Attributes["value"] = Request.Cookies["parola"].Value;
                    chkBox_RmbrMe.Checked = true;
                }
            }
            string CS = ConfigurationManager.ConnectionStrings["baglanti"].ConnectionString;
            con = new OleDbConnection(CS);
        }

        protected void btnSignIn_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                con.Open();
                string sorgu = "SELECT * FROM Kullanicilar WHERE kad=@kad AND parola=@parola";
                OleDbCommand cmd = new OleDbCommand(sorgu, con);
                cmd.Parameters.AddWithValue("@kad", txt_kAd.Text);
                cmd.Parameters.AddWithValue("@parola", txt_parola.Text);
                OleDbDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    //Beni hatırla kutusu işaretliyse cookieleri oluştur.
                    if (chkBox_RmbrMe.Checked)
                    {
                        Response.Cookies["kad"].Value = txt_kAd.Text;
                        Response.Cookies["parola"].Value = txt_parola.Text;

                        Response.Cookies["kad"].Expires = DateTime.Now.AddDays(15);
                        Response.Cookies["parola"].Expires = DateTime.Now.AddDays(15);
                    }
                    else
                    {
                        //Beni hatırla kutusu işaretli değilse cookieleri sil.
                        Response.Cookies["kad"].Expires = DateTime.Now.AddDays(-1);
                        Response.Cookies["parola"].Expires = DateTime.Now.AddDays(-1);
                    }

                    dr.Read();
                    Session["tckimlik"] = dr["tckimlik"].ToString();
                    Session["adSoyad"] = dr["adSoyad"].ToString();
                    Session["yetki"] = dr["yetki"].ToString();
                    Response.Redirect("Admin/AdminDefault.aspx");
                }
                else
                {
                    lblHata.Text = "Kullanıcı adı ya da parola yanlış";
                }
                con.Close();
            }
            else
            {
                lblHata.Text = "Tüm alanlara veri girişi zorunludur.";
            }
        }
    }
}