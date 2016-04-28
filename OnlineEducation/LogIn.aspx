<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="OnlineEducation.WebForm1" %>

<!DOCTYPE html>


<link href="StyleSheets/MainStyle.css" rel="stylesheet" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <style type="text/css">
        .auto-style1 {
            width: 113px;
        }
    </style>
</head>
<body>
             <header class="header">
		<div class="top">
			<a href="Home.aspx"><img class="logo" src="ImagesForMasterPage/logo-2.png" alt="ЕЛЕКТРОННО ОБРАЗОВАНИЕ НА МОДЕРНО И ЕВРОПЕЙСКО НИВО" /></a>
			<a class="moto" href="Home.aspx">ФОРМАЛНОТО ОБУЧЕНИЕ ЩЕ ТЕ ИЗХРАНВА <br /> САМООБУЧЕНИЕТО ЩЕ ТЕ НАПРАВИ УСПЕШЕН <br /> <span style="font-size:20px; float:right">- ДЖИМ РОН </span></a>
		</div>

		<div class="navigation">
			<div class="menuToggle">
				<a href="#" onClick="pokaji()">&#9776;</a>
			</div>

			<div class="right-nav">
				<ul>
                      <li>
                          
					<li>  <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Home.aspx">Начало</asp:HyperLink></li>
					<li> <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/LogIn.aspx">Вход</asp:HyperLink></li>
					<li><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/RegistrationDefault.aspx">Регистрация</asp:HyperLink></li>
				</ul>
			</div>
		</div>
	</header>
    <form id="form1" runat="server">
    <div>
         
             <div class="divMyCont">
                 <div class="tb-mobile">
                 <h2 class="registration">Вход</h2>


                 <ul align="center">
                     <li class="lbl-text">
                         <asp:TextBox ID="txtUserNameLog" runat="server" Width="191px" placeHolder="Потребителски име "></asp:TextBox>
                     </li>
                     <li class="lbl-text">
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtUserNameLog" ErrorMessage="Моля въведете потребителско име" Font-Bold="True" Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
                     </li>
                     <li class="lbl-text">
                         <asp:TextBox ID="txtPassLog" runat="server" Style="margin-left: 0px" TextMode="Password" Width="191px" placeHolder="Парола "></asp:TextBox>
                     </li>
                     <li class="lbl-text">
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPassLog" ErrorMessage="Моля въведете парола" Font-Bold="True" Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
                     </li>
                     <li class="lbl-text">

                         <asp:Button ID="Button1" runat="server" Text="Влез" Width="191px" CssClass="regBtn" OnClick="Button1_Click" />
                     </li>
                     <li class="lbl-text">
                         <h5><a href="RegistrationDefault.aspx">Създай акаунт</a></h5>
                     </li>
                     <li class="lbl-text">
                         <asp:Label ID="Label3" runat="server" Text="За да видите уроците първо трябва да се логнете" ForeColor="#304269"></asp:Label>
                     </li>
                     <li class="lbl-text">
                         <asp:CheckBox ID="ckBoxLog" runat="server" Text="Помнене на потребителскo име и парола" />
                     </li>

                 </ul>
                     </div>
             </div>
        

    </div>
        
        <footer id="footer">
         <div>

            <p id="contactUs" style="color:#FFF">Свържи се с нас</p>
          
                 <asp:ImageButton ID="ImageButton1" runat="server" CssClass="contactPic" ImageUrl="~/ImagesForMasterPage/contactus1.png" PostBackUrl="~/ContactUs.aspx" Width="80px" />
       
              </div>
        <div id="copyright">
		<p>Copyright &copy; Noobies <%=DateTime.Now.Year%></p>
            </div>
	</footer>
    </form>
</body>
</html>
