<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="OnlineEducation.admin.Users" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID_USER" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        <asp:BoundField DataField="ID_USER" HeaderText="ID_USER" InsertVisible="False" ReadOnly="True" SortExpression="ID_USER" />
        <asp:BoundField DataField="USERNAME" HeaderText="USERNAME" SortExpression="USERNAME" />
        <asp:BoundField DataField="PASSWORD" HeaderText="PASSWORD" SortExpression="PASSWORD" />
        <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
        <asp:BoundField DataField="FNAME" HeaderText="FNAME" SortExpression="FNAME" />
        <asp:BoundField DataField="LNAME" HeaderText="LNAME" SortExpression="LNAME" />
    </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegistartionConnectionString %>" DeleteCommand="DELETE FROM [REGISTRATION] WHERE [ID_USER] = @ID_USER" InsertCommand="INSERT INTO [REGISTRATION] ([USERNAME], [PASSWORD], [EMAIL], [FNAME], [LNAME]) VALUES (@USERNAME, @PASSWORD, @EMAIL, @FNAME, @LNAME)" SelectCommand="SELECT * FROM [REGISTRATION]" UpdateCommand="UPDATE [REGISTRATION] SET [USERNAME] = @USERNAME, [PASSWORD] = @PASSWORD, [EMAIL] = @EMAIL, [FNAME] = @FNAME, [LNAME] = @LNAME WHERE [ID_USER] = @ID_USER">
    <DeleteParameters>
        <asp:Parameter Name="ID_USER" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="USERNAME" Type="String" />
        <asp:Parameter Name="PASSWORD" Type="String" />
        <asp:Parameter Name="EMAIL" Type="String" />
        <asp:Parameter Name="FNAME" Type="String" />
        <asp:Parameter Name="LNAME" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="USERNAME" Type="String" />
        <asp:Parameter Name="PASSWORD" Type="String" />
        <asp:Parameter Name="EMAIL" Type="String" />
        <asp:Parameter Name="FNAME" Type="String" />
        <asp:Parameter Name="LNAME" Type="String" />
        <asp:Parameter Name="ID_USER" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
