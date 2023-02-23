<%@ Page Title="" Language="C#" MasterPageFile="~/AnondoBazarMasterPage.Master" AutoEventWireup="true" CodeBehind="frmNewEmployee.aspx.cs" Inherits="AnondoBazar.frmNewEmployee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContent" runat="server">

     <div class="col-8 m-auto" style="color:#666;">
       <%-- <div class="text-center p-2 m-3 shadow">
             <h2>New Employee</h2>
        </div>--%>

        <div class="col-8 m-auto p-3 m-3">
            <asp:ValidationSummary ID="ValidationSummary1" CssClass="p-4 rounded" runat="server" BackColor="#FF3300" DisplayMode="List" ForeColor="#FFFFCC" HeaderText="----------&gt;&gt; Validation Summery ----------&gt;&gt;" />
        </div>

       <div class="row">
            <div class="col-10 m-auto">

                <asp:DetailsView ID="DetailsView1" CssClass="table table-bordered table-hover shadow w-100" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="employeeId" DataSourceID="SqlDataSource1" CellPadding="4" OnItemInserting="DetailsView1_ItemInserting" OnItemUpdating="DetailsView1_ItemUpdating" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px">
                    <EditRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                    <Fields>
                    <asp:BoundField DataField="employeeId" HeaderText="ID :" InsertVisible="False" ReadOnly="True" SortExpression="employeeId" Visible="False">
                    <HeaderStyle Width="200px" />
                    <ItemStyle BackColor="#FFFF99" Font-Bold="True" Font-Size="Large" ForeColor="#003366" />
                    </asp:BoundField>

                    <asp:TemplateField HeaderText="Name :" SortExpression="employeeName">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" Text='<%# Bind("employeeName") %>'></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is Required" ControlToValidate="TextBox1" ForeColor="#FFFFCC" Display="Dynamic" SetFocusOnError="True">Name is Required</asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox1"  CssClass="form-control"  runat="server" Text='<%# Bind("employeeName") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Name" ControlToValidate="TextBox1" ForeColor="#FFFFCC" Display="Dynamic" SetFocusOnError="True">Name is Required</asp:RequiredFieldValidator>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("employeeName") %>'></asp:Label>
                        </ItemTemplate>
                        <HeaderStyle Width="200px" />
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Email :" SortExpression="employeeEmail">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" Text='<%# Bind("employeeEmail") %>'></asp:TextBox>

                              <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Emaail Is Required" ControlToValidate="TextBox3" ForeColor="#FFFFCC" Display="Dynamic">Email Is Required</asp:RequiredFieldValidator>

                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Email Data Type" ControlToValidate="TextBox3" Display="Dynamic" ForeColor="#FFFFCC" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Email Data Type Don&#39;t Match</asp:RegularExpressionValidator>

                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" Text='<%# Bind("employeeEmail") %>'></asp:TextBox>

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Email" ControlToValidate="TextBox3" ForeColor="#FFFFCC" Display="Dynamic" SetFocusOnError="True">Email Is Required</asp:RequiredFieldValidator>

                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Email Data Type" ControlToValidate="TextBox3" Display="Dynamic" ForeColor="#FFFFCC" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Email Data Type Don&#39;t Match</asp:RegularExpressionValidator>
                          
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("employeeEmail") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>


                    <asp:TemplateField HeaderText="Confirm Email :" SortExpression="employeeConfirmEmail">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server" Text='<%# Bind("employeeConfirmEmail") %>'></asp:TextBox>

                              <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Confirm Email" ControlToValidate="TextBox3" ForeColor="#FFFFCC" Display="Dynamic">Confirm Email Is Required</asp:RequiredFieldValidator>

                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Confirm Email Data Type" ControlToValidate="TextBox3" Display="Dynamic" ForeColor="#FFFFCC" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Email Data Type Don&#39;t Match</asp:RegularExpressionValidator>

                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server" Text='<%# Bind("employeeConfirmEmail") %>'></asp:TextBox>

                              <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Confirm Email" ControlToValidate="TextBox4" ForeColor="#FFFFCC" Display="Dynamic">Confirm Email Is Required</asp:RequiredFieldValidator>

                            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Confirm Email Data Type" ControlToValidate="TextBox4" Display="Dynamic" ForeColor="#FFFFCC" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Email Data Type Don&#39;t Match</asp:RegularExpressionValidator>

                            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Mail Don't Match" ControlToCompare="TextBox3" ControlToValidate="TextBox4" Display="Dynamic" ForeColor="#FFFF66" SetFocusOnError="True">Mail Don&#39;t Match</asp:CompareValidator>

                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("employeeConfirmEmail") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>



                    <asp:TemplateField HeaderText="Material Status :" SortExpression="employeeMaterialStatus">
                        <EditItemTemplate>
                            <asp:CheckBox ID="CheckBox1" CssClass="form-control" Text=" Married" TextAlign="Right" runat="server" Checked='<%# Bind("employeeMaterialStatus") %>' />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:CheckBox ID="CheckBox1" CssClass="form-control" Text=" Married" TextAlign="Right"  runat="server" Checked='<%# Bind("employeeMaterialStatus") %>' />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("employeeMaterialStatus") %>' Enabled="false" />
                        </ItemTemplate>
                    </asp:TemplateField>


                    <asp:TemplateField HeaderText="Join Date :" SortExpression="employeeJoinDate">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" CssClass="form-control"  runat="server" Text='<%# Bind("employeeJoinDate","{0:yyyy/MM/dd}") %>'></asp:TextBox>

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="Join Date" ControlToValidate="TextBox2" Display="Dynamic" ForeColor="#FFFF99" SetFocusOnError="True">Join Date Is Reuired</asp:RequiredFieldValidator>

                            <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Date Must Be <=Today" ControlToValidate="TextBox2" Display="Dynamic" Font-Bold="True" ForeColor="#FFFF66" OnServerValidate="CustomValidator1_ServerValidate" SetFocusOnError="True">Join Date Must Be <=Today</asp:CustomValidator>

                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox2" CssClass="form-control" TextMode="Date" runat="server" Text='<%# Bind("employeeJoinDate") %>'></asp:TextBox>

                             <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="Join Date" ControlToValidate="TextBox2" Display="Dynamic" ForeColor="#FFFF99" SetFocusOnError="True">Join Date Is Reuired</asp:RequiredFieldValidator>

                            <asp:CustomValidator ID="CustomValidator2" runat="server" ErrorMessage="Date Must Be <=Today" ControlToValidate="TextBox2" Display="Dynamic" Font-Bold="True" ForeColor="#FFFF66" OnServerValidate="CustomValidator1_ServerValidate" SetFocusOnError="True">Join Date Must Be <=Today</asp:CustomValidator>

                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("employeeJoinDate","{0:yyyy/MM/dd}") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>



                    <asp:TemplateField HeaderText="Picture :" SortExpression="employeePicture">
                        <EditItemTemplate>                         
                            <asp:FileUpload ID="PictureFileUpload2" CssClass="form-control" runat="server" />
                            <asp:HiddenField ID="HiddenField2" runat="server" Value='<%# Bind("employeePicture") %>' />

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Image" ControlToValidate="PictureFileUpload2" ForeColor="#FFFF99" SetFocusOnError="True">Image Is Reuired</asp:RequiredFieldValidator>
                        </EditItemTemplate>

                        <InsertItemTemplate>
                            <asp:FileUpload ID="PictureFileUpload" CssClass="form-control" runat="server" />
                            <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Bind("employeePicture") %>' />

                              <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Image" ControlToValidate="PictureFileUpload" ForeColor="#FFFF99" SetFocusOnError="True">Image Is Reuired</asp:RequiredFieldValidator>                          
                        </InsertItemTemplate>
                        <ItemTemplate>

                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("employeePicture","~/Images/{0}") %>'  Width="90"/>

                         <%--   <asp:Label ID="Label6" runat="server" Text='<%# Bind("employeePicture") %>'></asp:Label>--%>
                        </ItemTemplate>
                    </asp:TemplateField>




                    <asp:TemplateField HeaderText="Salary" SortExpression="employeeSalary">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server" Text='<%# Bind("employeeSalary") %>'></asp:TextBox>

                             <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Salary" ControlToValidate="TextBox5" ForeColor="#FFFFCC" Display="Dynamic" SetFocusOnError="True">Salary Is Required</asp:RequiredFieldValidator>

                            <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Salary Is Not Correct" ControlToValidate="TextBox5" Display="Dynamic" ForeColor="#FFFF66" MaximumValue="200000" MinimumValue="25000" SetFocusOnError="True" Type="Integer">Salary Must &gt;=25000 &amp; &lt;=200000</asp:RangeValidator>

                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server" Text='<%# Bind("employeeSalary") %>'></asp:TextBox>

                             <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Salary" ControlToValidate="TextBox5" ForeColor="#FFFFCC" Display="Dynamic" SetFocusOnError="True">Salary Is Required</asp:RequiredFieldValidator>


                            <asp:RangeValidator ID="RangeValidator2" runat="server" ErrorMessage="Salary Is Not Correct" ControlToValidate="TextBox5" Display="Dynamic" ForeColor="#FFFF66" MaximumValue="200000" MinimumValue="25000" SetFocusOnError="True" Type="Integer">Salary Must &gt;=25000 &amp; &lt;=200000</asp:RangeValidator>


                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("employeeSalary") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>


                    <asp:TemplateField ShowHeader="False">
                        <EditItemTemplate>
                            <asp:LinkButton ID="LinkButton1" CssClass="btn btn-success" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" CssClass="btn btn-danger" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:LinkButton ID="LinkButton1" CssClass="btn btn-primary" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" CssClass="btn btn-danger" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" CssClass="btn btn-success" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" CssClass="btn btn-primary" runat="server" CausesValidation="False" CommandName="New" Text="New"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton3" CssClass="btn btn-danger" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:TemplateField>
                </Fields>
                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#330099" />
                </asp:DetailsView>

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:aspProject %>" DeleteCommand="DELETE FROM [tblEmployee] WHERE [employeeId] = @employeeId" InsertCommand="INSERT INTO [tblEmployee] ([employeeName], [employeeEmail], [employeeConfirmEmail], [employeeMaterialStatus], [employeeJoinDate], [employeePicture], [employeeSalary], [adminId]) VALUES (@employeeName, @employeeEmail, @employeeConfirmEmail, @employeeMaterialStatus, @employeeJoinDate, @employeePicture, @employeeSalary, @roleId)" SelectCommand="SELECT e.employeeId,e.employeeName,e.employeeEmail,e.employeeConfirmEmail,e.employeeMaterialStatus,e.employeeJoinDate,e.employeePicture,e.employeeSalary,e.adminId,a.roleName FROM tblEmployee e INNER JOIN tblRole a ON e.adminId=a.roleId" UpdateCommand="UPDATE [tblEmployee] SET [employeeName] = @employeeName, [employeeEmail] = @employeeEmail, [employeeConfirmEmail] = @employeeConfirmEmail, [employeeMaterialStatus] = @employeeMaterialStatus, [employeeJoinDate] = @employeeJoinDate, [employeePicture] = @employeePicture, [employeeSalary] = @employeeSalary, [adminId] = @roleId WHERE [employeeId] = @employeeId">
                    <DeleteParameters>
                        <asp:Parameter Name="employeeId" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="employeeName" Type="String" />
                        <asp:Parameter Name="employeeEmail" Type="String" />
                        <asp:Parameter Name="employeeConfirmEmail" Type="String" />
                        <asp:Parameter Name="employeeMaterialStatus" Type="Boolean" />
                        <asp:Parameter DbType="Date" Name="employeeJoinDate" />
                        <asp:Parameter Name="employeePicture" Type="String" />
                        <asp:Parameter Name="employeeSalary" Type="Decimal" />
                        <asp:Parameter Name="roleId" Type="Int32" DefaultValue="4" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="employeeName" Type="String" />
                        <asp:Parameter Name="employeeEmail" Type="String" />
                        <asp:Parameter Name="employeeConfirmEmail" Type="String" />
                        <asp:Parameter Name="employeeMaterialStatus" Type="Boolean" />
                        <asp:Parameter DbType="Date" Name="employeeJoinDate" />
                        <asp:Parameter Name="employeePicture" Type="String" />
                        <asp:Parameter Name="employeeSalary" Type="Decimal" />
                        <asp:Parameter Name="roleId" Type="Int32" DefaultValue="4"/>
                        <asp:Parameter Name="employeeId" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
           
        </div>
       </div>

    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="FooterContent" runat="server">
</asp:Content>
