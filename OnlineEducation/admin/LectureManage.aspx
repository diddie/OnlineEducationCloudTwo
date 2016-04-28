<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="LectureManage.aspx.cs" Inherits="OnlineEducation.admin.LectureManage" ValidateRequest="false"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div>
    <table>
        <tr>
            <td> Заглавие :  <asp:TextBox ID="txtName" runat="server"></asp:TextBox>  </td>
            <td>Снимка на типа : <asp:DropDownList ID="ddlPicture" runat="server"> </asp:DropDownList>   </td>
            <td>Тип  : <asp:DropDownList ID="ddlLectureType" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Type_ID">  </asp:DropDownList>   </td> 
            <td> Видео : <asp:TextBox ID="txtVideo" runat="server"></asp:TextBox> </td> 
        </tr>
    </table>
          <table>
              <tr>
                  <td>
          Описание : 
     <asp:TextBox ID="txtDescription" runat="server" Height="131px" TextMode="MultiLine" Width="693px" OnTextChanged="txtDescription_TextChanged"></asp:TextBox>
       
                      </td>
                  </tr>
              </table>
     
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineStudyConnectionString %>" SelectCommand="SELECT * FROM [LectureType] ORDER BY [Name]"></asp:SqlDataSource>
        <br />
     
        
       Снимки за урок&nbsp;&nbsp;:<br />

          <br />
          <ul >
              <li>
          Снимка 1 :
            <asp:DropDownList ID="ddlPic1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlPic1_SelectedIndexChanged"   ></asp:DropDownList>
                    
                <asp:Image ID="img1" runat="server" Width="200" Height="200" OnDataBinding="ddlPic1_SelectedIndexChanged"  />
              </li>
          <li>
                      Снимка 2 :
                    <asp:DropDownList ID="ddlPic2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlPic2_SelectedIndexChanged"></asp:DropDownList>
                      <asp:Image ID="img2" runat="server" Width="200" Height="200" OnDataBinding="ddlPic2_SelectedIndexChanged" />
             </li>
              <li>
                   Снимка 3 :
                    <asp:DropDownList ID="ddlPic3" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlPic3_SelectedIndexChanged"></asp:DropDownList>
                   <asp:Image ID="img3" runat="server" Width="200" Height="200" OnDataBinding="ddlPic3_SelectedIndexChanged" />
       </li>
              
          
              <li>
                   Снимка 4 :
                     <asp:DropDownList ID="ddlPic4" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlPic4_SelectedIndexChanged"></asp:DropDownList>
                     <asp:Image ID="img4" runat="server" Width="200" Height="200" OnDataBinding="ddlPic4_SelectedIndexChanged" />
             </li>
              <li>
                    Снимка 5 :
                    <asp:DropDownList ID="ddlPic5" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlPic5_SelectedIndexChanged"></asp:DropDownList>
                     <asp:Image ID="img5" runat="server" Width="200" Height="200" OnDataBinding="ddlPic5_SelectedIndexChanged" />
              </li>
              <li>Снимка 6 :
                     <asp:DropDownList ID="ddlPic6" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlPic6_SelectedIndexChanged"></asp:DropDownList>
                    <asp:Image ID="img6" runat="server" Width="200" Height="200" OnDataBinding="ddlPic6_SelectedIndexChanged" />
         </li>
                    
              </ul>
                <div style="text-align:center;">    
                        <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Добави" Width="142px" CssClass="regBtn"  />
     <br />
                        <asp:Label ID="lblResult" runat="server" Font-Bold="True" Font-Size="20pt" ForeColor="Red"></asp:Label>
                 </div>   

    
    </div>
</asp:Content>
