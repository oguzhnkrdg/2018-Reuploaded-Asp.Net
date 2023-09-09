using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sifre_Uret
{
    public partial class sayfa2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
int rbk;
            string uret;
            Random rnd = new Random();
        protected void Button1_Click(object sender, EventArgs e)
        {
            

            Label1.Text = "";
            for (int i = 0; i < int.Parse(DropDownList2.SelectedValue); i++)
            {

                switch (DropDownList1.SelectedIndex)
                {
                    case 0:
                        rbk = 0;
                        break;
                    case 1:
                        rbk = 1;
                        break;
                    case 2:
                        rbk = 2;
                        break;
                    case 3:
                        rbk = rnd.Next(0, 2);
                        break;
                    case 4:
                        do
                        {
                            rbk = rnd.Next(0, 3);
                        } while (rbk == 1);

                        break;
                    case 5:
                        rbk = rnd.Next(1, 3);
                        break;
                    case 6:
                        rbk = rnd.Next(0, 3);
                        break;

                }
                switch (rbk)
                {
                    case 0:

                        uret = Convert.ToChar(rnd.Next(65, 91)).ToString();
                        break;
                    case 1:
                        uret = Convert.ToChar(rnd.Next(97, 123)).ToString();
                        break;
                    case 2:
                        uret = Convert.ToChar(rnd.Next(48, 58)).ToString();
                        break;
                    default:
                        break;
                }


                Label1.Text += uret;
            }
        }
    }
}