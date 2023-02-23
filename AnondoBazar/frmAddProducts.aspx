<%@ Page Title="" Language="C#" MasterPageFile="~/AnondoBazarMasterPage.Master" AutoEventWireup="true" CodeBehind="frmAddProducts.aspx.cs" Inherits="AnondoBazar.frmAddProducts" %>

<%@ Register Src="~/formViewUserControl.ascx" TagPrefix="uc1" TagName="formViewUserControl" %>


<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="Content/bootstrap.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContent" runat="server">

    <div class="container my-5 position-relative">
        <div class="row ">

            <div class="col-3 position-fixed min-vh-100">
                <div class="list-group" id="list-tab" role="tablist">

                    <a class="list-group-item list-group-item-action active d-flex justify-content-between align-items-center" id="list-brand-list" data-toggle="list" href="#list-brand" role="tab" aria-controls="brand">Brands
                        <asp:Label ID="brandsCount" class="badge badge-primary badge-pill" runat="server" Text="Label">0</asp:Label>
                        <%--<span id="" class="badge badge-primary badge-pill"></span>--%>
                    </a>

                    <a class="list-group-item list-group-item-action d-flex justify-content-between align-items-center" id="list-category-list" data-toggle="list" href="#list-category" role="tab" aria-controls="category">Category
                        <asp:Label ID="categoryCount" class="badge badge-primary badge-pill" runat="server" Text="Label">0</asp:Label>
                    </a>

                    <a class="list-group-item list-group-item-action d-flex justify-content-between align-items-center" id="list-Subcategory-list" data-toggle="list" href="#list-Subcategory" role="tab" aria-controls="Subcategory">Sub Category
                        <asp:Label ID="subCategoryCount" class="badge badge-primary badge-pill" runat="server" Text="Label">0</asp:Label>
                    </a>


                    <a class="list-group-item list-group-item-action d-flex justify-content-between align-items-center" id="list-gender-list" data-toggle="list" href="#list-gender" role="tab" aria-controls="gender">Gender
                        <%--<asp:Label ID="genderCount" class="badge badge-primary badge-pill" runat="server" Text="Label"></asp:Label>--%>
                    </a>

                    <a class="list-group-item list-group-item-action  d-flex justify-content-between align-items-center" id="list-size-list" data-toggle="list" href="#list-size" role="tab" aria-controls="size">Size
                        <%--<asp:Label ID="sizeCount" class="badge badge-primary badge-pill" runat="server" Text="Label"></asp:Label>--%>
                    </a>

                    <%--    <a class="list-group-item list-group-item-action" id="list-profile-list" data-toggle="list" href="#list-profile" role="tab" aria-controls="profile">Profile</a>
                    <a class="list-group-item list-group-item-action" id="list-messages-list" data-toggle="list" href="#list-messages" role="tab" aria-controls="messages">Messages</a>
                    <a class="list-group-item list-group-item-action" id="list-settings-list" data-toggle="list" href="#list-settings" role="tab" aria-controls="settings">Settings</a>--%>
                </div>

            </div>
            <div class="col-8 offset-4 min-vh-100">
                <div class="tab-content" id="nav-tabContent">

                    <div class="tab-pane fade show active" id="list-brand" role="tabpanel" aria-labelledby="list-brand-list">

                        <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                            <ContentTemplate>

                                <div class="col justify-content-center my-3">
                                    <%--<asp:Button ID="btnAddBrand" CssClass="btn btn-primary shadow" runat="server" Text="Add Brand" OnClick="btnAddBrand_Click" />--%>
                                    <asp:Button ID="btnAddBrand" CssClass="btn btn-primary shadow" runat="server" Text="Add Brand" OnClick="btnAddBrand_Click1" />
                                </div>

                                <asp:GridView ID="GridView1" CssClass="table table-bordered table-active table-hover w-100 shadow" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="brandId" DataSourceID="dsBrands">
                                    <Columns>
                                        <asp:BoundField DataField="brandId" HeaderText="brandId" InsertVisible="False" ReadOnly="True" SortExpression="brandId" Visible="False" />
                                        <asp:TemplateField HeaderText="Name" SortExpression="brandName">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox1" CssClass="form-control shadow-lg" runat="server" Text='<%# Bind("brandName") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label1" CssClass="form-control" runat="server" Text='<%# Bind("brandName") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField ShowHeader="False">
                                            <EditItemTemplate>
                                                <asp:LinkButton ID="LinkButton1" CssClass="btn btn-primary btn-sm shadow" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                                                &nbsp;<asp:LinkButton ID="LinkButton2" CssClass="btn btn-danger btn-sm shadow" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-success btn-sm shadow" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                                                &nbsp;<asp:LinkButton ID="LinkButton2" CssClass="btn btn-danger btn-sm shadow" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                                            </ItemTemplate>
                                            <ItemStyle Width="170px" HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:TemplateField>
                                    </Columns>
                                </asp:GridView>

                                <asp:SqlDataSource ID="dsBrands" runat="server" ConnectionString="<%$ ConnectionStrings:aspProject %>" DeleteCommand="DELETE FROM [tblBrands] WHERE [brandId] = @brandId" InsertCommand="INSERT INTO [tblBrands] ([brandName]) VALUES (@brandName)" SelectCommand="SELECT * FROM [tblBrands] ORDER BY [brandId] DESC, [brandName]" UpdateCommand="UPDATE [tblBrands] SET [brandName] = @brandName WHERE [brandId] = @brandId">
                                    <DeleteParameters>
                                        <asp:Parameter Name="brandId" Type="Int32" />
                                    </DeleteParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="brandName" Type="String" />
                                    </InsertParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="brandName" Type="String" />
                                        <asp:Parameter Name="brandId" Type="Int32" />
                                    </UpdateParameters>
                                </asp:SqlDataSource>
                            </ContentTemplate>
                        </asp:UpdatePanel>



                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <asp:DetailsView ID="DetailsView1" runat="server" CssClass="table table-bordered table-active w-100 shadow" AllowPaging="True" AutoGenerateRows="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="brandId" DataSourceID="dsInserBrand" GridLines="Horizontal">
                                    <AlternatingRowStyle BackColor="#F7F7F7" />
                                    <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                    <Fields>
                                        <asp:BoundField DataField="brandId" HeaderText="brandId" InsertVisible="False" ReadOnly="True" SortExpression="brandId" Visible="False" />
                                        <asp:TemplateField HeaderText="Name" SortExpression="brandName">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("brandName") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <InsertItemTemplate>
                                                <asp:TextBox ID="TextBox1" CssClass="form-control shadow-lg" runat="server" Text='<%# Bind("brandName") %>'></asp:TextBox>
                                            </InsertItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label1" CssClass="form-control" runat="server" Text='<%# Bind("brandName") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle Width="100px" />
                                        </asp:TemplateField>
                                        <asp:TemplateField ShowHeader="False">
                                            <InsertItemTemplate>
                                                <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-primary shadow" CausesValidation="True" CommandName="Insert" Text="Insert"></asp:LinkButton>
                                                &nbsp;<asp:LinkButton ID="LinkButton2" CssClass="btn btn-danger shadow" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                                            </InsertItemTemplate>
                                            <ItemTemplate>
                                                <asp:LinkButton ID="LinkButton1" CssClass="btn btn-info shadow" runat="server" CausesValidation="False" CommandName="New" Text="New"></asp:LinkButton>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Fields>
                                    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                                    <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                    <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                                </asp:DetailsView>

                                <asp:SqlDataSource ID="dsInserBrand" runat="server" ConnectionString="<%$ ConnectionStrings:aspProject %>" DeleteCommand="DELETE FROM [tblBrands] WHERE [brandId] = @brandId" InsertCommand="INSERT INTO [tblBrands] ([brandName]) VALUES (@brandName)" SelectCommand="SELECT * FROM [tblBrands] ORDER BY [brandId] DESC, [brandName]" UpdateCommand="UPDATE [tblBrands] SET [brandName] = @brandName WHERE [brandId] = @brandId">
                                    <DeleteParameters>
                                        <asp:Parameter Name="brandId" Type="Int32" />
                                    </DeleteParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="brandName" Type="String" />
                                    </InsertParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="brandName" Type="String" />
                                        <asp:Parameter Name="brandId" Type="Int32" />
                                    </UpdateParameters>
                                </asp:SqlDataSource>

                                <div class="col justify-content-center my-3">
                                    <%--  <asp:Button ID="btnGotoList" CssClass="btn btn-dark shadow" runat="server" Text="Go To List" OnClick="btnGotoList_Click" />--%>
                                    <asp:Button ID="btnGotoBrand" CssClass="btn btn-dark shadow" runat="server" Text="Go To List" OnClick="btnGotoBrand_Click" />
                                </div>


                                <%-- FORM VIEW WITH SQL DATASOURCE START --%>

                                <asp:UpdatePanel ID="UpdatePanel9" runat="server">
                                    <ContentTemplate>

                                        <uc1:formViewUserControl runat="server" ID="formViewUserControl" />

                                    </ContentTemplate>
                                </asp:UpdatePanel>

                                <%-- FORM VIEW WITH SQL DATASOURCE END --%>



                                <%-- LIST VIEW START --%>

                                <asp:ListView ID="ListView1" runat="server" GroupPlaceholderID="groupPlaceHolder" ItemPlaceholderID="itemPlaceHolder">
                                    <LayoutTemplate>
                                        <table border="1" class="table table-bordered table-hover w-100 mt-3">
                                            <thead>
                                                <tr>
                                                    <th>ID</th>
                                                    <th>Name</th>
                                                    <th class="w-25">Action</th>
                                                </tr>
                                            </thead>
                                            <tbody id="groupPlaceHolder" runat="server">
                                            </tbody>
                                        </table>
                                    </LayoutTemplate>
                                    <GroupTemplate>
                                        <tbody id="itemPlaceHolder" runat="server"></tbody>
                                    </GroupTemplate>
                                    <ItemTemplate>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label7" CssClass="form-control" runat="server" Text='<%# Eval("brandId") %>'></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label8" CssClass="form-control" runat="server" Text='<%# Eval("brandName") %>'></asp:Label>
                                            </td>
                                            <td class="justify-content-center">
                                                <asp:Button ID="btnEdit" runat="server" Text="Edit" CssClass="btn btn-outline-success" CausesValidation="false" />
                                                <asp:Button ID="btnDelete" runat="server" Text="Delete" CssClass="btn btn-outline-danger" CausesValidation="false" />
                                            </td>
                                        </tr>
                                    </ItemTemplate>

                                </asp:ListView>
                                <%-- LIST VIEW END --%>
                            </ContentTemplate>
                        </asp:UpdatePanel>

                    </div>
                    <%-- BRANDS END --%>


                    <%-- CATEGORY START --%>
                    <div class="tab-pane fade" id="list-category" role="tabpanel" aria-labelledby="list-category-list">

                        <asp:UpdatePanel ID="UpdatePanel5" runat="server">
                            <ContentTemplate>

                                <div class="col justify-content-center my-3">
                                    <%--<asp:Button ID="btnAddCategory" CssClass="btn btn-primary shadow" runat="server" Text="Add Category" OnClick="btnAddCategory_Click" />--%>
                                    <asp:Button ID="btnAddCategory" CssClass="btn btn-primary shadow" runat="server" Text="Add Category" OnClick="btnAddCategory_Click1" />
                                </div>

                                <asp:GridView ID="GridView2" CssClass="table table-bordered table-hover w-100 shadow" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="categoryId" DataSourceID="dsCategoryGrid">
                                    <Columns>
                                        <asp:BoundField DataField="categoryId" HeaderText="categoryId" InsertVisible="False" ReadOnly="True" SortExpression="categoryId" Visible="False" />
                                        <asp:TemplateField HeaderText="Name" SortExpression="categoryName">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox1" CssClass="form-control shadow-lg" runat="server" Text='<%# Bind("categoryName") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label1" CssClass="form-control" runat="server" Text='<%# Bind("categoryName") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField ShowHeader="False">
                                            <EditItemTemplate>
                                                <asp:LinkButton ID="LinkButton1" CssClass="btn btn-primary btn-sm" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                                                &nbsp;<asp:LinkButton ID="LinkButton2" CssClass="btn btn-danger btn-sm" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:LinkButton ID="LinkButton1" CssClass="btn btn-success btn-sm" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                                                &nbsp;<asp:LinkButton ID="LinkButton2" CssClass="btn btn-danger btn-sm" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="170px" />
                                        </asp:TemplateField>
                                    </Columns>
                                </asp:GridView>

                                <asp:SqlDataSource ID="dsCategoryGrid" runat="server" ConnectionString="<%$ ConnectionStrings:aspProject %>" DeleteCommand="DELETE FROM [tblCategorys] WHERE [categoryId] = @categoryId" InsertCommand="INSERT INTO [tblCategorys] ([categoryName]) VALUES (@categoryName)" SelectCommand="SELECT * FROM [tblCategorys] ORDER BY [categoryId] DESC, [categoryName]" UpdateCommand="UPDATE [tblCategorys] SET [categoryName] = @categoryName WHERE [categoryId] = @categoryId">
                                    <DeleteParameters>
                                        <asp:Parameter Name="categoryId" Type="Int32" />
                                    </DeleteParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="categoryName" Type="String" />
                                    </InsertParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="categoryName" Type="String" />
                                        <asp:Parameter Name="categoryId" Type="Int32" />
                                    </UpdateParameters>
                                </asp:SqlDataSource>
                            </ContentTemplate>
                        </asp:UpdatePanel>


                        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                            <ContentTemplate>

                                <asp:DetailsView ID="DetailsView2" CssClass="table table-bordered table-hover w-100 shadow" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="categoryId" DataSourceID="dsCategoryInsert">
                                    <Fields>
                                        <asp:BoundField DataField="categoryId" HeaderText="categoryId" InsertVisible="False" ReadOnly="True" SortExpression="categoryId" Visible="False" />
                                        <asp:TemplateField HeaderText="Name" SortExpression="categoryName">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("categoryName") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <InsertItemTemplate>
                                                <asp:TextBox ID="TextBox1" CssClass="form-control shadow-lg" runat="server" Text='<%# Bind("categoryName") %>'></asp:TextBox>
                                            </InsertItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label1" CssClass="form-control" runat="server" Text='<%# Bind("categoryName") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField ShowHeader="False">
                                            <InsertItemTemplate>
                                                <asp:LinkButton ID="LinkButton1" CssClass="btn btn-primary" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert"></asp:LinkButton>
                                                &nbsp;<asp:LinkButton ID="LinkButton2" CssClass="btn btn-danger" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                                            </InsertItemTemplate>
                                            <ItemTemplate>
                                                <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-info" CausesValidation="False" CommandName="New" Text="New"></asp:LinkButton>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="170px" />
                                        </asp:TemplateField>
                                    </Fields>
                                </asp:DetailsView>

                                <asp:SqlDataSource ID="dsCategoryInsert" runat="server" ConnectionString="<%$ ConnectionStrings:aspProject %>" DeleteCommand="DELETE FROM [tblCategorys] WHERE [categoryId] = @categoryId" InsertCommand="INSERT INTO [tblCategorys] ([categoryName]) VALUES (@categoryName)" SelectCommand="SELECT * FROM [tblCategorys] ORDER BY [categoryId] DESC, [categoryName]" UpdateCommand="UPDATE [tblCategorys] SET [categoryName] = @categoryName WHERE [categoryId] = @categoryId">
                                    <DeleteParameters>
                                        <asp:Parameter Name="categoryId" Type="Int32" />
                                    </DeleteParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="categoryName" Type="String" />
                                    </InsertParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="categoryName" Type="String" />
                                        <asp:Parameter Name="categoryId" Type="Int32" />
                                    </UpdateParameters>
                                </asp:SqlDataSource>

                                <div class="col justify-content-center my-3">
                                    <%--<asp:Button ID="btnGotoCategory" CssClass="btn btn-dark shadow" runat="server" Text="Go To List" OnClick="btnGotoCategory_Click" />--%>
                                    <asp:Button ID="btnGotoCategory" CssClass="btn btn-dark shadow" runat="server" Text="Go To List" OnClick="btnGotoCategory_Click1" />
                                </div>

                            </ContentTemplate>
                        </asp:UpdatePanel>

                    </div>
                    <%-- CATEGORY END --%>


                    <%-- SUB CATEGORY START --%>
                    <div class="tab-pane fade" id="list-Subcategory" role="tabpanel" aria-labelledby="list-Subcategory-list">

                        <asp:UpdatePanel ID="UpdatePanel6" runat="server">
                            <ContentTemplate>

                                <div class="col justify-content-center my-3">
                                    <%--<asp:Button ID="btnAddSubCategory" CssClass="btn btn-primary shadow" runat="server" Text="Add Sub Category" />--%>
                                    <asp:Button ID="btnAddSubCategory" CssClass="btn btn-primary shadow" runat="server" Text="Add Sub Category" OnClick="btnAddSubCategory_Click1" />
                                </div>

                                <asp:GridView ID="GridView3" CssClass="table table-bordered table-primary w-100 shadow" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="subCategoryId" DataSourceID="dsSubCategoryGrid">
                                    <Columns>
                                        <asp:BoundField DataField="subCategoryId" HeaderText="subCategoryId" InsertVisible="False" ReadOnly="True" SortExpression="subCategoryId" Visible="False" />
                                        <asp:TemplateField HeaderText="Name" SortExpression="subCategoryName">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox1" CssClass="form-control shadow-lg" runat="server" Text='<%# Bind("subCategoryName") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label1" CssClass="form-control" runat="server" Text='<%# Bind("subCategoryName") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Main Category" SortExpression="mainCategoryId">
                                            <EditItemTemplate>

                                                <asp:DropDownList ID="DropDownList1" CssClass="form-control shadow" SelectedValue='<%# Bind("mainCategoryId") %>' runat="server" DataSourceID="dsMainCategoryEdit" DataTextField="categoryName" DataValueField="categoryId"></asp:DropDownList>

                                                <asp:SqlDataSource ID="dsMainCategoryEdit" runat="server" ConnectionString="<%$ ConnectionStrings:aspProject %>" SelectCommand="SELECT * FROM [tblCategorys] ORDER BY [categoryName]"></asp:SqlDataSource>

                                                <%--<asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("mainCategoryId") %>'></asp:TextBox>--%>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label2" CssClass="form-control" runat="server" Text='<%# Bind("categoryName") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField ShowHeader="False">
                                            <EditItemTemplate>
                                                <asp:LinkButton ID="LinkButton1" CssClass="btn btn-primary" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                                                &nbsp;<asp:LinkButton ID="LinkButton2" CssClass="btn btn-danger" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:LinkButton ID="LinkButton1" CssClass="btn btn-success" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                                                &nbsp;<asp:LinkButton ID="LinkButton2" CssClass="btn btn-danger" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                                            </ItemTemplate>
                                            <HeaderStyle Width="200px" />
                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:TemplateField>
                                    </Columns>
                                </asp:GridView>

                                <asp:SqlDataSource ID="dsSubCategoryGrid" runat="server" ConnectionString="<%$ ConnectionStrings:aspProject %>" DeleteCommand="DELETE FROM [tblSubCategorys] WHERE [subCategoryId] = @subCategoryId" InsertCommand="INSERT INTO [tblSubCategorys] ([subCategoryName], [mainCategoryId]) VALUES (@subCategoryName, @mainCategoryId)" SelectCommand="SELECT sc.mainCategoryId,sc.subCategoryId,sc.subCategoryName,c.categoryId,c.categoryName FROM tblSubCategorys sc INNER JOIN tblCategorys c ON sc.mainCategoryId=c.categoryId ORDER BY [subCategoryId] DESC, [subCategoryName]" UpdateCommand="UPDATE [tblSubCategorys] SET [subCategoryName] = @subCategoryName, [mainCategoryId] = @mainCategoryId WHERE [subCategoryId] = @subCategoryId">
                                    <DeleteParameters>
                                        <asp:Parameter Name="subCategoryId" Type="Int32" />
                                    </DeleteParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="subCategoryName" Type="String" />
                                        <asp:Parameter Name="mainCategoryId" Type="Int32" />
                                    </InsertParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="subCategoryName" Type="String" />
                                        <asp:Parameter Name="mainCategoryId" Type="Int32" />
                                        <asp:Parameter Name="subCategoryId" Type="Int32" />
                                    </UpdateParameters>
                                </asp:SqlDataSource>
                            </ContentTemplate>
                        </asp:UpdatePanel>


                        <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                            <ContentTemplate>
                                <asp:DetailsView ID="DetailsView3" runat="server" CssClass="table table-bordered table-primary w-100 shadow" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="subCategoryId" DataSourceID="dsSubCategoryInsert">
                                    <Fields>
                                        <asp:BoundField DataField="subCategoryId" HeaderText="subCategoryId" InsertVisible="False" ReadOnly="True" SortExpression="subCategoryId" Visible="False" />
                                        <asp:TemplateField HeaderText="Name" SortExpression="subCategoryName">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("subCategoryName") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <InsertItemTemplate>
                                                <asp:TextBox ID="TextBox1" CssClass="form-control shadow-lg" runat="server" Text='<%# Bind("subCategoryName") %>'></asp:TextBox>
                                            </InsertItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label1" CssClass="form-control" runat="server" Text='<%# Bind("subCategoryName") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle Width="150px" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Main Category" SortExpression="mainCategoryId">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("mainCategoryId") %>'></asp:TextBox>
                                            </EditItemTemplate>

                                            <InsertItemTemplate>
                                                <asp:DropDownList ID="DropDownList2" CssClass="form-control shadow-lg" SelectedValue='<%# Bind("mainCategoryId") %>' runat="server" DataSourceID="dsInsertSubCategoryMainCategory" DataTextField="categoryName" DataValueField="categoryId"></asp:DropDownList>
                                                <asp:SqlDataSource ID="dsInsertSubCategoryMainCategory" runat="server" ConnectionString="<%$ ConnectionStrings:aspProject %>" SelectCommand="SELECT * FROM [tblCategorys] ORDER BY [categoryName]"></asp:SqlDataSource>
                                                <%--<asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("mainCategoryId") %>'></asp:TextBox>--%>
                                            </InsertItemTemplate>

                                            <ItemTemplate>
                                                <asp:Label ID="Label2" CssClass="form-control" runat="server" Text='<%# Bind("categoryName") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField ShowHeader="False">
                                            <InsertItemTemplate>
                                                <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-primary" CausesValidation="True" CommandName="Insert" Text="Insert"></asp:LinkButton>
                                                &nbsp;<asp:LinkButton ID="LinkButton2" CssClass="btn btn-danger" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                                            </InsertItemTemplate>
                                            <ItemTemplate>
                                                <asp:LinkButton ID="LinkButton1" CssClass="btn btn-info" runat="server" CausesValidation="False" CommandName="New" Text="New"></asp:LinkButton>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:TemplateField>
                                    </Fields>

                                </asp:DetailsView>
                                <asp:SqlDataSource ID="dsSubCategoryInsert" runat="server" ConnectionString="<%$ ConnectionStrings:aspProject %>" DeleteCommand="DELETE FROM [tblSubCategorys] WHERE [subCategoryId] = @subCategoryId" InsertCommand="INSERT INTO [tblSubCategorys] ([subCategoryName], [mainCategoryId]) VALUES (@subCategoryName, @mainCategoryId)" SelectCommand="SELECT sc.mainCategoryId,sc.subCategoryId,sc.subCategoryName,c.categoryId,c.categoryName FROM tblSubCategorys sc INNER JOIN tblCategorys c ON sc.mainCategoryId=c.categoryId ORDER BY [subCategoryId] DESC, [subCategoryName]" UpdateCommand="UPDATE [tblSubCategorys] SET [subCategoryName] = @subCategoryName, [mainCategoryId] = @mainCategoryId WHERE [subCategoryId] = @subCategoryId">
                                    <DeleteParameters>
                                        <asp:Parameter Name="subCategoryId" Type="Int32" />
                                    </DeleteParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="subCategoryName" Type="String" />
                                        <asp:Parameter Name="mainCategoryId" Type="Int32" />
                                    </InsertParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="subCategoryName" Type="String" />
                                        <asp:Parameter Name="mainCategoryId" Type="Int32" />
                                        <asp:Parameter Name="subCategoryId" Type="Int32" />
                                    </UpdateParameters>
                                </asp:SqlDataSource>

                                <div class="col justify-content-center my-3">
                                    <%--<asp:Button ID="btnGotoSubCategory" CssClass="btn btn-dark shadow" runat="server" Text="Go To List" OnClick="btnGotoSubCategory_Click" />--%>
                                    <asp:Button ID="btnGotoSubCategory" runat="server" CssClass="btn btn-dark shadow" Text="Go To List" OnClick="btnGotoSubCategory_Click1" />
                                </div>

                            </ContentTemplate>
                        </asp:UpdatePanel>

                    </div>
                    <%-- SUB CATEGORY END --%>


                    <%-- GENDER START --%>
                    <div class="tab-pane fade" id="list-gender" role="tabpanel" aria-labelledby="list-gender-list">

                        <asp:UpdatePanel ID="UpdatePanel7" runat="server">
                            <ContentTemplate>

                                <asp:DetailsView ID="DetailsView4" CssClass="table table-bordered table-light w-100 shadow" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="genderId" DataSourceID="dsGender">
                                    <Fields>
                                        <asp:BoundField DataField="genderId" HeaderText="genderId" InsertVisible="False" ReadOnly="True" SortExpression="genderId" Visible="False" />
                                        <asp:TemplateField HeaderText="Name" SortExpression="genderName">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox1" CssClass="form-control shadow-lg" runat="server" Text='<%# Bind("genderName") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <InsertItemTemplate>
                                                <asp:TextBox ID="TextBox1" CssClass="form-control shadow-lg" runat="server" Text='<%# Bind("genderName") %>'></asp:TextBox>
                                            </InsertItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label1" CssClass="form-control" runat="server" Text='<%# Bind("genderName") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle Width="150px" />
                                        </asp:TemplateField>
                                        <asp:TemplateField ShowHeader="False">
                                            <EditItemTemplate>
                                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CssClass="btn btn-primary" CommandName="Update" Text="Update"></asp:LinkButton>
                                                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CssClass="btn btn-danger" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                                            </EditItemTemplate>
                                            <InsertItemTemplate>
                                                <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-primary" CausesValidation="True" CommandName="Insert" Text="Insert"></asp:LinkButton>
                                                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CssClass="btn btn-danger" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                                            </InsertItemTemplate>
                                            <ItemTemplate>
                                                <asp:LinkButton ID="LinkButton1" CssClass="btn btn-success" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                                                &nbsp;<asp:LinkButton ID="LinkButton2" CssClass="btn btn-info" runat="server" CausesValidation="False" CommandName="New" Text="New"></asp:LinkButton>
                                                &nbsp;<asp:LinkButton ID="LinkButton3" CssClass="btn btn-danger" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Fields>
                                </asp:DetailsView>


                                <asp:SqlDataSource ID="dsGender" runat="server" ConnectionString="<%$ ConnectionStrings:aspProject %>" DeleteCommand="DELETE FROM [tblGender] WHERE [genderId] = @genderId" InsertCommand="INSERT INTO [tblGender] ([genderName]) VALUES (@genderName)" SelectCommand="SELECT * FROM [tblGender] ORDER BY [genderName]" UpdateCommand="UPDATE [tblGender] SET [genderName] = @genderName WHERE [genderId] = @genderId">
                                    <DeleteParameters>
                                        <asp:Parameter Name="genderId" Type="Int32" />
                                    </DeleteParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="genderName" Type="String" />
                                    </InsertParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="genderName" Type="String" />
                                        <asp:Parameter Name="genderId" Type="Int32" />
                                    </UpdateParameters>
                                </asp:SqlDataSource>


                            </ContentTemplate>
                        </asp:UpdatePanel>

                    </div>



                    <div class="tab-pane fade" id="list-size" role="tabpanel" aria-labelledby="list-settings-list">

                        <asp:UpdatePanel ID="UpdatePanel8" runat="server">
                            <ContentTemplate>

                                <asp:DetailsView ID="DetailsView5" runat="server" CssClass="table table-hover table-bordered w-100 shadow" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="sizeId" DataSourceID="dsSize">

                                    <Fields>
                                        <asp:BoundField DataField="sizeId" HeaderText="sizeId" InsertVisible="False" ReadOnly="True" SortExpression="sizeId" Visible="False" />
                                        <asp:TemplateField HeaderText="Name" SortExpression="sizeName">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox1" CssClass="form-control shadow-lg" runat="server" Text='<%# Bind("sizeName") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <InsertItemTemplate>
                                                <asp:TextBox ID="TextBox1" CssClass="form-control shadow-lg" runat="server" Text='<%# Bind("sizeName") %>'></asp:TextBox>
                                            </InsertItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label1" CssClass="form-control" runat="server" Text='<%# Bind("sizeName") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle Width="150px" />
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Brand" SortExpression="FKbrandId">
                                            <EditItemTemplate>

                                                <asp:DropDownList ID="DropDownList3" CssClass="form-control shadow-lg" runat="server" SelectedValue='<%# Bind("FKbrandId") %>' DataSourceID="dsEditBrandInSize" DataTextField="brandName" DataValueField="brandId"></asp:DropDownList>

                                                <asp:SqlDataSource ID="dsEditBrandInSize" runat="server" ConnectionString="<%$ ConnectionStrings:aspProject %>" SelectCommand="SELECT * FROM [tblBrands] ORDER BY [brandName]"></asp:SqlDataSource>

                                                <%--<asp:TextBox ID="TextBox2" CssClass="form-control shadow-lg" runat="server" Text='<%# Bind("FKbrandId") %>'></asp:TextBox>--%>
                                            </EditItemTemplate>

                                            <InsertItemTemplate>

                                                <asp:DropDownList ID="DropDownList4" CssClass="form-control shadow-lg" runat="server" SelectedValue='<%# Bind("FKbrandId") %>' DataSourceID="dsInsertBrandInSize" DataTextField="brandName" DataValueField="brandId"></asp:DropDownList>

                                                <asp:SqlDataSource ID="dsInsertBrandInSize" runat="server" ConnectionString="<%$ ConnectionStrings:aspProject %>" SelectCommand="SELECT * FROM [tblBrands] ORDER BY [brandName]"></asp:SqlDataSource>

                                                <%--<asp:TextBox ID="TextBox2" CssClass="form-control shadow-lg" runat="server" Text='<%# Bind("FKbrandId") %>'></asp:TextBox>--%>
                                            </InsertItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label2" CssClass="form-control" runat="server" Text='<%# Bind("brandName") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>


                                        <asp:TemplateField HeaderText="Category" SortExpression="FKcategoryId">
                                            <EditItemTemplate>

                                                <asp:DropDownList ID="DropDownList5" CssClass="form-control shadow-lg" runat="server" SelectedValue='<%# Bind("FKcategoryId") %>' DataSourceID="dsEditCategoryInSize" DataTextField="categoryName" DataValueField="categoryId" AutoPostBack="True"></asp:DropDownList>

                                                <asp:SqlDataSource ID="dsEditCategoryInSize" runat="server" ConnectionString="<%$ ConnectionStrings:aspProject %>" SelectCommand="SELECT * FROM [tblCategorys] ORDER BY [categoryName]"></asp:SqlDataSource>

                                                <%--<asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("FKcategoryId") %>'></asp:TextBox>--%>
                                            </EditItemTemplate>
                                            <InsertItemTemplate>


                                                <asp:DropDownList ID="DropDownList9" CssClass="form-control shadow-lg" runat="server" SelectedValue='<%# Bind("FKcategoryId") %>' DataSourceID="dsInsertCategoryInSize" DataTextField="categoryName" DataValueField="categoryId" AutoPostBack="True"></asp:DropDownList>

                                                <asp:SqlDataSource ID="dsInsertCategoryInSize" runat="server" ConnectionString="<%$ ConnectionStrings:aspProject %>" SelectCommand="SELECT * FROM [tblCategorys] ORDER BY [categoryName]"></asp:SqlDataSource>

                                                <%--<asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("FKcategoryId") %>'></asp:TextBox>--%>
                                            </InsertItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label3" CssClass="form-control" runat="server" Text='<%# Bind("categoryName") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>


                                        <asp:TemplateField HeaderText="Sub Category" SortExpression="FKsubCategoryId">
                                            <EditItemTemplate>

                                                <asp:DropDownList ID="DropDownList7" SelectedValue='<%# Bind("FKsubCategoryId") %>' CssClass="form-control shadow-lg" runat="server" DataSourceID="dsEditSubCategoryInSize" DataTextField="subCategoryName" DataValueField="subCategoryId"></asp:DropDownList>

                                                <asp:SqlDataSource ID="dsEditSubCategoryInSize" runat="server" ConnectionString="<%$ ConnectionStrings:aspProject %>" SelectCommand="SELECT * FROM [tblSubCategorys]">
                                                    <SelectParameters>
                                                        <asp:Parameter DefaultValue="1" Name="mainCategoryId" Type="Int32" />
                                                    </SelectParameters>
                                                </asp:SqlDataSource>

                                                <%--<asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("FKsubCategoryId") %>'></asp:TextBox>--%>
                                            </EditItemTemplate>
                                            <InsertItemTemplate>

                                                <asp:DropDownList ID="DropDownList8" SelectedValue='<%# Bind("FKsubCategoryId") %>' CssClass="form-control shadow-lg" runat="server" DataSourceID="dsInsertSubCategoryInSize" DataTextField="subCategoryName" DataValueField="subCategoryId"></asp:DropDownList>

                                                <asp:SqlDataSource ID="dsInsertSubCategoryInSize" runat="server" ConnectionString="<%$ ConnectionStrings:aspProject %>" SelectCommand="SELECT * FROM [tblSubCategorys]">
                                                    <SelectParameters>
                                                        <asp:Parameter DefaultValue="1" Name="mainCategoryId" Type="Int32" />
                                                    </SelectParameters>
                                                </asp:SqlDataSource>

                                                <%--<asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("FKsubCategoryId") %>'></asp:TextBox>--%>
                                            </InsertItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label4" CssClass="form-control" runat="server" Text='<%# Bind("subCategoryName") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Gender" SortExpression="FKgenderId">
                                            <EditItemTemplate>

                                                <asp:DropDownList ID="DropDownList6" CssClass="form-control shadow-lg" SelectedValue='<%# Bind("FKgenderId") %>' runat="server" DataSourceID="dsEditGenderInSize" DataTextField="genderName" DataValueField="genderId"></asp:DropDownList>

                                                <asp:SqlDataSource ID="dsEditGenderInSize" runat="server" ConnectionString="<%$ ConnectionStrings:aspProject %>" SelectCommand="SELECT * FROM [tblGender] ORDER BY [genderName]"></asp:SqlDataSource>

                                                <%--<asp:TextBox ID="TextBox5" CssClass="form-control shadow-lg" runat="server" Text='<%# Bind("FKgenderId") %>'></asp:TextBox>--%>
                                            </EditItemTemplate>
                                            <InsertItemTemplate>


                                                <asp:DropDownList ID="DropDownList7" CssClass="form-control shadow-lg" SelectedValue='<%# Bind("FKgenderId") %>' runat="server" DataSourceID="dsInsertGenderInSize" DataTextField="genderName" DataValueField="genderId"></asp:DropDownList>

                                                <asp:SqlDataSource ID="dsInsertGenderInSize" runat="server" ConnectionString="<%$ ConnectionStrings:aspProject %>" SelectCommand="SELECT * FROM [tblGender] ORDER BY [genderName]"></asp:SqlDataSource>

                                                <%--<asp:TextBox ID="TextBox5" CssClass="form-control shadow-lg" runat="server" Text='<%# Bind("FKgenderId") %>'></asp:TextBox>--%>
                                            </InsertItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label5" CssClass="form-control" runat="server" Text='<%# Bind("genderName") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField ShowHeader="False">
                                            <EditItemTemplate>
                                                <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-primary shadow" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                                                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CssClass="btn btn-danger shadow" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                                            </EditItemTemplate>
                                            <InsertItemTemplate>
                                                <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-primary shadow" CausesValidation="True" CommandName="Insert" Text="Insert"></asp:LinkButton>
                                                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CssClass="btn btn-danger shadow" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                                            </InsertItemTemplate>
                                            <ItemTemplate>
                                                <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-success shadow" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                                                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CssClass="btn btn-info shadow" CausesValidation="False" CommandName="New" Text="New"></asp:LinkButton>
                                                &nbsp;<asp:LinkButton ID="LinkButton3" runat="server" CssClass="btn btn-danger shadow" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                                            </ItemTemplate>
                                            <HeaderStyle Width="170px" />
                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:TemplateField>
                                    </Fields>
                                </asp:DetailsView>

                                <asp:SqlDataSource ID="dsSize" runat="server" ConnectionString="<%$ ConnectionStrings:aspProject %>" DeleteCommand="DELETE FROM [tblSizes] WHERE [sizeId] = @sizeId" InsertCommand="INSERT INTO [tblSizes] ([sizeName], [FKbrandId], [FKcategoryId], [FKsubCategoryId], [FKgenderId]) VALUES (@sizeName, @FKbrandId, @FKcategoryId, @FKsubCategoryId, @FKgenderId)" SelectCommand="SELECT s.FKbrandId,s.FKcategoryId,s.FKgenderId,s.FKsubCategoryId,s.sizeId,s.sizeName,b.brandId,b.brandName,c.categoryId,c.categoryName,sc.mainCategoryId,sc.subCategoryId,sc.subCategoryName,g.genderId,g.genderName FROM tblSizes s INNER JOIN tblBrands b ON s.FKbrandId=b.brandId INNER JOIN tblCategorys c ON s.FKcategoryId=c.categoryId INNER JOIN tblSubCategorys sc ON sc.subCategoryId=s.FKsubCategoryId INNER JOIN tblGender g ON s.FKgenderId=g.genderId" UpdateCommand="UPDATE [tblSizes] SET [sizeName] = @sizeName, [FKbrandId] = @FKbrandId, [FKcategoryId] = @FKcategoryId, [FKsubCategoryId] = @FKsubCategoryId, [FKgenderId] = @FKgenderId WHERE [sizeId] = @sizeId">
                                    <DeleteParameters>
                                        <asp:Parameter Name="sizeId" Type="Int32" />
                                    </DeleteParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="sizeName" Type="String" />
                                        <asp:Parameter Name="FKbrandId" Type="Int32" />
                                        <asp:Parameter Name="FKcategoryId" Type="Int32" />
                                        <asp:Parameter Name="FKsubCategoryId" Type="Int32" />
                                        <asp:Parameter Name="FKgenderId" Type="Int32" />
                                    </InsertParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="sizeName" Type="String" />
                                        <asp:Parameter Name="FKbrandId" Type="Int32" />
                                        <asp:Parameter Name="FKcategoryId" Type="Int32" />
                                        <asp:Parameter Name="FKsubCategoryId" Type="Int32" />
                                        <asp:Parameter Name="FKgenderId" Type="Int32" />
                                        <asp:Parameter Name="sizeId" Type="Int32" />
                                    </UpdateParameters>
                                </asp:SqlDataSource>

                            </ContentTemplate>
                        </asp:UpdatePanel>

                    </div>



                    <%--   <div class="tab-pane fade" id="list-settings" role="tabpanel" aria-labelledby="list-settings-list">...</div>
                    <div class="tab-pane fade" id="list-settings" role="tabpanel" aria-labelledby="list-settings-list">...</div>--%>
                    <%--                    <div class="tab-pane fade" id="list-messages" role="tabpanel" aria-labelledby="list-messages-list">...</div>
                    <div class="tab-pane fade" id="list-settings" role="tabpanel" aria-labelledby="list-settings-list">...</div>--%>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="FooterContent" runat="server">
</asp:Content>
