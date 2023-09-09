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
    public partial class WebForm2 : System.Web.UI.Page
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
            DataTable dt = new DataTable();
            dt.Load(dr);

            CP_blog.DataSource = dt.DefaultView;
            CP_blog.BindToControl = rpt_blog;
            rpt_blog.DataSource = CP_blog.DataSourcePaged;
            rpt_blog.DataBind();

        }
    }
}