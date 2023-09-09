using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
namespace liste_kutusu
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ListBox1.Items.Add(TextBox1.Text);
            if (ListBox1.Items.Count == 10)
            {
                Label1.Text = "Dolu";
                Label1.ForeColor = Color.Red;
                Button1.Enabled = false;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Button1.Enabled = true;
            ListBox1.Items.Remove(ListBox1.SelectedItem);
            Label1.Text = "Boş";
            Label1.ForeColor = Color.Green;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            ListBox2.Items.Add(ListBox1.Text);
        }

        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Button3.Enabled = true;
        }


    }
}