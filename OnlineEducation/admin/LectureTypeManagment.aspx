<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="LectureTypeManagment.aspx.cs" Inherits="OnlineEducation.admin.LectureTypeManagment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <table>
            <tr>
                <td> Име : </td>
                <td>
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnSubmit" runat="server" Text="Добави" OnClick="btnSubmit_Click" CssClass="regBtn" /></td>
                <td>
                    <asp:Label ID="lblResult" runat="server"></asp:Label></td>
            </tr>
        </table>
</asp:Content>
