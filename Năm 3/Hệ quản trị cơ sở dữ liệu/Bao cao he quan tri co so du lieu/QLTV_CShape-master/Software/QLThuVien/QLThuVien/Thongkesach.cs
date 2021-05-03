using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QLThuVien
{
    public partial class Thongkesach : Form
    {
        DAL.GetPath gp = new DAL.GetPath();
        BLL.ClassBLL bll_TK;
        DataTable dt;
        string s = "";
        public Thongkesach()
        {
            InitializeComponent();
            HideGrid();
            Reset();
            
        }
        private void Thongkesach_Load(object sender, EventArgs e)
        {
            NapThongke();
            NapSachdangmuon();
            NapSachquahan();
            Napsoluongtheoloai();
            Napsoluongton();
            binding();
        }
        public void NapThongke()
        {
            bll_TK = new BLL.ClassBLL();
            dt = new DataTable();
            dt = bll_TK.getThongKeSach();
            gridThongKeS.DataSource = dt;
        }
        public void Napsoluongton()
        {
            bll_TK = new BLL.ClassBLL();
            dt = new DataTable();
            dt = bll_TK.getsoluongton();
            gridsachton.DataSource = dt;
        }
        public void NapSachdangmuon()
        {
            bll_TK = new BLL.ClassBLL();
            dt = new DataTable();
            dt = bll_TK.getSachdangmuon();
            gridSachdangmuon.DataSource = dt;
        }
        public void Napsoluongtheoloai()
        {
            bll_TK = new BLL.ClassBLL();
            dt = new DataTable();
            dt = bll_TK.getsoluongloai();
            gridsoluongtheoloai.DataSource = dt;
        }
        public void NapSachquahan()
        {
            bll_TK = new BLL.ClassBLL();
            dt = new DataTable();
            dt = bll_TK.getSachquahan();
            gridQuaHan.DataSource = dt;
        }
        public void Reset()
        {
            labSachCM.Text = "";
            labSachQH.Text = "";
            labSachTK.Text = "";
            labTongS.Text = "";
        }
        public void binding()
        {
            labSachCM.DataBindings.Clear();
            labSachCM.DataBindings.Add("Text", gridThongKeS.DataSource, "SachCM");
            labSachQH.DataBindings.Clear();
            labSachQH.DataBindings.Add("Text", gridThongKeS.DataSource, "QuaH");
            labSachTK.DataBindings.Clear();
            labSachTK.DataBindings.Add("Text", gridThongKeS.DataSource, "SachTK");
            labTongS.DataBindings.Clear();
            labTongS.DataBindings.Add("Text", gridThongKeS.DataSource, "TongS");
        }
        private void btnSachdangmuon_Click(object sender, EventArgs e)
        {
            ShowGrid();
            s = "d";
            gridSachdangmuon.BringToFront();
        }
        public void HideGrid()
        {
            gridSachdangmuon.Hide();
            gridQuaHan.Hide();
            gridsoluongtheoloai.Hide();
            gridsachton.Hide();
        }
        public void ShowGrid()
        {
            gridQuaHan.Show();
            gridSachdangmuon.Show();
            gridsoluongtheoloai.Show();
            gridsachton.Show();
        }

        private void btnsachquahan_Click(object sender, EventArgs e)
        {
            ShowGrid();
            s = "a";
            gridQuaHan.BringToFront();
        }

        private void btnslsachtl_Click(object sender, EventArgs e)
        {
            ShowGrid();
            s = "b";
            gridsoluongtheoloai.BringToFront();
        }

        private void btnsachton_Click(object sender, EventArgs e)
        {
            ShowGrid();
            s = "c";
            gridsachton.BringToFront();
        }
        private void groupControl1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void labSachQH_Click(object sender, EventArgs e)
        {

        }
    }
}
