using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace WebApplication1
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string CS = ConfigurationManager.ConnectionStrings["baglanti"]
.ConnectionString;
            OleDbConnection con = new OleDbConnection(CS);
            con.Open();
            string sorgu = "SELECT * FROM yazilar";
            OleDbCommand cmd = new OleDbCommand(sorgu, con);
            OleDbDataReader dr = cmd.ExecuteReader();
            DataTable dt = new DataTable("abc");
            dt.Load(dr);
           
            CollectionPager1.DataSource = dt.DefaultView;
            CollectionPager1.BindToControl = Repeater1;
            Repeater1.DataSource = CollectionPager1.DataSourcePaged;
            Repeater1.DataBind();
            con.Close();


        }
    }
}