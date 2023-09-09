using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sifre_Uret
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            for (int i = 0; i < 255; i++)
            {
                ListBox1.Items.Add(i + "=> " + Convert.ToString(Convert.ToChar(i)));
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Random bharf = new Random();
            Label1.Text = Convert.ToString(Convert.ToChar(bharf.Next(65,95)));
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Random kharf = new Random();
            Label1.Text = Convert.ToString(Convert.ToChar(kharf.Next(97, 122)));
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Random sayi = new Random();
            Label1.Text = Convert.ToString(Convert.ToChar(sayi.Next(48,57)));
        }
    }
}