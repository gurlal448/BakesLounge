

using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_AddProducts : System.Web.UI.Page
{
    private int PageSize = 3;
    
    protected void Page_Load(object sender, EventArgs e)
    {

        try
        {
            if (!IsPostBack)
            {
                BindDdlCategory(); ////method calling to bind category

                BindddlAllCategories(); //method calling to bind category in View

                BindGridAllProducts(); // method calling to bind products in grid view


               
            }
        }
        catch (Exception ex)
        {
            throw ex;
        }
       
        
    }

    //Bind all the categories to select
    private void BindDdlCategory()
    {
        BakersLoungeEntities data = new BakersLoungeEntities();
        ddlCategory.DataSource = data.CategoryInfoes.ToList();
        ddlCategory.DataTextField = "CategoryName";
        ddlCategory.DataValueField = "CategoryID";
        ddlCategory.DataBind();
    }

    // Add products for the selected category
    protected void btnAddProduct_Click(object sender, EventArgs e)
    {
        try
        {
            string ProductTitle = txtProductTitle.Text.Trim();
            string CategoryId = ddlCategory.SelectedValue;
            if (CategoryId.Contains("-1"))
            {
                lblMsg.Text = "Please select a category";
            }
            else if (!Checks.checkNumber(CategoryId))
            {
                lblMsg.Text = "Category id must be a number";
            }
            else if (Checks.Empty(ProductTitle))
            {
                lblMsg.Text = "Please enter product title";
            }
            else if (fuFile.HasFile)  //add new product
            {
                ProductInfo data = new ProductInfo();
                data.CategoryId = int.Parse(CategoryId);
                data.ProductTitle = ProductTitle;
                data.PhotoName = fuFile.PostedFile.FileName;
                data.ExtName = fuFile.PostedFile.FileName.Substring(fuFile.PostedFile.FileName.LastIndexOf('.'));
                data.PhotoSize = fuFile.PostedFile.ContentLength;
                data.PhotoType = fuFile.PostedFile.ContentType;
                if (fuFile.PostedFile.ContentType == "image/jpeg" || fuFile.PostedFile.ContentType == "image/png")
                {
                    BakersLoungeEntities apData = new BakersLoungeEntities();
                    apData.ProductInfoes.Add(data);
                    apData.SaveChanges();
                    string path1 = Server.MapPath("../ProductImages/" + fuFile.PostedFile.ContentLength + fuFile.PostedFile.FileName);
                    fuFile.PostedFile.SaveAs(path1); // save product image on the specififed path
                    txtProductTitle.Text = "";
                    lblMsg.Text = "Product Saved!";
                    pnlProducts.Visible = true;
                    BindddlAllCategories();
                    BindGridAllProducts();
                }
                else
                {
                    lblMsg.Text = "Please choose a .JPEG or .PNG image only";
                }
            }
            else
            {
                lblMsg.Text = "Please choose a product image";
            }
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message;
        }
    }

    //Bind all the categories in preview
    private void BindddlAllCategories()
    {
        BakersLoungeEntities data = new BakersLoungeEntities();
        ddlAllCategory.DataSource = data.CategoryInfoes.ToList();
        ddlAllCategory.DataTextField = "CategoryName";
        ddlAllCategory.DataValueField = "CategoryID";
        ddlAllCategory.DataBind();
    }

    protected void ddlCategory_DataBound(object sender, EventArgs e)
    {
        ddlCategory.Items.Insert(0, new ListItem("-- Please Select --", "-1"));
        
    }
    protected void ddlAllCategory_DataBound(object sender, EventArgs e)
    {
        ddlAllCategory.Items.Insert(0, new ListItem("All", "-1"));
    }

    // View Products according to selected Category
    protected void btnView_Click(object sender, EventArgs e)
    {
        try
        {
            int CategoryId = int.Parse(ddlAllCategory.SelectedValue);
            if (CategoryId == -1)
            {
                BindGridAllProducts();
            }
            else
            {
                BindGridProductsCategoryWise(CategoryId);

               
                hfCategoryIdForPaging.Value = CategoryId.ToString();

            }
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message;
        }
    }

    private void BindGridProductsCategoryWise(int CategoryId) //bind product category wise.
    {
        BakersLoungeEntities data = new BakersLoungeEntities();
        var pro = from p in data.ProductInfoes join c in data.CategoryInfoes on p.CategoryId equals c.CategoryId where p.CategoryId == CategoryId select new { p.ProductId, p.ProductTitle, p.PhotoType, p.PhotoSize, p.PhotoName, p.ExtName, c.CategoryName };
        gvProducts.DataSource = pro.ToList();
        gvProducts.DataBind();
    }

    //bind all products on page load
    private void BindGridAllProducts() 
    {
        try
        {
            BakersLoungeEntities data = new BakersLoungeEntities();
            if (data == null)
            {
                pnlProducts.Visible = false;
            }
            else
            {
                pnlProducts.Visible = true;
                var pro = from p in data.ProductInfoes join c in data.CategoryInfoes on p.CategoryId equals c.CategoryId select new { p.ProductId, p.ProductTitle, p.PhotoType, p.PhotoSize, p.PhotoName, p.ExtName, c.CategoryId ,c.CategoryName };
                gvProducts.DataSource = pro.ToList();
                gvProducts.DataBind();
            }
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message;
        }
    }

   


    

    //Delete the selected product
    protected void gvProducts_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        //delete products
        int Id = int.Parse(gvProducts.DataKeys[e.RowIndex].Value.ToString());
        string path;
        BakersLoungeEntities data = new BakersLoungeEntities();

        ProductInfo bt = new ProductInfo();
        bt = data.ProductInfoes.Single(c => c.ProductId == Id); // lambda expression
        data.ProductInfoes.Attach(bt);
        data.ProductInfoes.Remove(bt);
        data.SaveChanges();
        path = Server.MapPath("../ProductImages/" + bt.PhotoSize + bt.PhotoName);
        if (File.Exists(path))
        {
            File.Delete(path); // delete the product image as well

            lblMsg.Text = "*Image Deleted!!";
        }
        BindGridAllProducts();
        

    }

   
}