﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddYingYeYuan.aspx.cs" Inherits="Admin_AddYingYeYuan" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>分店管理</title>
    
            <script language="javascript" type="text/javascript" src="../JavaScript/Calendar.js"></script>
    <style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #EEF2FB;
}
-->
</style>
  <link href="css/common.css"rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td width="17" valign="top" background="images/mail_leftbg.gif" style="height: 49px"><img src="images/left-top-right.gif" width="17" height="29" /></td>
    <td valign="top" background="images/content-bg.gif" style="height: 49px"><table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="left_topbg" id="table2">
      <tr>
        <td height="31"><div class="titlebt">
            分店用户管理</div></td>
      </tr>
    </table></td>
    <td width="16" valign="top" background="images/mail_rightbg.gif" style="height: 49px"><img src="images/nav-right-bg.gif" width="16" height="29" /></td>
  </tr>
        <tr>
            <td background="images/mail_leftbg.gif" style="height: 31px" valign="middle">
            </td>
            <td bgcolor="#f7f8f9" style="height: 31px" valign="top">
                姓名：<asp:TextBox ID="txtUser" runat="server" Width="66px"></asp:TextBox>
                &nbsp; &nbsp; <span lang="zh-cn">月薪：</span><asp:TextBox ID="TextBox1" runat="server" Width="48px"></asp:TextBox>
                <span lang="zh-cn">聘用日期：</span><asp:TextBox ID="TextBox2" runat="server" Width="99px" onclick="fPopCalendar(event,this,this)" onfocus="this.select()" ></asp:TextBox>
                &nbsp;&nbsp; 分店：<asp:DropDownList ID="DropDownList1" runat="server" Width="174px">
                </asp:DropDownList>登陆账号<span lang="zh-cn">：</span><asp:TextBox ID="TextBox3" runat="server" Width="87px"></asp:TextBox>
                登陆密码：<asp:TextBox ID="TextBox4" runat="server" TextMode="Password" Width="87px"></asp:TextBox>
                <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click"  
                    Text="添 加" />
                &nbsp;</td>
            <td background="images/mail_rightbg.gif" style="height: 31px">
            </td>
        </tr>
  <tr>
    <td valign="middle" background="images/mail_leftbg.gif">&nbsp;</td>
    <td valign="top" bgcolor="#F7F8F9">
        <asp:GridView ID="dlinfo" runat="server" AllowPaging="True" AutoGenerateColumns="False"
            BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px"
            CellPadding="3" DataKeyNames="id" OnPageIndexChanging="dlinfo_PageIndexChanging"
            OnRowDataBound="dlinfo_RowDataBound" OnRowDeleting="dlinfo_RowDeleting" Width="100%">
            <PagerSettings FirstPageText="首页" LastPageText="尾页" NextPageText="下一页" PageButtonCount="12"
                PreviousPageText="上一页" />
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <RowStyle ForeColor="#000066" HorizontalAlign="Left" />
            <Columns>
            
              <asp:TemplateField HeaderText="分店">
                    <ItemTemplate>
                        <asp:Label ID="FDName" runat="server" Text='<%# Bind("FDName") %>' Width="100px"></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Left" Width="100px" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="姓名">
                    <ItemTemplate>
                        <asp:Label ID="Name" runat="server" Text='<%# Bind("Name") %>' Width="100px"></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Left" Width="100px" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="月薪">
                    <ItemTemplate>
                        <asp:Label ID="YueXin" runat="server" Text='<%# Bind("YueXin") %>' Width="100px"></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Left" Width="100px" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="聘用日期">
                    <ItemTemplate>
                        <asp:Label ID="PYTime" runat="server" Text='<%# Bind("PYTime") %>' Width="100px"></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Left" Width="100px" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="登陆账号">
                    <ItemTemplate>
                        <asp:Label ID="LoginName" runat="server" Text='<%# Bind("LoginName") %>' Width="100px"></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Left" Width="100px" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="登陆密码">
                    <ItemTemplate>
                        <asp:Label ID="LoginName" runat="server" Text='<%# Bind("LoginName") %>' Width="100px"></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Left" Width="100px" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="修改">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# "Modify_YingYeYuan.aspx?id="+Eval("id") %>'
                            Text="修改"></asp:HyperLink>
                    </ItemTemplate>
                     <ItemStyle HorizontalAlign="Left" Width="100px" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="删除" ShowHeader="False">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete"
                            Text="删除" Width="71px"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <PagerTemplate>
                <table border="0" width="100%">
                    <tr>
                        <td>
                            <asp:LinkButton ID="LinkButtonFirstPage" runat="server" CommandArgument="First" CommandName="Page"
                                Visible=" <%# ((GridView)Container.NamingContainer).PageIndex != 0 %>">首页 </asp:LinkButton>
                            <asp:LinkButton ID="LinkButtonPreviousPage" runat="server" CommandArgument="Prev"
                                CommandName="Page" Visible=" <%# ((GridView)Container.NamingContainer).PageIndex != 0 %>">上一页 </asp:LinkButton>
                            <asp:LinkButton ID="LinkButtonNextPage" runat="server" CommandArgument="Next" CommandName="Page"
                                Visible=" <%# ((GridView)Container.NamingContainer).PageIndex != ((GridView)Container.NamingContainer).PageCount - 1 %>">下一页 </asp:LinkButton>
                            <asp:LinkButton ID="LinkButtonLastPage" runat="server" CommandArgument="Last" CommandName="Page"
                                Visible=" <%# ((GridView)Container.NamingContainer).PageIndex != ((GridView)Container.NamingContainer).PageCount - 1 %>">尾页 </asp:LinkButton>
                            共
                            <asp:Label ID="LabelPageCount" runat="server" Text=" <%# ((GridView)Container.NamingContainer).PageCount %>"> </asp:Label>
                            页 第
                            <asp:Label ID="Label2" runat="server" Text=" <%# ((GridView)Container.NamingContainer).PageIndex + 1 %>"> </asp:Label>
                            页
                        </td>
                        <td align="right" width="20%">
                        </td>
                    </tr>
                </table>
            </PagerTemplate>
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#006699" CssClass="ct" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
    </td>
    <td background="images/mail_rightbg.gif">&nbsp;</td>
  </tr>
        <tr>
            <td background="images/mail_leftbg.gif" valign="middle">
            </td>
            <td align="center" bgcolor="#f7f8f9" valign="top">
                &nbsp;<asp:Label ID="Label4" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td background="images/mail_rightbg.gif">
            </td>
        </tr>
  <tr>
    <td valign="bottom" background="images/mail_leftbg.gif"><img src="images/buttom_left2.gif" width="17" height="17" /></td>
    <td background="images/buttom_bgs.gif"><img src="images/buttom_bgs.gif" width="17" height="17"></td>
    <td valign="bottom" background="images/mail_rightbg.gif"><img src="images/buttom_right2.gif" width="16" height="17" /></td>
  </tr>
</table>
    </div>
    </form>
</body>
</html>