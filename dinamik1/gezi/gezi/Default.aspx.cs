using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace gezi
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text!="")
            {
                Label1.Text = "Sayın" + " " + TextBox1.Text + " " + TextBox2.Text + " " + "Kaydınız Yapılmıştır!";
            }

            else
            {
                Label1.Text = "İsim Girmelisin!";
            }
        }
    }
}