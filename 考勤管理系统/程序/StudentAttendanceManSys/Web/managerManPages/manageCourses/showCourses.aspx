﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="showCourses.aspx.cs" Inherits="Web.managerManPages.manageCourses.showCourses" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link type="text/css" rel="stylesheet" href="../../css/showCommon.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div align="center" style="margin-top: 10px;">
        <div>
            《课程信息管理》<asp:ImageButton ID="ImageButton_add" runat="server" ImageUrl="~/images/add.gif"
                OnClick="ImageButton_add_Click" Style="margin-left: 5px;" /></div>
        <div style="margin-top: 20px;">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4"
                ForeColor="#333333" GridLines="None" ShowHeaderWhenEmpty="True" RowStyle-HorizontalAlign="Center">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField HeaderText="序号" ItemStyle-Width="60" DataField="colNumber">
                        <ItemStyle></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField HeaderText="课程名称" ItemStyle-Width="200" DataField="name">
                        <ItemStyle></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField HeaderText="学分" ItemStyle-Width="70" DataField="credit">
                        <ItemStyle></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField HeaderText="课时" ItemStyle-Width="90" DataField="schoolHour">
                        <ItemStyle></ItemStyle>
                    </asp:BoundField>
                    <asp:TemplateField HeaderText="编辑/删除">
                        <ItemTemplate>
                            <asp:ImageButton ID="ImageButton_edit" runat="server" CausesValidation="False" Text="Button"
                                ImageUrl="~/images/edit.gif" OnClick="ImageButton_edit_Click" CommandArgument='<%# Eval("ID") %>'>
                            </asp:ImageButton>
                            /
                            <asp:ImageButton ID="ImageButton_delete" runat="server" CausesValidation="False"
                                Text="Button" ImageUrl='~/images/delete.gif' OnClick="ImageButton_delete_Click"
                                OnClientClick="return confirm('确定删除该数据吗？');" CommandArgument='<%# Eval("ID") %>'>
                            </asp:ImageButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <webdiyer:AspNetPager ID="AspNetPager1" runat="server" CssClass="anpager" FirstPageText="首页"
                LastPageText="尾页" NextPageText="下一页" OnPageChanged="AspNetPager1_PageChanged"
                PrevPageText="上一页" AlwaysShow="True" CurrentPageButtonClass="cpb" Style="margin-top: 20px;">
            </webdiyer:AspNetPager>
        </div>
    </div>
    </form>
</body>
</html>
