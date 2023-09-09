using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HastaneOtomasyon
{
    public partial class Hekimlerimiz : System.Web.UI.Page
    {
        OleDbConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            string CS = ConfigurationManager.ConnectionStrings["baglanti"].ConnectionString;
            con = new OleDbConnection(CS);
            con.Open();
            if (!Page.IsPostBack)
            {
                bolumGetir();
            }
            if (Request.QueryString["KategoriID"] != null)
            {
                doktorGetir("kategori");
            }
            else
            {
                doktorGetir("hepsi");
            }
        }

        private void doktorGetir(string deger)
        {
            string sorgu;
            OleDbCommand cmd;
            if (deger == "hepsi")
            {
                sorgu = "SELECT * FROM DoktorBilgileri";
                cmd = new OleDbCommand(sorgu, con);
            }
            else
            {
                sorgu = "SELECT * FROM DoktorBilgileri WHERE D_Bolumu=@D_Bolumu";
                cmd = new OleDbCommand(sorgu, con);
                cmd.Parameters.AddWithValue("@D_Bolumu", Convert.ToInt32(Request.QueryString["KategoriID"]));
            }
            OleDbDataReader dr = cmd.ExecuteReader();
            rpt_Doktorlar.DataSource = dr;
            rpt_Doktorlar.DataBind();
        }

        private void bolumGetir()
        {
            string sorgu = "SELECT B_No, B_Adi FROM Bolumler";
            OleDbCommand cmd = new OleDbCommand(sorgu, con);
            OleDbDataReader dr = cmd.ExecuteReader();
            rpt_Bolumler.DataSource = dr;
            rpt_Bolumler.DataBind();
        }
    }
}