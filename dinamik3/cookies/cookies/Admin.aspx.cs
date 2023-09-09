using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cookies
{
    public partial class Admin : System.Web.UI.Page
    {
        HttpCookie cerez = new HttpCookie("cerez");

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            cerez.Expires = DateTime.Now.AddDays(-1);
            Response.Cookies.Add(cerez);
        }
    }
}