<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="OnlineEducation.ContactUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="JavaScript/JavaScriptForMaster.js"></script>
    <script src="jquery/jquery-2.1.4.min.js"></script>
    <link href="StyleSheets/MainStyle.css" rel="stylesheet" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <style type="text/css">
        .auto-style1 {
            width: 154px;
        }

        .tb-mobile {
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <header class="header">
            <div class="top">
                <a href="#">
                    <img class="logo" src="ImagesForMasterPage/logo-2.png" alt="ЕЛЕКТРОННО ОБРАЗОВАНИЕ НА МОДЕРНО И ЕВРОПЕЙСКО НИВО" /></a>
                <a class="moto" href="#">ФОРМАЛНОТО ОБУЧЕНИЕ ЩЕ ТЕ ИЗХРАНВА
                    <br />
                    САМООБУЧЕНИЕТО ЩЕ ТЕ НАПРАВИ УСПЕШЕН
                    <br />
                    <span style="font-size: 20px; float: right">- ДЖИМ РОН </span></a>
            </div>

            <div class="navigation">
                <div class="menuToggle">
                    <a href="#" onclick="pokaji()">&#9776;</a>
                </div>

                <div class="right-nav">
                    <ul>

                        <li>
                            <asp:HyperLink ID="lblWelcome" runat="server" NavigateUrl="~/UserPanel.aspx"></asp:HyperLink>
                        </li>
                        <li>
                            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Home.aspx">Начало</asp:HyperLink></li>
                        <li>
                            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/LogIn.aspx">Вход</asp:HyperLink></li>
                        <li>
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/RegistrationDefault.aspx">Регистрация</asp:HyperLink></li>
                        <li>
                            <asp:Button ID="btnLogOut" runat="server" Text="Изход" OnClick="btnLogOut_Click" CssClass="btlogOut" /></li>
                    </ul>
                </div>
            </div>
        </header>
        <nav id="pole" >
            <div class="nav-mobile">
                <div class="dropdown">
                    <a class="dropbtn" href="UserPanel.aspx">Потребителска информация</a>
                </div>
                <div class="dropdown">
                    <a class="dropbtn" href="Home.aspx">Начало</a>
                </div>
                <br />
                <div class="dropdown">
                    <a class="dropbtn" href="LogIn.aspx">Вход</a>
                </div>
                <br />
                <div class="dropdown">
                    <a class="dropbtn" href="RegistrationDefault.aspx">Регистрация</a>
                </div>
                <br />
            </div>
            <div class="dropdown">

                <a href="#!" class="dropbtn">Информационни технологии</a>
                <div class="dropdown-content">
                    <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Pages/MsWord.aspx"><h4>MS Word</h4></asp:HyperLink>
                    <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/Pages/MsExcel.aspx"><h4>MS Excel</h4></asp:HyperLink>
                    <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/Pages/MsAccess.aspx"><h4>MS Access</h4></asp:HyperLink>
                    <asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="~/Pages/MsPowerPoint.aspx"><h4>MS Power Point</h4></asp:HyperLink>
                </div>
            </div>
            <br />
            <div class="dropdown">
                <a href="#!" class="dropbtn">Графичен дизайн
                </a>
                <div class="dropdown-content">
                    <asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="~/Pages/AdobePhotoshop.aspx"><h4>Adobe Photoshop</h4></asp:HyperLink>
                    <asp:HyperLink ID="HyperLink11" runat="server" NavigateUrl="~/Pages/AdobeIllustrator.aspx"><h4>Adobe Illustrator</h4></asp:HyperLink>
                    <asp:HyperLink ID="HyperLink12" runat="server" NavigateUrl="~/Pages/AdobeInDesign.aspx"><h4>Adobe InDesign</h4></asp:HyperLink>
                    <asp:HyperLink ID="HyperLink13" runat="server" NavigateUrl="~/Pages/CorelDraw.aspx"><h4>CorelDraw</h4></asp:HyperLink>
                    <asp:HyperLink ID="HyperLink14" runat="server" NavigateUrl="~/Pages/QuarkXpress.aspx"><h4>QuarkXpress</h4></asp:HyperLink>
                </div>
            </div>
            <br />

            <div class="dropdown">
                <a href="#!" class="dropbtn">Уеб програмиране
                </a>
                <div class="dropdown-content">
                    <asp:HyperLink ID="HyperLink15" runat="server" NavigateUrl="~/Pages/Html.aspx">	<h4>HTML</h4></asp:HyperLink>
                    <asp:HyperLink ID="HyperLink16" runat="server" NavigateUrl="~/Pages/Css.aspx"><h4>CSS</h4></asp:HyperLink>
                    <asp:HyperLink ID="HyperLink17" runat="server" NavigateUrl="~/Pages/JavaScript.aspx">	<h4>JavaScript</h4></asp:HyperLink>
                </div>
            </div>
            <br />

            <div class="dropdown">
                <a href="#!" class="dropbtn">SQL
                </a>
                <div class="dropdown-content">
                    <asp:HyperLink ID="HyperLink18" runat="server" NavigateUrl="~/Pages/MsSql.aspx"><h4>MSSQL</h4></asp:HyperLink>
                </div>
            </div>
            <br />

            <div class="dropdown">
                <a href="#!" class="dropbtn">C#
                </a>
                <div class="dropdown-content">
                    <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/pages/CSharp.aspx"><h4>C# Console Application </h4></asp:HyperLink>
                    <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Pages/CSharpWebForm.aspx"><h4>C# Web Forms</h4></asp:HyperLink>
                    <asp:HyperLink ID="HyperLink19" runat="server" NavigateUrl="~/Pages/CSharpWinForm.aspx">	<h4>C# Windows Forms</h4></asp:HyperLink>
                </div>
            </div>
            <br />

            <div class="dropdown">
                <a href="#!" class="dropbtn">C++
                </a>
                <div class="dropdown-content">
                    <asp:HyperLink ID="HyperLink20" runat="server" NavigateUrl="~/Pages/CPlusPlus.aspx"><h4>C++ Console Application</h4></asp:HyperLink>
                </div>
            </div>
            <br />

            <div class="dropdown">
                <a href="#!" class="dropbtn">Java
                </a>
                <div class="dropdown-content">
                    <asp:HyperLink ID="HyperLink21" runat="server" NavigateUrl="~/Pages/Java.aspx"><h4>Java</h4></asp:HyperLink>
                    <asp:HyperLink ID="HyperLink22" runat="server" NavigateUrl="~/Pages/JavaSwing.aspx"><h4>Java Swing</h4></asp:HyperLink>
                </div>
            </div>
        </nav>

        <div>
        </div>
           
     
        <div>
            <div class="regContainer">
            <h2 class="registration">Свържи се с нас :)</h2>
            
                
                <table align="center" class="regTable">

                    <tr>
                         <td>&nbsp</td>
                        <td>
                            <asp:TextBox ID="txtNameCont" runat="server" Width="254px" OnTextChanged="txtNameCont_TextChanged" placeHolder="Потребителско име "></asp:TextBox>
                        </td>
                     
                    </tr>
                    <tr> <td>&nbsp</td>
                        <td>
                            <asp:TextBox ID="txtEmailCont" runat="server" Width="255px"></asp:TextBox>
                        </td>
                       
                    </tr>
                    <tr>
                         <td>
                           
                        </td>
                        <td>
                            <asp:TextBox ID="txtSubjCont" runat="server"  placeHolder="Тема:"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvSubj" runat="server" ErrorMessage="* Required" ControlToValidate="txtSubjCont" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>   
                             </td>
                       
                    </tr>
                    <tr>
                         <td>&nbsp</td>
                        <td>
                            <asp:TextBox ID="txtMessageCont" runat="server" Height="173px" TextMode="MultiLine" Width="300px"  placeHolder="Съобщение:"></asp:TextBox>
                        </td>
                      
                    </tr>
                    <tr>
                        
                        <td>
                            <asp:Label ID="lblSend" runat="server" ForeColor="Red"></asp:Label>
                        </td>
                         <td>
                            <asp:Button ID="btnSend" runat="server" Text="Изпрати" CssClass="regBtn" Width="114px" OnClick="btnSend_Click" />
                        </td>
                       
                    </tr>

                </table>
                    </div>
            </div>
        <footer id="footer">
            <div id="copyright">
                <p>Copyright &copy; Noobies <%=DateTime.Now.Year%></p>
            </div>
        </footer>



    </form>
</body>
</html>
