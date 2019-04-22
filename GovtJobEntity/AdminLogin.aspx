<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="GovtJobEntity.AdminLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

  
    
 <!--SIGN UP-->
		<div class="login-form">
			<div class="close"> </div>
					<div class="head-info">
						<h1><span>Govt</span>.<span>Job</span>- Sign In</h1>
						<h2>You are almost done! One more step.</h2>
					</div>
						<div class="strip">
					</div>
				<ul class="form">
					<li>
                        <asp:TextBox ID="UserName" placeholder="User name" required="" clas="email" runat="server"></asp:TextBox>
					    <a href="#" class=" icon user"></a>
					</li>
					<li>
						<asp:TextBox ID="Password" class="password" placeholder="password" required="" runat="server"></asp:TextBox>
                        <a href="#" class=" icon lock"></a>
					</li>
					<div class="p-container" style="align-content:center;">

                        <asp:Button ID="btnLogin" runat="server" Text="LOGIN" class="hvr-bounce-to-bottom" OnClick="btnLogin_Click" style="width:600px;height:50px;"/>
								
                        <div class="clear"> </div>
                        
					</div>
				</ul>
            
				<div class="social-icons">
							<div class="but-bottom">
				<h1 id="rslt" runat="server" style="color:white;font-size:30px;"> </h1>
							<a href="#" class="trouble"><p>Forgot Password ?</p></a><div class="clear"> </div></div>
							<a href="#" class="social-account"><h3>Login with your facebook or twitter account.</h3></a>
							<ul class="bottom-sc-icons">
								<li><a href="#" class="facebook"><img src="images/fb.png" />Login with facebook</a></li><br/><br/><br/>
								<li><a href="#" class="twitter"><img src="images/tw.png" />Login with twitter</a></li>
							</ul>
							<div class="clear"> </div>
				</div>
				</div>
 <!--/SIGN UP-->


</asp:Content>
