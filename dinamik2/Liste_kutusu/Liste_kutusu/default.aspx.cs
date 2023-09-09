using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

namespace Liste_kutusu
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (ListBox1.Items.Count < 10)
            {
                ListBox1.Items.Add((ListBox1.Items.Count+1) + "- " +TextBox1.Text);
              
            }

            else
            {
                Label1.ForeColor = Color.Red;
                Label1.Text = "Dolu";
                Button1.Enabled = false;
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            ListBox1.Items.Remove(ListBox1.SelectedItem);
        }

        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Button2.Enabled = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            ListBox2.Items.Add(ListBox1.SelectedItem.Text);
        }
    }
}