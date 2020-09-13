using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_Dashboard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            /// <summary>
            /// //Dashbord section counter, get the number of slider images, 
            /// categories, products, enquiries
            /// </summary>
            BakersLoungeEntities data = new BakersLoungeEntities();
            
            var count1 = (from i in data.CategoryInfoes select i).Count(); // categories count
            if (count1.ToString() != null)
            {
                lblCategoryCount.Text = count1.ToString();
            }
            var count2 = (from c in data.ProductInfoes select c).Count(); // total products count
            if (count2.ToString() != null)
            {
                lblProductCount.Text = count2.ToString();
            }
            var count3 = (from v in data.EnquiryInfoes select v).Count(); // total enquiries
            if (count3.ToString() != null)
            {
                lblEnquiryCount.Text = count3.ToString();
            }

        }


    }
}