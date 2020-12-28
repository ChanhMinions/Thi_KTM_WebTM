<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Management.Master" AutoEventWireup="true" CodeBehind="Genres.aspx.cs" Inherits="QuanLyPhongBan.Genres" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 284px;
        }
        .auto-style2 {
            width: 350px;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpMainContent" runat="server">
    <h5> DANH SÁCH TÁC GIẢ !</h5>
    <p> 
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Text="Tác Giả :"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox1" runat="server" Height="33px" Width="323px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label2" runat="server" Font-Size="XX-Large" Text="Tên Tác Giả :"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox2" runat="server" Height="33px" Width="324px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label3" runat="server" Font-Size="XX-Large" Text="Email:"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox3" runat="server" Height="39px" Width="323px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Button ID="txbthem" runat="server" Height="44px" OnClick="txbthem_Click" Text="Thêm" Width="96px" />
                    <asp:Button ID="Button2" runat="server" Height="45px" OnClick="Button2_Click" Text="Xóa" Width="95px" />
                    <asp:Button ID="Button1" runat="server" Height="46px" OnClick="Button1_Click" Text="Sửa" Width="85px" />
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Label ID="txbhienthi" runat="server" Font-Size="XX-Large" ForeColor="#CC0000" Text="[ Hiên Thị ]"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="100%">
                        <Columns>
                            <asp:BoundField DataField="TacGiaID" HeaderText="Tác Giả" />
                            <asp:BoundField DataField="TenTG" HeaderText="Tên Tác Giả " />
                            <asp:BoundField DataField="Email" HeaderText="Email" />
                            <asp:CommandField SelectText="Chọn" ShowSelectButton="True" />
                        </Columns>
                        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#FFF1D4" />
                        <SortedAscendingHeaderStyle BackColor="#B95C30" />
                        <SortedDescendingCellStyle BackColor="#F1E5CE" />
                        <SortedDescendingHeaderStyle BackColor="#93451F" />
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </p>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cpMainContent1" runat="server">
</asp:Content>
