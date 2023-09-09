using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

namespace renk
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedIndex==1)
            {
                Label1.Text = "FenerBahçe";
                Label1.ForeColor = Color.Yellow;
                Label1.BackColor = Color.DarkBlue;
                Panel2.BackColor = Color.Yellow;
                Panel1.BackColor = Color.DarkBlue;
            }

            else if (DropDownList1.SelectedIndex == 2)
            {
                Label1.Text = "Galatasaray";
                Label1.ForeColor = Color.Yellow;
                Label1.BackColor = Color.Red;
                Panel2.BackColor = Color.Yellow;
                Panel1.BackColor = Color.Red;
            }

            else if (DropDownList1.SelectedIndex == 3)
            {
                Label1.Text = "Beşiktaş";
                Label1.ForeColor = Color.White;
                Label1.BackColor = Color.Black;
                Panel2.BackColor = Color.White;
                Panel1.BackColor = Color.Black;
            }
        }
    }
}