using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace uye_islemleri
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["kad"]==null)
            {
                Response.Redirect("login.aspx");
            }
            else
            {
                if (Session["yetki"].ToString()=="admin")
                {
                    MultiView1.ActiveViewIndex = 0;
                }
                else
                {
                    MultiView1.ActiveViewIndex = 1;
                }
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin.aspx");

        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("uye.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("uye.aspx");
        }
    }
}