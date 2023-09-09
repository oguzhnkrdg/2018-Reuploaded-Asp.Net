using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MasterPage_Amp11b
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] == null)
            {
                MultiView1.ActiveViewIndex = 0;
                MultiView2.ActiveViewIndex = -1;
            }
            else
            {
                MultiView1.ActiveViewIndex = 1;
                lbl_AdSoyad.Text = Session["adsoyad"].ToString();
                lbl_yetki.Text= Session["yetki"].ToString();
                if (Session["yetki"].ToString() =="Admin")
                {
                    MultiView2.ActiveViewIndex = 1;
                }
                else if (Session["yetki"].ToString() == "Uye")
                {
                    MultiView2.ActiveViewIndex = 0;
                }
            }
        }
        protected void btn_giris_Click(object sender, EventArgs e)
        {
            string CS = ConfigurationManager.ConnectionStrings["baglanti2"].ConnectionString;
            OleDbConnection con = new OleDbConnection(CS);
            con.Open();
            string sorgu = "SELECT * FROM uye WHERE kad = @kad  AND parola = @parola";
            OleDbCommand cmd = new OleDbCommand(sorgu, con);
            cmd.Parameters.AddWithValue("@kad", txt_kulad.Text);
            cmd.Parameters.AddWithValue("@parola", txt_parola.Text);
            OleDbDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                Session["id"] = dr["id"].ToString();
                Session["adsoyad"] = dr["ad"].ToString() + " " + dr["soyad"].ToString();
                Session["yetki"] = dr["yetki"].ToString();
                Response.Redirect("Default.aspx");
            }
            else
            {
                lbl_Hata.Text = "Kullanıcı adı veya parola hatalı";
            }
        }
        protected void lnkBtn_OturumuKapat_Click(object sender, EventArgs e)
        {
            Session["id"] = null;
            Session["adsoyad"] = null;
            Session["yetki"] = null;
            Response.Redirect("Default.aspx");
        }


    }
}