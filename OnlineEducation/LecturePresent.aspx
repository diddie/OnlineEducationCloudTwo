<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="LecturePresent.aspx.cs" Inherits="OnlineEducation.LecturePresent" ValidateRequest="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="lecture" style="display:block">
        <div class="cover" align="center" >
            <asp:Image ID="imgLecture" runat="server" Width="150" Height="150" CssClass="cover" />
        </div>
        <div class="content">
            <h1 style="text-align:center">
                <asp:Label ID="lblTitle" runat="server"></asp:Label>
            </h1>
            <hr />
            <div class="text">
            <asp:Label ID="lblDescription" runat="server" ValidateRequestMode="Enabled"></asp:Label>
                </div>
            <div class="video-container">
            <p style="text-align: center;">
                <asp:HyperLink ID="HyperLink" runat="server"></asp:HyperLink>
            </p>
                </div>
       
            <br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" Target="_blank">
                <asp:Image ID="Image1" runat="server" /></asp:HyperLink>
            <asp:HyperLink ID="HyperLink2" runat="server" Target="_blank">
                <asp:Image ID="Image2" runat="server" /></asp:HyperLink>
             <asp:HyperLink ID="HyperLink3" runat="server" Target="_blank">
                <asp:Image ID="Image3" runat="server" /></asp:HyperLink>
            <asp:HyperLink ID="HyperLink4" runat="server" Target="_blank">
                <asp:Image ID="Image4" runat="server" /></asp:HyperLink>
                         <asp:HyperLink ID="HyperLink5" runat="server" Target="_blank">
                <asp:Image ID="Image5" runat="server" /></asp:HyperLink>
            <asp:HyperLink ID="HyperLink6" runat="server" Target="_blank">
                <asp:Image ID="Image6" runat="server" /></asp:HyperLink>
            
       
        </div>
    </div>

    <br />
    <br />
    <br />
    <br />

    
           

</asp:Content>
