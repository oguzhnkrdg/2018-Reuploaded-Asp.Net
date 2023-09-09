using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Goster_Gizle
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Image1.Visible = true;
            Button2.Enabled = true;
            Button1.Enabled = false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Image1.Visible = false;
            Button1.Enabled = true;
            Button2.Enabled = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (Image1.Visible == true)
            {
                Button3.Text = "Göster";
                Image1.Visible = false;
            }
                
            else
            {
                Button3.Text = "Gizle";
                Image1.Visible = true;
            }
        }
    }
}