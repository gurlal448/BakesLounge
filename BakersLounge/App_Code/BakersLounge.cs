﻿//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Collections.Generic;

public partial class CategoryInfo
{
    public CategoryInfo()
    {
        this.ProductInfoes = new HashSet<ProductInfo>();
    }

    public int CategoryId { get; set; }
    public string CategoryName { get; set; }

    public virtual ICollection<ProductInfo> ProductInfoes { get; set; }
}

public partial class EnquiryInfo
{
    public int EnquiryId { get; set; }
    public string Name { get; set; }
    public string Email { get; set; }
    public Nullable<long> Mobile { get; set; }
    public string Subject { get; set; }
    public string Message { get; set; }
    public Nullable<System.DateTime> EnquiryDate { get; set; }
}

public partial class loginInfo
{
    public int LoginInfoId { get; set; }
    public string UserName { get; set; }
    public string Email { get; set; }
    public string Password { get; set; }
    public string Question { get; set; }
    public string Answer { get; set; }
}

public partial class ProductInfo
{
    public int ProductId { get; set; }
    public string ProductTitle { get; set; }
    public string PhotoName { get; set; }
    public string ExtName { get; set; }
    public string PhotoType { get; set; }
    public int PhotoSize { get; set; }
    public Nullable<int> CategoryId { get; set; }

    public virtual CategoryInfo CategoryInfo { get; set; }
}