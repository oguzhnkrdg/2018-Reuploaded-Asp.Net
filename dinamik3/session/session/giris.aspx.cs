using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace session
{
    public partial class giris : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           

            if (Request.QueryString["hata"] == "ozel")
            {
                Label1.Visible = true;
                Label1.Text = "adam gibi gir şuraya";
            }
            else
            {
                Label1.Visible = false;
            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {


            if (DropDownList1.SelectedIndex == 0)
            {
                Session["yetki"] = "admin";
            }

            else if (DropDownList1.SelectedIndex == 1)
            {
                Session["yetki"] = "admin";
            }

            else if (DropDownList1.SelectedIndex == 2)
            {
                Session["yetki"] = "admin";
            }

            else
            {
                Session["yetki"] = "uye";
            }

            if (Session["yetki"] == "admin")
            {
                
                Response.Redirect("sinif_ozel.aspx?ad=" + TextBox1.Text + "&soyad=" + TextBox2.Text + "&cinsiyet=" + RadioButtonList1.SelectedItem + "&sinif=" + DropDownList1.SelectedItem);
            }
            
            else
            {
                Response.Redirect("giris.aspx");
                //Label1.Visible = true;
                //Label1.Text = "Giriş Bilgileri Geçersiz";
            }

            
        }
    }
}