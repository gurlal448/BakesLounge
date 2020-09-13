
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_AdminMaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        //Active Menu Bar
        String activepage = Request.RawUrl;
        if (activepage.Contains("Dashboard"))
        {

            page1.Attributes.Add("class", "active");

        }
       
        else if (activepage.Contains("AddProducts"))
        {
            page3.Attributes.Add("class", "active");

        }
        else if (activepage.Contains("AddCategories"))
        {
            page4.Attributes.Add("class", "active");

        }
        else if (activepage.Contains("Enquiry"))
        {
            page5.Attributes.Add("class", "active");

        }
    }

    protected void btnLogOut_Click(object sender, EventArgs e)
    {
        //Logout
        Session.Abandon();
        Response.Redirect("../Home.aspx");
    }
}
