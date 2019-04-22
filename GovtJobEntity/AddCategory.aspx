<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddCategory.aspx.cs" Inherits="GovtJobEntity.AddCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    
  
    
 <!--Add Category -->
		<div class="login-form">
			<div class="close"> </div>
					<div class="head-info">
						<h1><span>Govt</span>.<span>Job</span>- Add New Category</h1>
						<h2>You are almost done! One more step.</h2>
					</div>
						<div class="strip">
					</div>
				<ul class="form">
					<li>
                        <asp:TextBox ID="category" placeholder="Enter Category" required="" clas="email" runat="server"></asp:TextBox>
					    <a href="#" class=" icon user"></a>
					</li>
					<div class="p-container" style="align-content:center;">

                        <asp:Button ID="btnCategory" runat="server" Text="Add" class="hvr-bounce-to-bottom" style="width:600px;height:50px;" OnClick="btnCategory_Click"/>
								
                        <div class="clear"> </div>
                        <h1 id="rslt" runat="server" style="color:white;font-size:30px;"></h1>
					</div>
				</ul>
            <br />
            <br />

            <a href="Dashboard.aspx" class="hvr-bounce-to-bottom">Back</a>
			
	</div>
 



</asp:Content>
