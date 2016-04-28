<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationDefault.aspx.cs" Inherits="OnlineEducation.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <script src="jquery/jquery-1.12.2.js"></script>
 
 
    <title></title>
    <link href="StyleSheets/MainStyle.css" rel="stylesheet" />

     <style type="text/css">
         .auto-style1 {
             width: 328px;
         }
     </style>

</head>
<body>
    
             <header class="header">
		<div class="top">
			<a href="#"><img class="logo" src="ImagesForMasterPage/logo-2.png" alt="ЕЛЕКТРОННО ОБРАЗОВАНИЕ НА МОДЕРНО И ЕВРОПЕЙСКО НИВО" /></a>
				<a class="moto" href="Home.aspx">ФОРМАЛНОТО ОБУЧЕНИЕ ЩЕ ТЕ ИЗХРАНВА <br /> САМООБУЧЕНИЕТО ЩЕ ТЕ НАПРАВИ УСПЕШЕН <br /> <span style="font-size:20px; float:right">- ДЖИМ РОН </span></a>
		</div>

		<div class="navigation">
			<div class="menuToggle">
				<a href="#" onClick="pokaji()">&#9776;</a>
			</div>

			<div class="right-nav">
				<ul>
                     
                          
					<li>  <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Home.aspx">Начало</asp:HyperLink></li>
					<li> <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/LogIn.aspx">Вход</asp:HyperLink></li>
					<li><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/RegistrationDefault.aspx">Регистрация</asp:HyperLink></li>
				</ul>
			</div>
		</div>
	</header>
       
    <form id="form1" runat="server">
   
        <div>
            <div class="regContainer">
            <h2 class="registration">Регистрация</h2>
            
                
                <table align="center" class="regTable" >
                     
                    <tr>
                        
                        <td class="auto-style1"> &nbsp;</td>
                        <td>
                            <asp:TextBox ID="txtUserReg" runat="server" Width="181px" MaxLength="50" placeHolder="Потребителско име:"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFNameReg" ErrorMessage="Потребителското име е задължително!" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                            <div id="divOutPut"></div>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1" >&nbsp;</td>
                        <td>
                            <asp:TextBox ID="txtPassReg" runat="server" Width="181px" MaxLength="10" TextMode="Password" placeHolder="Парола: "></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassReg" ErrorMessage="Паролата е задължителна!" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1"> </td>
                        <td>
                            <asp:TextBox ID="txtEmailReg" runat="server" Width="181px" MaxLength="1000" TextMode="Email" placeHolder="E-mail: "></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmailReg" ErrorMessage="E-mail е задължителен!" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                            <br />
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmailReg" ErrorMessage="Въведете съществуващ e-mail!" Font-Bold="True" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1"></td>
                        <td>
                            <asp:TextBox ID="txtFNameReg" runat="server" Width="181px" MaxLength="50" placeHolder="Име:  "></asp:TextBox>
                        </td>
                        <td></td>
                    </tr>
                    <tr>
                        <td class="auto-style1"></td>
                        <td>
                            <asp:TextBox ID="txtLNameReg" runat="server" Width="181px" MaxLength="50" placeHolder="Фамилия:"></asp:TextBox>
                        </td>
                        <td></td>

                    </tr>
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td>
                            <asp:Button ID="btnCreate" runat="server" Font-Bold="True" Font-Size="12pt" Text="Създай" Width="181px" OnClick="btnCreate_Click" CssClass="regBtn" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                </div>
            </div>

        <p style="text-align:center">
            <asp:Label ID="lblUser" runat="server" Text=" " Font-Size="36pt"></asp:Label>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegistartionConnectionString %>" SelectCommand="SELECT * FROM [REGISTRATION]"></asp:SqlDataSource>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
        <p style="text-align: center">
            <asp:Label ID="lblSucces" runat="server" Font-Size="36pt" ForeColor="Lime" Text=" "></asp:Label>
        </p>
        <p style="text-align: center">
            <asp:Label ID="lblExist" runat="server"></asp:Label>
        </p>
      <p style="text-align:center">  <asp:HyperLink ID="hlLogIn" runat="server" Font-Size="20pt" NavigateUrl="~/LogIn.aspx">Вход</asp:HyperLink></p>
  
    <footer id="footer">
         <div>
            <p id="contactUs"style="color:#FFF">Свържи се с нас</p>
          
                 <asp:ImageButton ID="ImageButton1" runat="server" CssClass="contactPic" ImageUrl="~/ImagesForMasterPage/contactus1.png" PostBackUrl="~/ContactUs.aspx" Width="80px" /></asp:HyperLink>  
        </div>
        <div id="copyright">
		<p>Copyright &copy; Noobies <%=DateTime.Now.Year%></p>
            </div>
	</footer>
    </form>
</body>
</html>
