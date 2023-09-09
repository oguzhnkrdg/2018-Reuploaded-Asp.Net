using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DortIslem
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedIndex==0)
            {
                TextBox3.Text = (Convert.ToInt32(TextBox1.Text) + Convert.ToInt32(TextBox2.Text)).ToString();
            }

            else if (DropDownList1.SelectedIndex==1)
            {
                TextBox3.Text = (Convert.ToInt32(TextBox1.Text) - Convert.ToInt32(TextBox2.Text)).ToString();
            }

            else if (DropDownList1.SelectedIndex==2)
            {
                TextBox3.Text = (Convert.ToInt32(TextBox1.Text) * Convert.ToInt32(TextBox2.Text)).ToString();
            }

            else if (DropDownList1.SelectedIndex==3)
            {
                TextBox3.Text = (Convert.ToInt32(TextBox1.Text) / Convert.ToInt32(TextBox2.Text)).ToString();
            }
        }
    }
}