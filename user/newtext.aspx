<%@ Page Language="C#" MasterPageFile="~/user/useMasterPage.master" AutoEventWireup="true" CodeFile="newtext.aspx.cs" Inherits="user_newtext" Title="Untitled Page" %>

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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:SocialNetWorkConnectionString %>" 
            
            
            
            
            SelectCommand="SELECT word_id, image, text, writer, date, username, po FROM TabWord WHERE (text = N'0') OR (po &lt; 0) ORDER BY word_id DESC">
        </asp:SqlDataSource>
    <asp:DataList ID="DataList3" runat="server" BackColor="White" 
        BorderColor="#003300" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
        CssClass="DataList" DataKeyField="word_id" DataSourceID="SqlDataSource1" 
        Font-Bold="False" Font-Italic="False" Font-Names="Tahoma" Font-Overline="False" 
        Font-Strikeout="False" Font-Underline="False" ForeColor="#003300" 
        GridLines="Horizontal" HorizontalAlign="Right" Width="100%">
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <EditItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" 
            Font-Strikeout="False" Font-Underline="False" ForeColor="#003300" />
        <AlternatingItemStyle BackColor="#F7F7F7" Font-Bold="False" Font-Italic="False" 
            Font-Overline="False" Font-Strikeout="False" Font-Underline="False" 
            ForeColor="#003300" />
        <ItemStyle BackColor="#E7E7FF" Font-Bold="False" Font-Italic="False" 
            Font-Overline="False" Font-Strikeout="False" Font-Underline="False" 
            ForeColor="#003300" />
        <SeparatorStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" 
            Font-Strikeout="False" Font-Underline="False" ForeColor="#003300" 
            HorizontalAlign="Right" VerticalAlign="Middle" />
        <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" Font-Italic="False" 
            Font-Overline="False" Font-Strikeout="False" Font-Underline="False" 
            ForeColor="#6666FF" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <ItemTemplate>
            <div style="border-bottom:1px solid silver;padding:10px 0px 10px 0px; background-color:#EFEEE3; width:100%;height:42px; color:#FFFF99;
font-family:Tahoma;font-size:xx-small;">
                <a href='<%# Eval("word_id","Showword.aspx?WID={0}") %>'><%# Eval("writer")%><asp:Label 
                    ID="NewsDateLabel1" runat="server" Text='<%# Eval("word_id") %>' />
&nbsp;</a><br />
                <br />
                <div style="float:left;padding-left:10px; color: #0066FF;">
                    نویسنده:
                    <asp:Label ID="NewsDateLabel0" runat="server" Text='<%# Eval("writer") %>' />
                    بازدید:</div>
                <div style="float:right; padding-left:10px; color: #0066FF; height: 20px;">
                    تاریخ درج: 
                    <asp:Label ID="NewsDateLabel" runat="server" Text='<%# Eval("date") %>' />
                </div>
                <br />
            </div>
            <div style="font-family:Tahoma; font-size:10pt;text-align:right; direction:rtl;">
  
            
          
           

                <table align="right" class="DataList" dir="rtl" lang="fa" width="100%">
                    <tr>
                        <td>
                            <a href='<%# Eval("word_id","Showword.aspx?NID={0}") %>'>
                            <img alt="" height="75" src='../<%# Eval("image") %>' width="75" /></a>
                         
                        </td>
                        <td align="justify" width="75%">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td width="75%">
                            <a href='<%# Eval("word_id","Showword.aspx?WID={0}") %>'>
                            <div ID="bcontinue" align="left" dir="rtl" lang="fa">
                                پیشنهاد متن جدید ...
                                   
                            </div>
                            </a>&nbsp;</td>
                    </tr>
                </table>
                <br />
            </div>
 
  
        </ItemTemplate>
    </asp:DataList>
    <p>
        <br />
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>

