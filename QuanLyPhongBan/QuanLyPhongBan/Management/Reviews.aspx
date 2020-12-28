<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Management.Master" AutoEventWireup="true" CodeBehind="Reviews.aspx.cs" Inherits="QuanLyPhongBan.Management.Reviews" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 226px;
        }
        .auto-style2 {
            width: 384px;
        }
        .auto-style3 {
            width: 226px;
            height: 41px;
        }
        .auto-style4 {
            width: 384px;
            height: 41px;
        }
        .auto-style5 {
            height: 41px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpMainContent" runat="server">
    <h5>Danh Sách Chủ Đề !</h5>
    <p>
        <table style="width:100%;">
            <tr>
                <td class="auto-style3">Chủ ĐỀ:</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox1" runat="server" Height="31px" Width="299px"></asp:TextBox>
                </td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style1">Tên Chủ Đề:</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox2" runat="server" Height="31px" Width="299px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Button ID="btthem" runat="server" Height="49px" Text="Thêm" Width="91px" OnClick="btthem_Click" />
                    <asp:Button ID="btxoa" runat="server" Height="49px" Text="Xoá" Width="91px" OnClick="btxoa_Click" />
                    <asp:Button ID="btsua" runat="server" Height="49px" Text="Sửa" Width="91px" OnClick="btsua_Click" />
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Label ID="txbhienthi" runat="server" Font-Size="Larger" ForeColor="#CC0000" Text="[ Hiển Thị ]"></asp:Label>
                </td>
            </tr>
        </table>
        <table style="width:100%;">
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" Width="100%" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                        <Columns>
                            <asp:BoundField DataField="ChuDeID" HeaderText="Chủ Đề" />
                            <asp:BoundField DataField="TenCD" HeaderText="Tên Chủ Đề" />
                            <asp:CommandField SelectText="Chọn" ShowSelectButton="True" />
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
                </td>
            </tr>
        </table>
    </p>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cpMainContent1" runat="server">
</asp:Content>
