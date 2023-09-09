using System;
using System.Collections.Generic;
using System.Linq;
using System.Configuration;
using System.Data.OleDb;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace masterpage
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
                Label2.Text = Session["adsoyad"].ToString();
                lbl_yetki.Text = Session["yetki"].ToString();
                if (Session["yetki"].ToString() == "Admin")
                {
                    MultiView2.ActiveViewIndex = 1;
                }
                else if (Session["yetki"].ToString() == "Uye")
                {
                    MultiView2.ActiveViewIndex = 0;
                }
            }

        }


        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session["id"] = null;
            Session["adsoyad"] = null;
            Response.Redirect("Default.aspx");
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            string CS = ConfigurationManager.ConnectionStrings["baglanti"].ConnectionString;
            OleDbConnection con = new OleDbConnection(CS);
            con.Open();
            string sorgu = "SELECT * FROM uye WHERE kad = @kad  AND parola = @parola";
            OleDbCommand cmd = new OleDbCommand(sorgu, con);
            cmd.Parameters.AddWithValue("@kad", TextBox1.Text);
            cmd.Parameters.AddWithValue("@parola", TextBox1.Text);
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
                Label3.Text = "Kullanıcı adı veya parola hatalı";
            }
        }
    }
}