using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using QuanLyPhongBan.Class;
using System.Windows.Forms;

namespace QuanLyPhongBan.Management
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Loadbang();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int dong = GridView1.SelectedIndex;
            ketnoi kn = new ketnoi();
            DataTable dt = new DataTable();
            dt = kn.laybang("SELECT * FROM TinTuc");
            TextBox1.Text = dt.Rows[dong][0].ToString();
            TextBox2.Text = dt.Rows[dong][1].ToString();
            TextBox3.Text = dt.Rows[dong][2].ToString();
            TextBox4.Text = dt.Rows[dong][3].ToString();

        }
        void Loadbang()
        {
            ketnoi kn = new ketnoi();
            DataTable dt = new DataTable();
            dt = kn.laybang("SELECT * FROM TinTuc ");
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text.Trim().Length == 0)
            {
                MessageBox.Show("Bạn phải nhập Tin Tức!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                TextBox1.Focus();
                return;
            }
            if (TextBox2.Text.Trim().Length == 0)
            {
                MessageBox.Show("Bạn phải nhập Nội Dung!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                TextBox2.Focus();
                return;
            }
            if (TextBox3.Text.Trim().Length == 0)
            {
                MessageBox.Show("Bạn phải nhập Ngày Gửi!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                TextBox3.Focus();
                return;
            }
            if (TextBox4.Text.Trim().Length == 0)
            {
                MessageBox.Show("Bạn phải nhập Tác Giả!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                TextBox4.Focus();
                return;
            }
            if (MessageBox.Show("Bạn có muốn Thêm không?", "Thông báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                SqlConnection con = new SqlConnection("Data Source=ADMIN\\VIEWSOINC;Initial Catalog=Gioithieutintuc;Integrated Security=True");
                SqlCommand cmd = new SqlCommand("insert into TinTuc(TinID,NoiDung,NgayGui,TacGiaID) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "' )", con);
                con.Open(); // mo ket noi
                cmd.ExecuteNonQuery(); // thuc thi
                con.Close();
                Loadbang();
                txbhienthi.Text = "Bạn đã thêm thành công!";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text.Trim().Length == 0)
            {
                MessageBox.Show("Bạn phải nhập Tin Tức!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                TextBox1.Focus();
                return;
            }
            if (TextBox2.Text.Trim().Length == 0)
            {
                MessageBox.Show("Bạn phải nhập Nội Dung!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                TextBox2.Focus();
                return;
            }
            if (TextBox3.Text.Trim().Length == 0)
            {
                MessageBox.Show("Bạn phải nhập Ngày Gửi!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                TextBox3.Focus();
                return;
            }
            if (TextBox4.Text.Trim().Length == 0)
            {
                MessageBox.Show("Bạn phải nhập Tác Giả!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                TextBox4.Focus();
                return;
            }
            if (MessageBox.Show("Bạn có muốn xoá không?", "Thông báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                SqlConnection con = new SqlConnection("Data Source=ADMIN\\VIEWSOINC;Initial Catalog=Gioithieutintuc;Integrated Security=True");
                SqlCommand cmd = new SqlCommand("delete from TinTuc  where TinID='" + TextBox1.Text + "'", con);
                con.Open(); // mo ket noi
                cmd.ExecuteNonQuery(); // thuc thi
                con.Close();
                Loadbang();
                txbhienthi.Text = "Bạn đã xoá thành công!";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text.Trim().Length == 0)
            {
                MessageBox.Show("Bạn phải nhập Tin Tức!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                TextBox1.Focus();
                return;
            }
            if (TextBox2.Text.Trim().Length == 0)
            {
                MessageBox.Show("Bạn phải nhập Nội Dung!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                TextBox2.Focus();
                return;
            }
            if (TextBox3.Text.Trim().Length == 0)
            {
                MessageBox.Show("Bạn phải nhập Ngày Gửi!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                TextBox3.Focus();
                return;
            }
            if (TextBox4.Text.Trim().Length == 0)
            {
                MessageBox.Show("Bạn phải nhập Tác Giả!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                TextBox4.Focus();
                return;
            }
            if (MessageBox.Show("Bạn có muốn sửa không?", "Thông báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                SqlConnection con = new SqlConnection("Data Source=ADMIN\\VIEWSOINC;Initial Catalog=Gioithieutintuc;Integrated Security=True");
                SqlCommand cmd = new SqlCommand("update TinTuc set TinID='" + TextBox1.Text + "',NoiDung='" + TextBox2.Text + "',NgayGui='" + TextBox3.Text + "',TacGiaID='" + TextBox4.Text + "'where TinID='" + TextBox1.Text + "'", con);
                con.Open(); // mo ket noi
                cmd.ExecuteNonQuery(); // thuc thi
                con.Close();
                Loadbang();
                txbhienthi.Text = "Bạn đã sửa thành công!";
            }
        }
    }
}