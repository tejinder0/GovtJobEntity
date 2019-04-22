<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Editqueries.aspx.cs" Inherits="GovtJobEntity.Editqueries" %>
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
						<h1><span>Govt</span>.<span>Job</span>- Edit Queries</h1>
						<h2>You are almost done! One more step.</h2>
					</div>
						<div class="strip">
					</div>

            <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                <AlternatingItemTemplate>
                    <tr style="background-color:#FFF8DC;">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        </td>
                        <td>
                            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="SnameLabel" runat="server" Text='<%# Eval("Sname") %>' />
                        </td>
                        <td>
                            <asp:Label ID="ScontactLabel" runat="server" Text='<%# Eval("Scontact") %>' />
                        </td>
                        <td>
                            <asp:Label ID="SemailLabel" runat="server" Text='<%# Eval("Semail") %>' />
                        </td>
                        <td>
                            <asp:Label ID="SmsgLabel" runat="server" Text='<%# Eval("Smsg") %>' />
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
                            <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="SnameTextBox" runat="server" Text='<%# Bind("Sname") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="ScontactTextBox" runat="server" Text='<%# Bind("Scontact") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="SemailTextBox" runat="server" Text='<%# Bind("Semail") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="SmsgTextBox" runat="server" Text='<%# Bind("Smsg") %>' />
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
                        <td>&nbsp;</td>
                        <td>
                            <asp:TextBox ID="SnameTextBox" runat="server" Text='<%# Bind("Sname") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="ScontactTextBox" runat="server" Text='<%# Bind("Scontact") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="SemailTextBox" runat="server" Text='<%# Bind("Semail") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="SmsgTextBox" runat="server" Text='<%# Bind("Smsg") %>' />
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
                            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="SnameLabel" runat="server" Text='<%# Eval("Sname") %>' />
                        </td>
                        <td>
                            <asp:Label ID="ScontactLabel" runat="server" Text='<%# Eval("Scontact") %>' />
                        </td>
                        <td>
                            <asp:Label ID="SemailLabel" runat="server" Text='<%# Eval("Semail") %>' />
                        </td>
                        <td>
                            <asp:Label ID="SmsgLabel" runat="server" Text='<%# Eval("Smsg") %>' />
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
                                        <th runat="server">Id</th>
                                        <th runat="server">Sname</th>
                                        <th runat="server">Scontact</th>
                                        <th runat="server">Semail</th>
                                        <th runat="server">Smsg</th>
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
                            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="SnameLabel" runat="server" Text='<%# Eval("Sname") %>' />
                        </td>
                        <td>
                            <asp:Label ID="ScontactLabel" runat="server" Text='<%# Eval("Scontact") %>' />
                        </td>
                        <td>
                            <asp:Label ID="SemailLabel" runat="server" Text='<%# Eval("Semail") %>' />
                        </td>
                        <td>
                            <asp:Label ID="SmsgLabel" runat="server" Text='<%# Eval("Smsg") %>' />
                        </td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>

			
	        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:jobDBConnectionString3 %>" DeleteCommand="DELETE FROM [contact] WHERE [Id] = @Id" InsertCommand="INSERT INTO [contact] ([Sname], [Scontact], [Semail], [Smsg]) VALUES (@Sname, @Scontact, @Semail, @Smsg)" SelectCommand="SELECT [Id], [Sname], [Scontact], [Semail], [Smsg] FROM [contact]" UpdateCommand="UPDATE [contact] SET [Sname] = @Sname, [Scontact] = @Scontact, [Semail] = @Semail, [Smsg] = @Smsg WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Sname" Type="String" />
                    <asp:Parameter Name="Scontact" Type="String" />
                    <asp:Parameter Name="Semail" Type="String" />
                    <asp:Parameter Name="Smsg" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Sname" Type="String" />
                    <asp:Parameter Name="Scontact" Type="String" />
                    <asp:Parameter Name="Semail" Type="String" />
                    <asp:Parameter Name="Smsg" Type="String" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>

<a href="Dashboard.aspx" class="hvr-bounce-to-bottom">Back</a>			
	</div>
 
</asp:Content>
