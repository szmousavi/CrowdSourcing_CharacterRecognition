<%@ Page Language="C#" MasterPageFile="~/admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="User.aspx.cs" Inherits="admin_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bodyContentPlaceHolder" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Username" 
        DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="UserID" HeaderText="UserID" InsertVisible="False" 
                ReadOnly="True" SortExpression="UserID" />
            <asp:BoundField DataField="Username" HeaderText="Username" ReadOnly="True" 
                SortExpression="Username" />
            <asp:BoundField DataField="Password" HeaderText="Password" 
                SortExpression="Password" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="CreateDate" HeaderText="CreateDate" 
                SortExpression="CreateDate" />
            <asp:BoundField DataField="LastLoginDate" HeaderText="LastLoginDate" 
                SortExpression="LastLoginDate" />
            <asp:CheckBoxField DataField="IsActivated" HeaderText="IsActivated" 
                SortExpression="IsActivated" />
            <asp:BoundField DataField="FullName" HeaderText="FullName" 
                SortExpression="FullName" />
            <asp:BoundField DataField="level" HeaderText="level" SortExpression="level" />
            <asp:BoundField DataField="po" HeaderText="po" SortExpression="po" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:SocialNetWorkConnectionString %>" 
        SelectCommand="SELECT [UserID], [Username], [Password], [Email], [CreateDate], [LastLoginDate], [IsActivated], [FullName], [level], [po] FROM [Users]">
    </asp:SqlDataSource>
</asp:Content>

