<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
.Continue
{
	text-decoration:none;
	background-color:Yellow;
	display:inline-block;
	text-align:center;
	-moz-border-radius:5px;
	padding:5px;
	-webkit-border-radius:5px;
	border-radius:5px;
}
.Continue:hover
{
    color:Red;
    background-color:Black;
}
.ArticleTitle
{
	font-family:Arial;
	font-size:18px;
	font-weight:bold;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bodyContentPlaceHolder" Runat="Server">
    <div align="center">
    <asp:Label ID="Label1" runat="server" Text="لیست کلمات تایید شده"></asp:Label>
        ][<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:SocialNetWorkConnectionString %>" 
        
        
            SelectCommand="SELECT word_id, writer, date, po, image, username, text FROM TabWord WHERE (po &gt; 20)">
    </asp:SqlDataSource>
</div>
</asp:Content>

