<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="formViewUserControl.ascx.cs" Inherits="AnondoBazar.formViewUserControl" %>

<asp:Label ID="Label6" CssClass="col-form-label" runat="server" Text="FormView With ObjectDataSource"></asp:Label>

<asp:FormView ID="FormView1" CssClass="table table-hover w-100 shadow" runat="server" DataSourceID="ObjectDataSourceForBrand">
    <EditItemTemplate>
        <%--  BrandId:
        <asp:TextBox ID="BrandIdTextBox" runat="server" Text='<%# Bind("BrandId") %>' />--%>
        <br />
        <asp:Label ID="Label9" CssClass="col-form-label" runat="server" Text="BrandName:"></asp:Label>
        <br />
        <asp:TextBox ID="BrandNameTextBox" CssClass="form-control shadow-lg" runat="server" Text='<%# Bind("BrandName") %>' />
        <br />
        <asp:LinkButton ID="UpdateButton" CssClass="btn btn-primary m-3" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
        &nbsp;<asp:LinkButton ID="UpdateCancelButton" CssClass="btn btn-danger m-3" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </EditItemTemplate>

    <InsertItemTemplate>
        <%-- BrandId:
        <asp:TextBox ID="BrandIdTextBox" runat="server" Text='<%# Bind("BrandId") %>' />--%>
        <br />
        <asp:Label ID="Label1" CssClass="form-control" runat="server" Text="BrandName:"></asp:Label>
        <br />
        <asp:TextBox ID="BrandNameTextBox" CssClass="form-control" runat="server" Text='<%# Bind("BrandName") %>' />
        <br />
        <asp:LinkButton ID="InsertButton" CssClass="btn btn-primary m-3" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
        &nbsp;<asp:LinkButton ID="InsertCancelButton" CssClass="btn btn-danger m-3" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </InsertItemTemplate>

    <ItemTemplate>
        <%--  BrandId:
        <asp:Label ID="BrandIdLabel" runat="server" Text='<%# Bind("BrandId") %>' />--%>
        <br />
        <asp:Label ID="Label1" CssClass="form-control" runat="server" Text="BrandName:"></asp:Label>
        <br />
        <asp:Label ID="BrandNameLabel" CssClass="form-control" runat="server" Text='<%# Bind("BrandName") %>' />

        <asp:LinkButton ID="NewButton" runat="server" CssClass="btn btn-info m-3" CausesValidation="False" CommandName="New" Text="New" />
    </ItemTemplate>

</asp:FormView>

<asp:ObjectDataSource ID="ObjectDataSourceForBrand" runat="server" DataObjectTypeName="AnondoBazar.Models.brand" InsertMethod="Insert" SelectMethod="Select" TypeName="AnondoBazar.DAL.brandGetWay"></asp:ObjectDataSource>
