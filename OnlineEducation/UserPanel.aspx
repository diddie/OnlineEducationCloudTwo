<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="UserPanel.aspx.cs" Inherits="OnlineEducation.UserPanel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
    <asp:Label ID="lblUserName" runat="server"></asp:Label>
    <br />
   <asp:Label ID="lblFname" runat="server"></asp:Label>
    <br />  
      <asp:Label ID="lblLName" runat="server"></asp:Label>
    <br />
    <asp:Label ID="lblEmail" runat="server"></asp:Label>
    <br />
    <asp:Label ID="lblPass" runat="server" Text=""></asp:Label>
</asp:Content>
