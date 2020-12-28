<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Management.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="QuanLyPhongBan.Management.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 370px;
    }
    .auto-style2 {
        width: 280px;
    }
    .auto-style3 {
        margin-top: 0px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpMainContent" runat="server">
        <h2>TIN TỨC </h2>
    <p> Chào mừng bạn đến vị trí Tin Tức của Website</p>
        <p> 
            <table style="width:100%;">
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Text="Tin Tức :"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox1" runat="server" Height="29px" Width="243px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label2" runat="server" Font-Size="XX-Large" Text="Nộ Dung:"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox2" runat="server" Height="33px" Width="239px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label3" runat="server" Font-Size="XX-Large" Text="Ngày Gưi:"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox3" runat="server" Height="36px" Width="237px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label4" runat="server" Font-Size="XX-Large" Text="Tác Giả :"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox4" runat="server" Height="37px" Width="242px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:Button ID="Button3" runat="server" Height="48px" Text="Thêm" Width="90px" OnClick="Button3_Click" />
                        <asp:Button ID="Button2" runat="server" Height="47px" Text="Xóa" Width="85px" OnClick="Button2_Click" />
                        <asp:Button ID="Button1" runat="server" Height="48px" Text="Sửa" Width="77px" OnClick="Button1_Click" />
                        <table style="width:100%;">
                            <tr>
                                <td rowspan="3">
                                    <asp:Label ID="txbhienthi" runat="server" Font-Size="X-Large" ForeColor="#CC0000" Text="[ Hiển Thị ]"></asp:Label>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style3" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="100%" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                            <Columns>
                                <asp:BoundField DataField="TinID" HeaderText="Tin Tức" />
                                <asp:BoundField DataField="NoiDung" HeaderText="Nội Dung" />
                                <asp:BoundField DataField="NgayGui" HeaderText="Ngày Gửi" />
                                <asp:BoundField DataField="TacGiaID" HeaderText="Tác Giả" />
                                <asp:CommandField SelectText="Chọn" ShowSelectButton="True" />
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
                    </td>
                </tr>
            </table>
        </p>
    </asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cpMainContent1" runat="server">
</asp:Content>
