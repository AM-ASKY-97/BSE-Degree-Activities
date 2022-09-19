using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace labTest_01
{
    public partial class regForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Response.Write(lTitle.Text + "<br>");
            Response.Write(txtName.Text + "<br>");
            Response.Write(txtDate.Text + "<br>");
            Response.Write(txtContact.Text + "<br>");
            Response.Write(txtAddress.Text + "<br>");
            Response.Write(txtEmail.Text + "<br>");
            Response.Write(txtLinkedIn.Text + "<br>");
        }
    }
}