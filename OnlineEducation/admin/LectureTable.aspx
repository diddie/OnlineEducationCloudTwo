<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="LectureTable.aspx.cs" Inherits="OnlineEducation.admin.LectureTabke"  ValidateRequest="false"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
    
  
    <asp:SqlDataSource ID="sdsPic" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineStudyConnectionString %>" SelectCommand="SELECT [Lecture_ID], [Image_One], [Image_Two], [Image_Three], [Image_Four], [Image_Five], [Image_Six] FROM [Lecture] ORDER BY [Lecture_ID]"></asp:SqlDataSource>
    <asp:GridView ID="gdLecture" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Lecture_ID" DataSourceID="SqlDataSource1" OnRowEditing="gdLecture_RowEditing">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Lecture_ID" HeaderText="Lecture_ID" InsertVisible="False" ReadOnly="True" SortExpression="Lecture_ID" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Type_ID" HeaderText="Type_ID" SortExpression="Type_ID" />
            <asp:BoundField DataField="Image" HeaderText="Image" SortExpression="Image" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
        </Columns>
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineStudyConnectionString %>" DeleteCommand="DELETE FROM [Lecture] WHERE [Lecture_ID] = @Lecture_ID" InsertCommand="INSERT INTO [Lecture] ([Name], [Type_ID], [Image], [Description]) VALUES (@Name, @Type_ID, @Image, @Description)" SelectCommand="SELECT [Lecture_ID], [Name], [Type_ID], [Image], [Description] FROM [Lecture]" UpdateCommand="UPDATE [Lecture] SET [Name] = @Name, [Type_ID] = @Type_ID, [Image] = @Image, [Description] = @Description WHERE [Lecture_ID] = @Lecture_ID">
        <DeleteParameters>
            <asp:Parameter Name="Lecture_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Type_ID" Type="Int32" />
            <asp:Parameter Name="Image" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Type_ID" Type="Int32" />
            <asp:Parameter Name="Image" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Lecture_ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Lecture_ID" DataSourceID="sdsPic" AllowPaging="True" CellPadding="3" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">
        <Columns>
            <asp:BoundField DataField="Lecture_ID" HeaderText="Lecture_ID" InsertVisible="False" ReadOnly="True" SortExpression="Lecture_ID" />
            <asp:ImageField DataImageUrlField="Image_One" DataImageUrlFormatString="~/ImagesForLectures/{0}" HeaderText="Picture One">
                <ItemStyle Width="20px" />
            </asp:ImageField>
            <asp:ImageField DataImageUrlField="Image_Two" DataImageUrlFormatString="~/ImagesForLectures/{0}" HeaderText="Picture Two ">
            </asp:ImageField>
            <asp:ImageField DataImageUrlField="Image_Three" DataImageUrlFormatString="~/ImagesForLectures/{0}" HeaderText="Picture Three">
            </asp:ImageField>
            <asp:ImageField DataImageUrlField="Image_Four" DataImageUrlFormatString="~/ImagesForLectures/{0}" HeaderText="Picture Four">
            </asp:ImageField>
            <asp:ImageField DataImageUrlField="Image_Five" DataImageUrlFormatString="~/ImagesForLectures/{0}" HeaderText="Picture Five">
            </asp:ImageField>
            <asp:ImageField DataImageUrlField="Image_Six" DataImageUrlFormatString="~/ImagesForLectures/{0}" HeaderText="Picture Six">
            </asp:ImageField>
        </Columns>
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
<asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Lecture_ID" DataSourceID="sdsVideo" CellPadding="3" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">
    <Columns>
        <asp:BoundField DataField="Lecture_ID" HeaderText="Lecture_ID" InsertVisible="False" ReadOnly="True" SortExpression="Lecture_ID" />
        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
        <asp:BoundField DataField="Video" HeaderText="Video" SortExpression="Video" />
    </Columns>
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
<asp:SqlDataSource ID="sdsVideo" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineStudyConnectionString %>" SelectCommand="SELECT [Lecture_ID], [Name], [Video] FROM [Lecture] ORDER BY [Lecture_ID]"></asp:SqlDataSource>
</asp:Content>
