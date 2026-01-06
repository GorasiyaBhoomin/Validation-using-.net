using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class statemanagement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }





        protected void tb1_TextChanged(object sender, EventArgs e)
        {
            int count = 0;
            if (ViewState["clicks"] != null)
                count = (int)ViewState["clicks"];
            count++;

            ViewState["clicks"] = count;


            lblview.Text = "textbox clicked" + count + "times";



        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            HiddenField2.Value = "6996";
            lblhidden.Text = "hidden field value:" + HiddenField2.Value;
        }
    }
}