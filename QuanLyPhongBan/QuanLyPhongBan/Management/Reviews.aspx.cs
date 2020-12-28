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
    public partial class Reviews : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Loadbang();
        }

        protected void btthem_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text.Trim().Length == 0)
            {
                MessageBox.Show("Bạn phải nhập Phòng Ban!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                TextBox1.Focus();
                return;
            }
            if (TextBox2.Text.Trim().Length == 0)
            {
                MessageBox.Show("Bạn phải nhập Tên Phòng Ban!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                TextBox2.Focus();
                return;
            }
            if (MessageBox.Show("Bạn có muốn Thêm không?", "Thông báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                SqlConnection con = new SqlConnection("Data Source=ADMIN\\VIEWSOINC;Initial Catalog=Gioithieutintuc;Integrated Security=True");
                SqlCommand cmd = new SqlCommand("insert into ChuDe(ChuDeID,TenCD) values('" + TextBox1.Text + "','" + TextBox2.Text + "')", con);
                con.Open(); // mo ket noi
                cmd.ExecuteNonQuery(); // thuc thi
                con.Close();
                Loadbang();
                txbhienthi.Text = "Bạn đã thêm thành công!";
            }
        }

        protected void btxoa_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text.Trim().Length == 0)
            {
                MessageBox.Show("Bạn phải nhập Phòng Ban!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                TextBox1.Focus();
                return;
            }
            if (TextBox2.Text.Trim().Length == 0)
            {
                MessageBox.Show("Bạn phải nhập Tên Phòng Ban!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                TextBox2.Focus();
                return;
            }
            if (MessageBox.Show("Bạn có muốn xoá không?", "Thông báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                SqlConnection con = new SqlConnection("Data Source=ADMIN\\VIEWSOINC;Initial Catalog=Gioithieutintuc;Integrated Security=True");
                SqlCommand cmd = new SqlCommand("delete from ChuDe  where ChuDeID='" + TextBox1.Text + "'", con);
                con.Open(); // mo ket noi
                cmd.ExecuteNonQuery(); // thuc thi
                con.Close();
                Loadbang();
                txbhienthi.Text = "Bạn đã xoá thành công!";
            }
        }

        protected void btsua_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text.Trim().Length == 0)
            {
                MessageBox.Show("Bạn phải nhập Phòng Ban!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                TextBox1.Focus();
                return;
            }
            if (TextBox2.Text.Trim().Length == 0)
            {
                MessageBox.Show("Bạn phải nhập Tên Phòng Ban!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                TextBox2.Focus();
                return;
            }
            if (MessageBox.Show("Bạn có muốn sửa không?", "Thông báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                SqlConnection con = new SqlConnection("Data Source=ADMIN\\VIEWSOINC;Initial Catalog=Gioithieutintuc;Integrated Security=True");
                SqlCommand cmd = new SqlCommand("update ChuDe set ChuDeID='" + TextBox1.Text + "',TenCD='" + TextBox2.Text + "'where ChuDeID='" + TextBox1.Text + "'", con);
                con.Open(); // mo ket noi
                cmd.ExecuteNonQuery(); // thuc thi
                con.Close();
                Loadbang();
                txbhienthi.Text = "Bạn đã sửa thành công!";
            }
        }
        void Loadbang()
        {
            ketnoi kn = new ketnoi();
            DataTable dt = new DataTable();
            dt = kn.laybang("SELECT * FROM ChuDe");
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int dong = GridView1.SelectedIndex;
            ketnoi kn = new ketnoi();
            DataTable dt = new DataTable();
            dt = kn.laybang("SELECT * FROM ChuDe");
            TextBox1.Text = dt.Rows[dong][0].ToString();
            TextBox2.Text = dt.Rows[dong][1].ToString();
        }
    }
}