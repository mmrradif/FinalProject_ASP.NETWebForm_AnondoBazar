<%@ Page Title="" Language="C#" MasterPageFile="~/AnondoBazarMasterPage.Master" AutoEventWireup="true" CodeBehind="frmHome.aspx.cs" Inherits="AnondoBazar.frmHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContent" runat="server">

    <%--<div class="container m-5 p-5">
        <div class="row">
            <div class="col-8 p-2">

                <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" Visible="False"></asp:TextBox>
                <asp:Label ID="lblHomeText" Font-Size="X-Large" CssClass="alert-light" runat="server" Text="Home page">I'am A UnRegistered User<br />I Can't See TextBox</asp:Label>


                


            </div>
        </div>
    </div>--%>


    <main class="container py-4">
       
       <%-- Image Slider Start --%>

       <div id="carouselExampleCaptions" class="carousel slide shadow" data-ride="carousel">
          <ol class="carousel-indicators shadow bg-secondary rounded">
            <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
            <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
          </ol>
          <div class="carousel-inner" style="height:500px;">
            <div class="carousel-item active m-2">
              <img src="Images/vegetables.png" class="d-block w-75 m-auto rounded" alt="..." style="height:450px;">

              <div class="carousel-caption d-none d-md-block carouselText rounded .hiddien">
                <asp:Button ID="btnBuyNow" runat="server" Text="Buy Now" CssClass="btn btn-success mb-1" />
                <h5>First slide label</h5>
                <p>Some representative placeholder content for the first slide.</p>
              </div>

            </div>
            <div class="carousel-item m-2">
              <img src="Images/vegeTables2.png" class="d-block w-75 m-auto rounded" alt="..." style="height:450px;">
              <div class="carousel-caption d-none d-md-block carouselText rounded">
                <asp:Button ID="btnBuyNow2" runat="server" Text="Buy Now" CssClass="btn btn-success mb-1" />
                <h5>Second slide label</h5>
                <p>Some representative placeholder content for the second slide.</p>
              </div>
            </div>
            <div class="carousel-item m-2">
              <img src="Images/VegeTables3.png" class="d-block w-75 m-auto rounded" alt="..." style="height:450px;">
              <div class="carousel-caption d-none d-md-block carouselText rounded">
                <asp:Button ID="btnBuyNow3" runat="server" Text="Buy Now" CssClass="btn btn-success mb-1" />
                <h5>Third slide label</h5>
                <p>Some representative placeholder content for the third slide.</p>
              </div>
            </div>
          </div>
          <span class="carousel-control-prev" type="button" data-target="#carouselExampleCaptions" data-slide="prev">
            <span class="carousel-control-prev-icon bg-secondary" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </span>
          <span class="carousel-control-next" type="button" data-target="#carouselExampleCaptions" data-slide="next">
            <span class="carousel-control-next-icon bg-secondary" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </span>
        </div>

   </main>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="FooterContent" runat="server">
</asp:Content>
