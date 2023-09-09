using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

namespace session
{
    public partial class sinif_ozel : System.Web.UI.Page
    {
        public string sınıf;
        protected void Page_Load(object sender, EventArgs e)
        {
            

            if (Session["yetki"] != "admin")
            {
                Response.Redirect("giris.aspx?hata=ozel");
            }

            Label1.Text = Request.QueryString["ad"] + "<br>" + Request.QueryString["soyad"] + "<br>" + Request.QueryString["cinsiyet"] + "<br>" + Request.QueryString["sinif"];

            if (Request.QueryString["sinif"] == "11A")
            {
                Panel1.BackColor = Color.Blue;
                
            }
            
            else if (Request.QueryString["sinif"] == "11B")
            {
                Panel1.BackColor = Color.Red;
                
            }

            else if (Request.QueryString["sinif"] == "11C")
            {
                Panel1.BackColor = Color.Purple;
                
            }

          
        }
    }
}