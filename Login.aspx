<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bodyContentPlaceHolder" Runat="Server">


    <table class="style40" 
                style="border: 1px dotted #666633; width: 99%; height: 170px" 
                __designer:mapid="294">
        <tr __designer:mapid="295">
            <td class="style3" colspan="3" __designer:mapid="296">
                <asp:Label ID="LMsg" runat="server" ForeColor="#CC0000"></asp:Label>
            </td>
        </tr>
        <tr __designer:mapid="298">
            <td class="style3" __designer:mapid="299">
                        نام كاربري :</td>
            <td class="style3" __designer:mapid="29a">
                <asp:TextBox ID="TextBox1" runat="server" Font-Names="Tahoma" Font-Size="Small" 
                            style="text-align: center; margin-left: 0px; margin-right: 0px" 
                            ValidationGroup="VG" Width="150px"></asp:TextBox>
            </td>
            <td __designer:mapid="29c" class="style3">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="TextBox1" ErrorMessage="نام كاربري خود را وارد كنيد !" 
                            ValidationGroup="VG"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr __designer:mapid="29e">
            <td class="style3" __designer:mapid="29f">
                        كلمه عبور :</td>
            <td class="style3" __designer:mapid="2a0">
                <asp:TextBox ID="TextBox2" runat="server" Font-Size="Small" 
                            style="text-align: center; margin-left: 0px; margin-right: 0px" 
                            TextMode="Password" ValidationGroup="VG" Width="150px"></asp:TextBox>
            </td>
            <td __designer:mapid="2a2" class="style3">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="TextBox2" ErrorMessage="كلمه عبور خود را وارد كنيد !" 
                            ValidationGroup="VG"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr __designer:mapid="2a4">
            <td class="style3" __designer:mapid="2a5">
                &nbsp;</td>
            <td class="style3" __designer:mapid="2a6">
                <asp:Button ID="Button1" runat="server" Font-Names="Tahoma" Font-Size="Small" 
                            onclick="Button1_Click1" Text="ورود مدیر" ValidationGroup="VG" 
                            Width="158px" />
            </td>
            <td __designer:mapid="2a8" class="style3">
                &nbsp;</td>
        </tr>
        <tr __designer:mapid="2a9">
            <td class="style35" __designer:mapid="2aa">
            </td>
            <td class="style35" __designer:mapid="2ab">
            </td>
            <td class="style35" __designer:mapid="2ac">
            </td>
        </tr>
    </table>

</asp:Content>

