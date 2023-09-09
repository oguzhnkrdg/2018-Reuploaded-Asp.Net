using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace session
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["hata"]== "ozel")
            {
                Label1.Visible = true;
                Label1.Text = "Bir Zeki Sensin Zaten Değil mi?";
            }
            else
            {
                Label1.Visible = false;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["uyeadi"] = TextBox1.Text;

            if (TextBox1.Text == "Pausebreaks")
            {
                Session["yetki"] = "admin";
            }
            else
            {
                Session["yetki"] = "uye";
            }

            if (Session["yetki"]== "admin")
            {
                Response.Redirect("admin_panel.aspx");
            }
            else
            {
                Response.Redirect("uye_ozel.aspx");
            }
        }
    }
}