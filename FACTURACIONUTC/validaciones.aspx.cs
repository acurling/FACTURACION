using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FACTURACIONUTC
{
    public partial class validaciones : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bingresar_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                Response.Redirect("test.aspx");
            }

           
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {

            int valor;
            valor = int.Parse(TextBox5.Text);

            if (valor %5 ==0)
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }

        }
    }
}