using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Querystring
{
    public partial class Detay : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write("Gelen Ad= " + Request.QueryString["isim"] + "<br>");
            Response.Write("Gelen Soyad= " + Request.QueryString["soyisim"] + "<br>");
            Response.Write("Gelen numara= " + Request.QueryString["numara"] + "<br>");
            Response.Write("Gelen sınıf= " + Request.QueryString["sinif"] + "<br>");
            Response.Write("Gelen cinsiyet= " + Request.QueryString["cinsiyet"]);
        }
    }
}