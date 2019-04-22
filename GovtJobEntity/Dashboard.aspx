<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="GovtJobEntity.Dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    
    
 <!--SIGN UP-->
		<div class="login-form">
			<div class="close"> </div>
					<div class="head-info">
						<h1><span>Govt</span>.<span>Job</span>- DashBoard</h1>
						<h2>You are almost done! One more step.</h2>
					</div>
						<div class="strip">
					</div>
				<ul class="form">
					<li>
                       <a href="AddCategory.aspx" class="hvr-bounce-to-bottom">Add Category</a>
                       <a href="EditCategory.aspx" class="hvr-bounce-to-bottom">Edit Category</a>
                        <a href="PostJob.aspx" class="hvr-bounce-to-bottom">Post New Job</a>
                        <a href="EditJob.aspx" class="hvr-bounce-to-bottom">Edit Job</a>
                        <a href="Editqueries.aspx" class="hvr-bounce-to-bottom">Queries</a>
					</li>



				</ul>
		</div>
 <!--/SIGN UP-->


</asp:Content>
