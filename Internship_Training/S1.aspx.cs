using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Internship_Training
{
    public partial class S1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            Session["Name"] = txtName.Text;
            Session["Contact"] = txtContact.Text;
            //default time - 20 Minutes of inactivity.
            
            Response.Redirect("S2.aspx");   
        }
    }
}