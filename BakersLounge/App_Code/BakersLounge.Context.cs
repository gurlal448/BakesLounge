﻿//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;

public partial class BakersLoungeEntities : DbContext
{
    public BakersLoungeEntities()
        : base("name=BakersLoungeEntities")
    {
    }

    protected override void OnModelCreating(DbModelBuilder modelBuilder)
    {
        throw new UnintentionalCodeFirstException();
    }

    public DbSet<CategoryInfo> CategoryInfoes { get; set; }
    public DbSet<EnquiryInfo> EnquiryInfoes { get; set; }
    public DbSet<loginInfo> loginInfoes { get; set; }
    public DbSet<ProductInfo> ProductInfoes { get; set; }
}