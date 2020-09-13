<%@ Page Title="Home" Language="C#" MasterPageFile="~/SiteMaster.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="myContent" Runat="Server">
    
	<link rel="stylesheet" href="css/owl.carousel.min.css"/>
   <link rel="stylesheet" href="css/owl.theme.default.css"/>

<script src="js/owl.carousel.min.js"></script>
	<style>
		.abc div
		{
			
		}
	</style>
	<!-- Slider -->
	 <div class="slide">
        
         <img width="100%"  src="images/contactbg.jpg" alt="slide2" />
      </div>

        <div class="container ccHome">
			<div class="row p-b-100">
                <div class="col-md-7 col-lg-8">
					<div class="p-t-7 p-r-85 p-r-15-lg p-r-0-md">
						<h3 class="mtext-111 cl2 p-b-16">
							Our Story
						</h3>

						<p class="stext-113 cl6 p-b-26 myFs">
						Baker's lounge was first opened in June 2001. We aim to be a village bakery serving local people and passers-by attracted by smell of freshly baked bread, sweets and food. All our baked goods are made on premises. Our breads are made using sourdough starters and long cold fermentation resulting in complex flavour, longer shelf life and improved digestibility...<a href="About.aspx">read more...</a>

						</p>

					</div>
				</div>
                <div class="col-11 col-md-5 col-lg-4 m-lr-auto">
					<div class="how-bor1 ">
						<div class="hov-img0">
							<img src="images/abtHome.jpg" alt="IMG"/>
						</div>
					</div>
				</div>
                
            </div>
            <div style="text-align:center">
           <p class="gfs">Enjoy Our Heart's Connecting Taste</p>
            <div style="margin:auto;background-color:red;width:90px;height:4px;"></div>
                </div>
            <br />
          
            <div class="row">
              
                  
              
                <asp:Repeater ID="repFeaturedProducts" runat="server">
                    <HeaderTemplate>
                         <div class="owl-carousel abc">
                    </HeaderTemplate>
                    <ItemTemplate>
                    
						<img class="mYwidth" src='ProductImages/<%# Eval("PhotoSize") %><%# Eval("PhotoName") %>' alt='<%# Eval("ProductTitle") %>'>

                    </ItemTemplate>
                    <FooterTemplate>
                        </div>
                    </FooterTemplate>
                </asp:Repeater>
				<script>
	$(document).ready(function(){
  $(".owl-carousel").owlCarousel();
		
});
	</script>
	<script>
	var owl = $('.owl-carousel');
owl.owlCarousel({
    items:4,
    loop:true,
    margin:10,
    autoplay:true,
    autoplayTimeout:1000,
    autoplayHoverPause:true
});
$('.play').on('click',function(){
    owl.trigger('play.owl.autoplay',[1000])
})
$('.stop').on('click',function(){
    owl.trigger('stop.owl.autoplay')
})
	</script>
		
            <!-- Load more -->
			<div class="flex-c-m flex-w w-full p-t-45 p-b-140">
				<a href="Products.aspx" class="flex-c-m stext-101 cl0 size-103 bg2 bor1 hov-btn1 p-lr-15 trans-04">
					View More
				</a>
			</div>
        </div>
            </div>
  
    <br />
    <br />
            <div class="container-fluid" style="background-color:#ED1C24;">
                <br />
             <div style="text-align:center;font-size:25px;font-family:cursive">
           <p style="color:white">**ACHIEVEMENTS**</p>
            <div style="margin:auto;background-color:black;width:90px;height:4px;"></div>
                </div>
            <br />
        <div class="row">
             
            <div class="wrapper">
    <div class="counter col_fourth">
      <i class="fa fa-users fa-2x"></i>
      <h2 class="timer count-title count-number" data-to="2001" data-speed="1500">2001</h2>
       <p class="count-text ">SINCE</p>
    </div>

    <div class="counter col_fourth">
      <i class="fa fa-product-hunt fa-2x"></i>
      <h2 class="timer count-title count-number" data-to="270" data-speed="1500">270</h2>
      <p class="count-text ">PRODUCTS</p>
    </div>

    <div class="counter col_fourth">
      <i class="fa fa-user fa-2x"></i>
      <h2 class="timer count-title count-number" data-to="250" data-speed="1500">250</h2>
      <p class="count-text ">DEALERS</p>
    </div>

    <div class="counter col_fourth end">
      <i class="fa fa-user fa-2x"></i>
      <h2 class="timer count-title count-number" data-to="300" data-speed="1500">300</h2>
      <p class="count-text ">DISTRIBUTORS</p>
    </div>
</div>
        </div>
                </div>


	
</asp:Content>

