<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Management.Master" AutoEventWireup="true" CodeBehind="TrangChu.aspx.cs" Inherits="QuanLyPhongBan.Management.TrangChu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpMainContent" runat="server">
    <h5>CHÀO MỪNG BẠN ĐÃ ĐẾN VỚI WEB TIN TỨC</h5>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="TinID" DataSourceID="SqlDataSource1" Height="42px" Width="1264px" AllowPaging="True">
            <Columns>
                <asp:BoundField DataField="TinID" HeaderText="TinID" ReadOnly="True" SortExpression="TinID" />
                <asp:BoundField DataField="NoiDung" HeaderText="NoiDung" SortExpression="NoiDung" />
                <asp:BoundField DataField="NgayGui" HeaderText="NgayGui" SortExpression="NgayGui" />
                <asp:BoundField DataField="TacGiaID" HeaderText="TacGiaID" SortExpression="TacGiaID" />
            </Columns>
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <SortedAscendingCellStyle BackColor="#FEFCEB" />
            <SortedAscendingHeaderStyle BackColor="#AF0101" />
            <SortedDescendingCellStyle BackColor="#F6F0C0" />
            <SortedDescendingHeaderStyle BackColor="#7E0000" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GioithieutintucConnectionString2 %>" SelectCommand="SELECT * FROM [TinTuc]"></asp:SqlDataSource>
    </p>
    <p>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="TacGiaID" DataSourceID="SqlDataSource2" Width="1284px" AllowPaging="True">
            <Columns>
                <asp:BoundField DataField="TacGiaID" HeaderText="TacGiaID" ReadOnly="True" SortExpression="TacGiaID" />
                <asp:BoundField DataField="TenTG" HeaderText="TenTG" SortExpression="TenTG" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            </Columns>
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:GioithieutintucConnectionString %>" SelectCommand="SELECT * FROM [TacGia]"></asp:SqlDataSource>
    </p>
    <p>
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="ChuDeID" DataSourceID="SqlDataSource3" Width="1279px" Height="131px">
            <Columns>
                <asp:BoundField DataField="ChuDeID" HeaderText="ChuDeID" ReadOnly="True" SortExpression="ChuDeID" />
                <asp:BoundField DataField="TenCD" HeaderText="TenCD" SortExpression="TenCD" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:GioithieutintucConnectionString %>" SelectCommand="SELECT * FROM [ChuDe]"></asp:SqlDataSource>
    </p>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cpMainContent1" runat="server">
</asp:Content>
