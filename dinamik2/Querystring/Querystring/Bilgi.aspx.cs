using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Querystring
{
    public partial class Bilgi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write("Gelen Ad= " + Request.QueryString["isim"] + "<br>");
            Response.Write("Gelen Soyad= " + Request.QueryString["soyisim"]);

            Label1.Text = Request.QueryString["isim"];
        }
    }
}