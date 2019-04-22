<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditJob.aspx.cs" Inherits="GovtJobEntity.EditJob" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>

        table, td {
            border:1px solid white;
            height:auto;
            width:auto;
            padding:20px;
        }

    </style>
    
    <!--Add Job-->
		<div class="login-form" style="border:0px solid red;height:auto;width:auto;padding:20px;">
			<div class="close"> </div>
					<div class="head-info">
						<h1><span>Govt</span>.<span>Job</span>- Edit Job</h1>
						<h2>You are almost done! One more step.</h2>
					</div>
						<div class="strip">
					</div>
            <asp:ListView ID="ListView1" runat="server" DataKeyNames="id" DataSourceID="SqlDataSource1">
                <AlternatingItemTemplate>
                    <tr style="background-color:#FFF8DC;">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        </td>
                        <td>
                            <asp:Label ID="DepartmentLabel" runat="server" Text='<%# Eval("Department") %>' />
                        </td>
                        <td>
                            <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="CategoryLabel" runat="server" Text='<%# Eval("Category") %>' />
                        </td>
                        <td>
                            <asp:Label ID="DesignationLabel" runat="server" Text='<%# Eval("Designation") %>' />
                        </td>
                        <td>
                            <asp:Label ID="PostsLabel" runat="server" Text='<%# Eval("Posts") %>' />
                        </td>
                        <td>
                            <asp:Label ID="LastdateLabel" runat="server" Text='<%# Eval("Lastdate") %>' />
                        </td>
                        <td>
                            <asp:Label ID="SalaryLabel" runat="server" Text='<%# Eval("Salary") %>' />
                        </td>
                    </tr>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <tr style="background-color:#008A8C;color: #FFFFFF;">
                        <td>
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                        </td>
                        <td>
                            <asp:TextBox ID="DepartmentTextBox" runat="server" Text='<%# Bind("Department") %>' />
                        </td>
                        <td>
                            <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="CategoryTextBox" runat="server" Text='<%# Bind("Category") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="DesignationTextBox" runat="server" Text='<%# Bind("Designation") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="PostsTextBox" runat="server" Text='<%# Bind("Posts") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="LastdateTextBox" runat="server" Text='<%# Bind("Lastdate") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="SalaryTextBox" runat="server" Text='<%# Bind("Salary") %>' />
                        </td>
                    </tr>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                        <tr>
                            <td>No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                        </td>
                        <td>
                            <asp:TextBox ID="DepartmentTextBox" runat="server" Text='<%# Bind("Department") %>' />
                        </td>
                        <td>&nbsp;</td>
                        <td>
                            <asp:TextBox ID="CategoryTextBox" runat="server" Text='<%# Bind("Category") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="DesignationTextBox" runat="server" Text='<%# Bind("Designation") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="PostsTextBox" runat="server" Text='<%# Bind("Posts") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="LastdateTextBox" runat="server" Text='<%# Bind("Lastdate") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="SalaryTextBox" runat="server" Text='<%# Bind("Salary") %>' />
                        </td>
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr style="background-color:#DCDCDC;color: #000000;">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        </td>
                        <td>
                            <asp:Label ID="DepartmentLabel" runat="server" Text='<%# Eval("Department") %>' />
                        </td>
                        <td>
                            <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="CategoryLabel" runat="server" Text='<%# Eval("Category") %>' />
                        </td>
                        <td>
                            <asp:Label ID="DesignationLabel" runat="server" Text='<%# Eval("Designation") %>' />
                        </td>
                        <td>
                            <asp:Label ID="PostsLabel" runat="server" Text='<%# Eval("Posts") %>' />
                        </td>
                        <td>
                            <asp:Label ID="LastdateLabel" runat="server" Text='<%# Eval("Lastdate") %>' />
                        </td>
                        <td>
                            <asp:Label ID="SalaryLabel" runat="server" Text='<%# Eval("Salary") %>' />
                        </td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                    <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                        <th runat="server"></th>
                                        <th runat="server">Department</th>
                                        <th runat="server">id</th>
                                        <th runat="server">Category</th>
                                        <th runat="server">Designation</th>
                                        <th runat="server">Posts</th>
                                        <th runat="server">Lastdate</th>
                                        <th runat="server">Salary</th>
                                    </tr>
                                    <tr id="itemPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                                <asp:DataPager ID="DataPager1" runat="server">
                                    <Fields>
                                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                    </Fields>
                                </asp:DataPager>
                            </td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        </td>
                        <td>
                            <asp:Label ID="DepartmentLabel" runat="server" Text='<%# Eval("Department") %>' />
                        </td>
                        <td>
                            <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="CategoryLabel" runat="server" Text='<%# Eval("Category") %>' />
                        </td>
                        <td>
                            <asp:Label ID="DesignationLabel" runat="server" Text='<%# Eval("Designation") %>' />
                        </td>
                        <td>
                            <asp:Label ID="PostsLabel" runat="server" Text='<%# Eval("Posts") %>' />
                        </td>
                        <td>
                            <asp:Label ID="LastdateLabel" runat="server" Text='<%# Eval("Lastdate") %>' />
                        </td>
                        <td>
                            <asp:Label ID="SalaryLabel" runat="server" Text='<%# Eval("Salary") %>' />
                        </td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>
			
	        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:jobDBConnectionString2 %>" DeleteCommand="DELETE FROM [JobData] WHERE [id] = @id" InsertCommand="INSERT INTO [JobData] ([Department], [Category], [Designation], [Posts], [Lastdate], [Salary]) VALUES (@Department, @Category, @Designation, @Posts, @Lastdate, @Salary)" SelectCommand="SELECT [Department], [id], [Category], [Designation], [Posts], [Lastdate], [Salary] FROM [JobData]" UpdateCommand="UPDATE [JobData] SET [Department] = @Department, [Category] = @Category, [Designation] = @Designation, [Posts] = @Posts, [Lastdate] = @Lastdate, [Salary] = @Salary WHERE [id] = @id">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Department" Type="String" />
                    <asp:Parameter Name="Category" Type="String" />
                    <asp:Parameter Name="Designation" Type="String" />
                    <asp:Parameter Name="Posts" Type="Int32" />
                    <asp:Parameter Name="Lastdate" Type="String" />
                    <asp:Parameter Name="Salary" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Department" Type="String" />
                    <asp:Parameter Name="Category" Type="String" />
                    <asp:Parameter Name="Designation" Type="String" />
                    <asp:Parameter Name="Posts" Type="Int32" />
                    <asp:Parameter Name="Lastdate" Type="String" />
                    <asp:Parameter Name="Salary" Type="Int32" />
                    <asp:Parameter Name="id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br /><br />
<a href="Dashboard.aspx" class="hvr-bounce-to-bottom">Back</a>			
	</div>
 
</asp:Content>
