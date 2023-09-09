using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace veritransferi
{
    public partial class detay : System.Web.UI.Page
    {
        public string isim, soyisim, sehir, resim;
        protected void Page_Load(object sender, EventArgs e)
        {
            isim = Request.QueryString["ad"];
            soyisim = Request.QueryString["soyad"];
            sehir = Request.QueryString["sehir"];
            resim = "resimler/"+Request.QueryString["resim"];
            //Image1.ImageUrl = "resimler\\" + resim;
        }
    }
}