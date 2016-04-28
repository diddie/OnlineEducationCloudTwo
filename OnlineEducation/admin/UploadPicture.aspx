<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="UploadPicture.aspx.cs" Inherits="OnlineEducation.admin.web" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:FileUpload ID="FileUpload1" runat="server" />
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Качи" CssClass="regBtn" />
    <br />
    <asp:Label ID="lblName" runat="server" Font-Size="20px"></asp:Label>
<br />
<asp:Label ID="lblSize" runat="server" Font-Size="20px" ForeColor="Red"></asp:Label>
</asp:Content>
