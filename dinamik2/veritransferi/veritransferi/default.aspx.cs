using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace veritransferi
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            FileUpload1.SaveAs(Server.MapPath("~/resimler/") + FileUpload1.FileName);
            Response.Redirect(string.Format("Detay.aspx?ad={0}&soyad={1}&sehir{2}&resim={3}", TextBox1.Text, TextBox2.Text, DropDownList1.Text, FileUpload1.FileName));
        }
    }
}