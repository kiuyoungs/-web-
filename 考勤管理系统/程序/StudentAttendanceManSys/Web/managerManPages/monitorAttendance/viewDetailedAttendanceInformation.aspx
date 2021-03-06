﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewDetailedAttendanceInformation.aspx.cs"
    Inherits="Web.managerManPages.monitorAttendance.viewDetailedAttendanceInformation" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title> 
    <link type="text/css" rel="stylesheet" href="../../css/showCommon.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        &nbsp;
        <asp:Label ID="Label5" runat="server" Text="周次：" Font-Bold="True"></asp:Label>
        <asp:Label ID="week" runat="server" Width="150px"></asp:Label>
        <asp:Label ID="Label4" runat="server" Text="星期：" Font-Bold="True"></asp:Label>
        <asp:Label ID="weekDay" runat="server" Width="180px"></asp:Label>
        <asp:Label ID="Label6" runat="server" Text="上课时间：" Font-Bold="True"></asp:Label>
        <asp:Label ID="classtTime" runat="server" Width="150"></asp:Label>
        <asp:Label ID="Label7" runat="server" Text="上课地点：" Font-Bold="True"></asp:Label>
        <asp:Label ID="classAddress" runat="server" Width="110"></asp:Label>
        <br />
        <br />
        &nbsp;
        <asp:Label ID="Label1" runat="server" Text="班级：" Font-Bold="True" Font-Italic="False"></asp:Label>
        <asp:Label ID="className" runat="server" Width="150px"></asp:Label>
        <asp:Label ID="Label3" runat="server" Text="课程名称：" Font-Bold="True"></asp:Label>
        <asp:Label ID="courseName" runat="server" Width="150px"></asp:Label>
        <asp:Label ID="Label2" runat="server" Text="任课教师：" Font-Bold="True"></asp:Label>
        <asp:Label ID="teacherName" runat="server" Width="100"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <br />
    </div>
    <div align="center">
        <asp:Label ID="Label8" runat="server" Text="本节课未正常出勤学生名单" Width="300px" Font-Bold="True"
            ForeColor="Red"></asp:Label>
        <br />
        <br />
        &nbsp
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4"
            ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField HeaderText="序号" ItemStyle-Width="80" DataField="colNumber">
                    <ItemStyle></ItemStyle>
                </asp:BoundField>
                <asp:BoundField HeaderText="姓名" ItemStyle-Width="120" DataField="name">
                    <ItemStyle></ItemStyle>
                </asp:BoundField>
                <asp:BoundField HeaderText="出勤状态" ItemStyle-Width="100" DataField="status">
                    <ItemStyle></ItemStyle>
                </asp:BoundField>
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" HorizontalAlign="Center" />
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
    </form>
</body>
</html>
