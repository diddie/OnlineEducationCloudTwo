<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="LectureTypeTable.aspx.cs" Inherits="OnlineEducation.admin.LectureTypeTable" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Type_ID" DataSourceID="sdsType" OnRowEditing="GridView1_RowEditing" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
    <Columns >
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True"  />
        <asp:BoundField DataField="Type_ID" HeaderText="Type_ID" InsertVisible="False" ReadOnly="True" SortExpression="Type_ID" />
        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
    </Columns>
        <EditRowStyle BorderColor="Black" />
    <FooterStyle BackColor="White" ForeColor="#000066" />
    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
    <RowStyle ForeColor="#000066" />
    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#007DBB" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#00547E" />
</asp:GridView>
    <asp:SqlDataSource ID="sdsType" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineStudyConnectionString %>" DeleteCommand="DELETE FROM [LectureType] WHERE [Type_ID] = @Type_ID" InsertCommand="INSERT INTO [LectureType] ([Name]) VALUES (@Name)" SelectCommand="SELECT * FROM [LectureType] ORDER BY [Type_ID]" UpdateCommand="UPDATE [LectureType] SET [Name] = @Name WHERE [Type_ID] = @Type_ID">
        <DeleteParameters>
            <asp:Parameter Name="Type_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Type_ID" Type="Int32" />
        </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
