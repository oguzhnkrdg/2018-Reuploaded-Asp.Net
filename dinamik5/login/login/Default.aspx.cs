using System;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

namespace login
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"]== null)
            {
                MultiView1.ActiveViewIndex = 0;
            }
            else
            {
                MultiView1.ActiveViewIndex = 1;
                Label2.Text = Session["adsoyad"].ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string CS =ConfigurationManager.ConnectionStrings["baglanti"].ConnectionString;
            OleDbConnection con = new OleDbConnection(CS);
            con.Open();
            string sorgu = "SELECT * FROM uye WHERE kad = @kad AND parola = @parola";
            OleDbCommand cmd = new OleDbCommand(sorgu, con);
            cmd.Parameters.AddWithValue("@kad", TextBox1.Text);
            cmd.Parameters.AddWithValue("@parola", TextBox2.Text);
            OleDbDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                Session["id"] = dr["kimlik"].ToString();
                Session["adsoyad"] = dr["ad"].ToString()+" "+dr["soyad"].ToString();
                Response.Redirect("Default.aspx");
            }
            else
            {
                Label1.Text = "Kullanıcı adı veya parola hatalı";
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session["id"] = null;
            Session["adsoyad"] = null;
            Response.Redirect("Default.aspx");
        }
    }
}