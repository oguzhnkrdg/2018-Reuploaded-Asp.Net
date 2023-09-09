using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cookies
{
    public partial class _default : System.Web.UI.Page
    {
        HttpCookie cerez = new HttpCookie("cerez"); //çerez oluşturma

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["cerez"]!=null)
            {
                Response.Redirect("Admin.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (CheckBox1.Checked)
            {
                cerez["ad"] = TextBox1.Text;   //aktarma
                cerez["soyad"] = TextBox2.Text;
                cerez["tarih"] = DateTime.Now.ToString();
                cerez.Expires = DateTime.Now.AddDays(10); //10 gün sonra silinecek
                Response.Cookies.Add(cerez); //çerezi ekliyor
            }
            else
            {
                cerez.Expires = DateTime.Now.AddDays(-1);
                Response.Cookies.Add(cerez);
            }
        }
    }
}