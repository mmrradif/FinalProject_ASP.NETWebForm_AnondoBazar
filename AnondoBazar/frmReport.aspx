<%@ Page Title="" Language="C#" MasterPageFile="~/AnondoBazarMasterPage.Master" AutoEventWireup="true" CodeBehind="frmReport.aspx.cs" Inherits="AnondoBazar.frmReport" %>

<%@ Register Assembly="CrystalDecisions.Web, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" Namespace="CrystalDecisions.Web" TagPrefix="CR" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContent" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-6 m-auto">
                <ul class="nav nav-pills my-3  justify-content-center" id="pills-tab" role="tablist">

                    <li class="nav-item" role="presentation">
                        <button class="nav-link active" id="pills-home-tab" data-toggle="pill" data-target="#pills-home" type="button" role="tab" aria-controls="pills-home" aria-selected="true">Employee</button>
                    </li>
                    
                    <li class="nav-item" role="presentation">
                        <button class="nav-link" id="pills-profile-tab" data-toggle="pill" data-target="#pills-profile" type="button" role="tab" aria-controls="pills-profile" aria-selected="false">Menu</button>
                    </li>


                    <li class="nav-item" role="presentation">
                        <button class="nav-link" id="pills-contact-tab" data-toggle="pill" data-target="#pills-contact" type="button" role="tab" aria-controls="pills-contact" aria-selected="false">Group</button>
                    </li>
                </ul>
            </div>
        </div>
        <div class="tab-content" id="pills-tabContent">
            <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">

                <asp:Button ID="btnLoadReport" CssClass="col-6 mx-auto my-3 p-3 btn-block bg-primary text-white" runat="server" Text="Load Employee Report" OnClick="btnLoadReport_Click"/>

                 <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true" />                
                             
            </div>

            <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">

                <asp:Button ID="btnLoadMenu" CssClass="col-6 mx-auto my-3 p-3 btn-block bg-primary text-white" runat="server" Text="Load Dynamic Menu Report" OnClick="btnLoadMenu_Click" />

                <CR:CrystalReportViewer ID="CrystalReportViewer2" runat="server" AutoDataBind="True" GroupTreeImagesFolderUrl="" Height="1202px" ToolbarImagesFolderUrl="" ToolPanelWidth="200px" Width="1104px" />
                

                <CR:CrystalReportSource ID="CrystalReportSource1" runat="server">
                    <Report FileName="menuReport.rpt">
                    </Report>
                </CR:CrystalReportSource>
                

            </div>

            <div class="tab-pane fade" id="pills-contact" role="tabpanel" aria-labelledby="pills-contact-tab">
                <asp:Button ID="btnGruopLoad" CssClass="col-6 mx-auto my-3 p-3 btn-block bg-primary text-white" runat="server" Text="Load Dynamic Menu Group Report" OnClick="btnGruopLoad_Click" />

                <CR:CrystalReportViewer ID="CrystalReportViewer3" runat="server" AutoDataBind="true" />
            </div>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="FooterContent" runat="server">
</asp:Content>
