using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HastaneOtomasyon.Admin
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["tckimlik"] == null)
            {
                Response.Redirect("../randevual.aspx");
            }
            else
            {
                if (Session["yetki"].ToString() == "Hasta")
                {
                    MultiView1.ActiveViewIndex = 0;
                }
                else if (Session["yetki"].ToString() == "Admin")
                {
                    MultiView1.ActiveViewIndex = 1;
                }
                else if (Session["yetki"].ToString() == "Doktor")
                {
                    MultiView1.ActiveViewIndex = 2;
                }
                lbl_HosGeldin.Text = Session["adSoyad"].ToString();
            }

        }

        protected void lb_Cikis_Click(object sender, EventArgs e)
        {
            Session["tckimlik"] = null;
            Session["adSoyad"] = null;
            Session["yetki"] = null;
            Response.Redirect("../Default.aspx");
        }


    }
}