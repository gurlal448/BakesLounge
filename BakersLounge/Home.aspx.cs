using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {
                
                BindFeaturedProducts();//method calling to Bind products
            }
        }
        catch (Exception ex)
        {
            throw ex;
        }
        
    }

    // Get Featured products on page load 
    private void BindFeaturedProducts()
    {
        BakersLoungeEntities data = new BakersLoungeEntities();
        var pro = from p in data.ProductInfoes select p;
        repFeaturedProducts.DataSource = pro.ToList();
        repFeaturedProducts.DataBind();
    }
    

}