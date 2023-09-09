using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace uye_islemleri
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text=="11b" && TextBox2.Text=="123")
            {
                Session["yetki"] = "admin";
                Session["kad"] = TextBox1.Text;
                Response.Redirect("default.aspx");
            }

            else if ((TextBox1.Text=="11a" || TextBox1.Text=="11c") && TextBox2.Text=="123")
            {
                Session["yetki"] = "uye";
                Session["Kad"] = TextBox1.Text;
                Response.Redirect("default.aspx");
            }

            else
            {
                Label1.Text = "Kullanıcı adı veya şifre yanlış";
            }
        }
    }
}