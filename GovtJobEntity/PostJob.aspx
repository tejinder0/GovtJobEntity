<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PostJob.aspx.cs" Inherits="GovtJobEntity.PostJob" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <!--Add Job-->
		<div class="login-form" style="border:0px solid red;height:auto;padding:20px;">
			<div class="close"> </div>
					<div class="head-info">
						<h1><span>Govt</span>.<span>Job</span>- Post Job</h1>
						<h2>You are almost done! One more step.</h2>
					</div>
						<div class="strip">
					</div>
				<ul class="form">
					
                    <li>
                        <asp:TextBox ID="category" placeholder="Enter Category" required="" clas="email" runat="server"></asp:TextBox>
					    <a href="#" class=" icon user"></a>
					</li>
                    <li>
                        <asp:TextBox ID="Department" placeholder="Enter Department" required="" clas="email" runat="server"></asp:TextBox>
					    <a href="#" class=" icon user"></a>
					</li>

                    <li>
                        <asp:TextBox ID="Designtion" placeholder="Enter Designation" required="" clas="email" runat="server"></asp:TextBox>
					    <a href="#" class=" icon user"></a>
					</li>
                    <li>
                        <asp:TextBox ID="Post" placeholder="Enter No of Posts" required="" clas="email" runat="server"></asp:TextBox>
					    <a href="#" class=" icon user"></a>
					</li>
                  
                    <li>
                        <asp:TextBox ID="lastDate" placeholder="Enter Last Date(MM/DD/YYYY)" required="" clas="email" runat="server"></asp:TextBox>
					    <a href="#" class=" icon user"></a>
					</li>

                    <li>
                        <asp:TextBox ID="salary" placeholder="Enter Salary" required="" clas="email" runat="server"></asp:TextBox>
					    <a href="#" class=" icon user"></a>
					</li>

					<div class="p-container" style="align-content:center;">

                        <asp:Button ID="btnJob" runat="server" Text="Post Job" class="hvr-bounce-to-bottom" style="width:600px;height:50px;" OnClick="btnJob_Click" />
								
                        <div class="clear"> </div>
                        <h1 id="rslt" runat="server" style="color:white;font-size:30px;"></h1>
					</div>
				</ul>
            <br />
            <br />
            <br />
       <a href="Dashboard.aspx" class="hvr-bounce-to-bottom">Back</a>     
			
	</div>
 
</asp:Content>
