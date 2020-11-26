using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace quanlykho
{
    public partial class Xuathang : Form
    {
        SqlConnection conn = new SqlConnection("Data Source=DESKTOP-F87TJRB\\SQLEXPRESS;Initial Catalog=quanlykho;Integrated Security=True");
        public Xuathang()
        {
            InitializeComponent();
        }

        private void Xuathang_Load(object sender, EventArgs e)
        {
            hienthi();
            this.showcbmakho();
            this.showmakhach();
            this.showmahh();
        }
        private void hienthi()
        {
            conn.Open();
            string tk = "select ct.so_px,ngayxuat,ct.ma_kho,ma_khach,ct.ma_hh,ct.soluong,ct.dongia  from CTphieuxuat ct, phieuxuat px where ct.so_px=px.so_px";
            SqlDataAdapter da = new SqlDataAdapter(tk, conn);
            DataTable tb = new DataTable();
            da.Fill(tb);
            dg1.DataSource = tb;
            dg1.Columns[0].HeaderText = "Mã phiếu xuất";
            dg1.Columns[0].Width = 130;
            dg1.Columns[1].HeaderText = "Ngày xuất hàng";
            dg1.Columns[1].Width = 130;
            dg1.Columns[2].HeaderText = "Mã Kho";
            dg1.Columns[2].Width = 130;
            dg1.Columns[3].HeaderText = "Mã khách hàng";
            dg1.Columns[3].Width = 150;   
            dg1.Columns[4].HeaderText = "Mã Hàng Hóa";
            dg1.Columns[4].Width = 130;
            dg1.Columns[5].HeaderText = "Số lượng";
            dg1.Columns[5].Width = 130;
            dg1.Columns[6].HeaderText = "Đơn giá";
            dg1.Columns[6].Width = 130;
            conn.Close();
        }

        private void dg1_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            int index = dg1.CurrentRow.Index;
            txtmpx.Text = dg1.Rows[index].Cells[0].Value.ToString();
            dateNX.Text = dg1.Rows[index].Cells[1].Value.ToString();
            cbmakhach.Text = dg1.Rows[index].Cells[2].Value.ToString();
            cbmakho.Text = dg1.Rows[index].Cells[3].Value.ToString();
            cbmahh.Text = dg1.Rows[index].Cells[4].Value.ToString();
            txtsoluong.Text = dg1.Rows[index].Cells[5].Value.ToString();
            txtdongia.Text = dg1.Rows[index].Cells[6].Value.ToString();
        }

        private void btnThem_Click(object sender, EventArgs e)
        {
            try
            {
                conn.Open();
                string tk = "insert into phieuxuat(so_px,ngayxuat,ma_khach,ma_kho) values ('" + txtmpx.Text + "', '" + dateNX.Text + " ', '" + cbmakhach.Text + "','" + cbmakho.Text + "')  insert into chitietphieunhap values('" + txtmpx.Text + "','" + cbmahh.Text + "','" + cbmakho.Text + "','" + txtsoluong.Text + "','" + txtdongia.Text + "' )";
                SqlCommand comm = new SqlCommand(tk, conn);
                SqlDataAdapter da = new SqlDataAdapter(comm);
                comm.ExecuteNonQuery();
                conn.Close();
                MessageBox.Show("Thành công .", "thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);

            }
            catch
            {
                MessageBox.Show("Không thành công", "thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);

            }
            hienthi();
        }

        private void cbmakhach_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        private void showcbmakho()
        {
            conn.Open();
            string tk = "select ma_kho from kho";
            SqlCommand comm = new SqlCommand(tk, conn);
            SqlDataAdapter da = new SqlDataAdapter(comm);
            DataSet ds = new DataSet();
            da.Fill(ds);
            cbmakho.DataSource = ds.Tables[0];
            cbmakho.ValueMember = "ma_kho";
            conn.Close();
        }
        private void showmakhach()
        {
            conn.Open();
            string tk = "select ma_khach from khachhang";
            SqlCommand comm = new SqlCommand(tk, conn);
            SqlDataAdapter da = new SqlDataAdapter(comm);
            DataSet ds = new DataSet();
            da.Fill(ds);
            cbmakhach.DataSource = ds.Tables[0];
            cbmakhach.ValueMember = "ma_khach";
            conn.Close();

        }
        private void showmahh()
        {
            conn.Open();
            string tk = "select ma_hh from hanghoa";
            SqlCommand comm = new SqlCommand(tk, conn);
            SqlDataAdapter da = new SqlDataAdapter(comm);
            DataSet ds = new DataSet();
            da.Fill(ds);
            cbmahh.DataSource = ds.Tables[0];
            cbmahh.ValueMember = "ma_hh";
            conn.Close();

        }

        private void bntSua_Click(object sender, EventArgs e)
        {
            
            try
            {
                conn.Open();
                string tk = "update phieuxuat set ngayxuat='" + dateNX.Text + "' ,ma_khach= '" + cbmakhach.Text + "',ma_kho = '" + cbmakho.Text + "'where so_px='" + txtmpx.Text + "' update CTphieuxuat set ma_hh= '" + cbmahh.Text + "' ,ma_kho= '" + cbmakho.Text + "', soluong='" + txtsoluong.Text + "',dongia='" + txtdongia.Text + "' where so_px='" + txtmpx.Text + "'";
                SqlCommand comm = new SqlCommand(tk, conn);
                SqlDataAdapter da = new SqlDataAdapter(comm);
                comm.ExecuteNonQuery();
                conn.Close();
                hienthi();

            }
            catch
            {
                MessageBox.Show("Sửa lôi");
            }

        }

        private void bntXoa_Click(object sender, EventArgs e)
        {
            conn.Open();
            string tk = "delete from phieuxuat where so_px='" + txtmpx.Text + "' delete from chitietphieunhap where so_px='" + txtmpx.Text + "' ";
            SqlCommand comm = new SqlCommand(tk, conn);
            SqlDataAdapter da = new SqlDataAdapter(comm);
            comm.ExecuteNonQuery();
            conn.Close();
            MessageBox.Show("Xóa thành công");
            hienthi();
        }
    }
}
