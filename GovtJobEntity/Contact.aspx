<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="GovtJobEntity.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   


      <!--Add Job-->
		<div class="login-form" style="border:0px solid red;height:auto;padding:20px;">
			<div class="close"> </div>
					<div class="head-info">
						<h1><span>Govt</span>.<span>Job</span>-Contact US</h1>
						<h2>You are almost done! One more step.</h2>
					</div>
						<div class="strip">
					</div>
				<ul class="form">
					
                    <li>
                        <asp:TextBox ID="Name" placeholder="Enter Name" required="" clas="email" runat="server"></asp:TextBox>
					    <a href="#" class=" icon user"></a>
					</li>
                    <li>
                        <asp:TextBox ID="ContactNo" placeholder="Enter Contact No" required="" clas="email" runat="server"></asp:TextBox>
					    <a href="#" class=" icon user"></a>
					</li>

                    <li>
                        <asp:TextBox ID="EmailID" placeholder="Enter Email-ID" required="" clas="email" runat="server"></asp:TextBox>
					    <a href="#" class=" icon user"></a>
					</li>
                    <li>
                        <asp:TextBox ID="Msg" placeholder="Enter Message" required="" clas="email" runat="server"></asp:TextBox>
					    <a href="#" class=" icon user"></a>
					</li>
                  
                  
                

					<div class="p-container" style="align-content:center;">

                        <asp:Button ID="btnMessage" runat="server" Text="Send Message" class="hvr-bounce-to-bottom" style="width:600px;height:50px;" OnClick="btnMessage_Click"  />
								
                        <div class="clear"> </div>
                        <h1 id="rslt" runat="server" style="color:white;font-size:30px;"></h1>
					</div>
				</ul>
            
			
	</div>
</asp:Content>
