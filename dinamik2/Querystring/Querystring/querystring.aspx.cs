using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Querystring
{
    public partial class querystring : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Detay.aspx?isim=" + TextBox1.Text + "&soyisim=" + TextBox2.Text + "&numara=" + TextBox3.Text + "&sinif=" + DropDownList1.Text + "&cinsiyet=" + RadioButtonList1.Text);
        }
    }
}