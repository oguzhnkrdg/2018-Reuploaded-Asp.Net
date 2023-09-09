using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dal
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
                DropDownList2.Items.Clear();
                DropDownList2.Items.Add("Veritabanı Programcılığı");
                DropDownList2.Items.Add("Ağ İşletmenliği");
                DropDownList2.Items.Add("Web Programcılığı");
                DropDownList2.Items.Add("Teknik Servis");
            }

            else
            {
                DropDownList2.Items.Clear();
                DropDownList2.Items.Add("Endüstriye Kontrol");
                DropDownList2.Items.Add("Güvenlik Sistemleri");
                DropDownList2.Items.Add("Elektrik Tesisat ve Pano Montörlüğü");
                DropDownList2.Items.Add("Görüntü ve Ses Sistemleri");
            }
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList2.SelectedIndex>=0)
            {
                Label1.Text = TextBox1.Text + " " + TextBox2.Text + " - " + TextBox3.Text + " "+ TextBox4.Text + " " + DropDownList1.Text + " - " + DropDownList2.Text;
            }

            else
            {
                Label1.Enabled = false;
            }
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox1.Checked == true)
            {
                Button1.Visible = true;
            }

            else
            {
                Button1.Visible = false;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }
    }
}