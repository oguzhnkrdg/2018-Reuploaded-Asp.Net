using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HastaneOtomasyon.Admin
{
    public partial class AdminDefault : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["yetki"].ToString() == "Hasta")
            {
                lbl_yetki.Text = Session["yetki"].ToString();
            }
            else if (Session["yetki"].ToString() == "Admin")
            {
                lbl_yetki.Text = Session["yetki"].ToString();
            }
            else if (Session["yetki"].ToString() == "Doktor")
            {
                lbl_yetki.Text = Session["yetki"].ToString();
            }
        }
    }
}