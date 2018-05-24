<%@ Page Language="C#" MasterPageFile="~/user/useMasterPage.master" AutoEventWireup="true" CodeFile="showword.aspx.cs" Inherits="showNews" Title="خبر" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

.ArticleTitle
{
	font-family:Arial;
	font-size:18px;
	font-weight:bold;
}
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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bodyContentPlaceHolder" Runat="Server">

     <p>
        <br />
        <asp:TextBox ID="TextBox4" runat="server" Visible="False"></asp:TextBox>
        <asp:DataList ID="DataList7" runat="server" DataKeyField="word_id" 
            DataSourceID="SqlDataSource1" Width="100%">
            <ItemTemplate>
<div style="text-align:right; border:0px solid blue;font-family:Tahoma;font-size:9pt;width:100%;">
       <div style="border-bottom:1px solid silver;padding:10px 0px 10px 0px;width:100%; background-color: #66FFFF;">

         <b>عنوان&nbsp; : </b>
            <asp:Label ID="Label2" runat="server" Text='<%# Eval("writer") %>' 
               Font-Bold="True"></asp:Label></div>
         <br/>
             <b>کد تصویر : </b>
            <asp:Label ID="Label1" runat="server" Text='<%# Eval("word_id") %>'></asp:Label>
              &nbsp; <b>-&nbsp;</b>&nbsp; <b>&nbsp;&nbsp;- تاريخ ارسال&nbsp;&nbsp;&nbsp; : </b>
        <asp:Label ID="Label4" runat="server" Text='<%# Eval("date") %>'></asp:Label>
             &nbsp; - <b>&nbsp;&nbsp; <b>نویسنده&nbsp; : </b>
       <asp:Label ID="Label5" runat="server" Text='<%# Eval("writer") %>'></asp:Label>
       &nbsp; - &nbsp;&nbsp; </b>
            <br /><br />
            <br /><div align="center">
            
            <image src='../<%# Eval("image") %>' width="150px" height="150px" style="margin-left: 5px;margin-bottom: 10px;" /></div>

             <div dir="rtl" style="text-align:justify;padding:0px 10px 10px 10px;">
             <b>&nbsp;</b><br />
       </div>
            </div>
            
            </ItemTemplate>
        </asp:DataList>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
             ConnectionString="<%$ ConnectionStrings:SocialNetWorkConnectionString %>" 
             SelectCommand="SELECT word_id, writer, date, po, image, text FROM TabWord WHERE (word_id = @Param1)">
             <SelectParameters>
                 <asp:QueryStringParameter Name="Param1" QueryStringField="WID" />
             </SelectParameters>
         </asp:SqlDataSource>
    </p>
    <p>
        <b __designer:mapid="2a8">&nbsp;کلمه پیشنهادی: </b>
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
     </p>
<p>
                 <asp:Button ID="Button2" runat="server" 
                     onclick="Button2_Click" Text="ارسال کلمه پیشنهادی" />
                 </p>
<p>
        &nbsp;</p>
                 <p>

                     &nbsp;</p>
&nbsp;<p>
         &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">خانه</asp:HyperLink>
    </p>
</asp:Content>

