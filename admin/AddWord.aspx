<%@ Page Language="C#"  validateRequest="False" MasterPageFile="~/admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddWord.aspx.cs" Inherits="AdminNews_AddNews" Title="افزودن خبر جدید" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bodyContentPlaceHolder" Runat="Server">
    
 
    <p align="right" dir="rtl">
    
                 <table class="style1" lang="fa" title="ارسال خبر" width="95%">
                     <tr>
                         <td>
                             &nbsp;</td>
                         <td>
                             &nbsp;</td>
                     </tr>
                     <tr>
                         <td>
                             عکس</td>
                         <td>
                             <asp:FileUpload ID="PhotoUpload" runat="server" Width="234px" />
                         </td>
                     </tr>
                     <tr>
                         <td>
                             <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                         </td>
                         <td>
                             &nbsp;</td>
                         
                     </tr>
                     <tr>
                         <td>
                             دسته بندی خبر</td>
                         <td>
                             <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                                 OldValuesParameterFormatString="original_{0}" SelectMethod="GetAllNewsCat" 
                                 TypeName="DataSet_newsTableAdapters.tblNewsCatTableAdapter">
                             </asp:ObjectDataSource>
                         </td>
                     </tr>
                     <tr>
                         <td>
                             <asp:Button ID="btnSubmit" runat="server" Text="ارسال" 
                                 onclick="btnSubmit_Click" />
                         </td>
                         <td>
                             <asp:Button ID="btnCancel" runat="server" Text="انصراف" />
                         </td>
                     </tr>
                     <tr>
                         <td>
                             &nbsp;</td>
                         <td>
                             <asp:Label ID="lblResult" runat="server" Text="متن شما با موفقیت ارسال شد" 
                                 Visible="False"></asp:Label>
                             <asp:Label ID="lblError" runat="server" ForeColor="#FF3300" Visible="False"></asp:Label>
                         </td>
                     </tr>
                     <tr>
                         <td>
                             &nbsp;</td>
                         <td>
                             &nbsp;</td>
                     </tr>
                 </table>
                 <br />
             </p>
         


</asp:Content>

 
 