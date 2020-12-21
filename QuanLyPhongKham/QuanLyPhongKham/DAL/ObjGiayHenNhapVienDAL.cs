using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using QuanLyPhongKham.DAL;
using System.Windows.Forms;
using QuanLyPhongKham.GUI;

namespace QuanLyPhongKham.DAL
{
    class ObjGiayHenNhapVienDAL
    {
        private static ObjGiayHenNhapVienDAL instance;

        public static ObjGiayHenNhapVienDAL Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new ObjGiayHenNhapVienDAL();
                }
                return instance;
            }
            set { instance = value; }
        }


        public string MaGH { get; set; }
        public string MaBN { get; set; }
        public string MaNV { get; set; }
        public string SoPhong { get; set; }
        public DateTime NgNhapVen { get; set; }
        public string GhiChu { get; set; }

        public ObjGiayHenNhapVienDAL() { }


        public ObjGiayHenNhapVienDAL(string MaGH, string MaBN, string MaNV, DateTime NgNhapVen, string SoPhong, string GhiChu)
        {
            this.MaGH = MaGH;
            this.MaBN = MaBN;
            this.MaNV = MaNV;
            this.NgNhapVen = NgNhapVen;
            this.SoPhong = SoPhong;
            this.GhiChu = GhiChu;
        }

        // load dữ liệu của phiếu xét nghiệm, trong đó có dữ liệu của phiếu khám bệnh, bệnh nhân và nhân viên
        public DataTable LoadListGHNV()
        {
            Form main = Application.OpenForms["frmMain"];

            Dictionary<string, string> param = new Dictionary<string, string>();

            DataTable dt = new DataTable();
            string LoadQuery = "select MaGH , GiayHenNhapVien.MaBN, TenBN, GiayHenNhapVien.MaNV, NgNhapVen , SoPhong, GhiChu  from GiayHenNhapVien, BenhNhan, NhanVien "
                 + "where GiayHenNhapVien.MaBN = BenhNhan.MaBN and GiayHenNhapVien.MaNV = NhanVien.MaNV";
            dt = DataProvider.Instance.ExecuteQuery(LoadQuery, param);
            return dt;
        }
        public void Add()
        {
            Form main = Application.OpenForms["frmMain"];

            Dictionary<string, string> param = new Dictionary<string, string>();

            // mã phiếu khám bệnh là tự động tạo

            //mã bệnh nhân và tên nhân viên là chương trình tự động hiển thị

            // trên màn hình phải có mã phiếu khám bệnh, mã nhân viên


            // thêm tb mã bệnh nhân, tb mã bác sĩ

            DataTable dt = new DataTable();

            string MaGH = ((frmMain)main).tbMPH.Text.ToString();
            string MaBN = ((frmMain)main).tbMaBN1.Text.ToString();
            string MaNV = ((frmMain)main).tbNV1.Text.ToString();
            string SoPhong = ((frmMain)main).cbSoPhong.Text.ToString();
            string NgNhapVen = ((frmMain)main).dtGHNV.Value.ToString("MM/dd/yyyy");
            string GhiChu = ((frmMain)main).tbGhiChu.Text.ToString();

            string AddQuery = String.Empty;

            AddQuery = "INSERT INTO GiayHenNhapVien (MaGH, MaBN, MaNV,NgNhapVen,SoPhong,GhiChu) values ('" + MaGH + "','" + MaBN + "','" + MaNV + "', '" + NgNhapVen + "','" + SoPhong + "','" + GhiChu + "')";

            int result = DataProvider.Instance.ExecuteNonQuery(AddQuery, param);

            if (result > 0)
            {
                MessageBox.Show("Thêm giấy hẹn nhập viện thành công  thành công");
            }
            else
            {
                MessageBox.Show("Thêm thất bại");
            }
        }


        public void Xoa()
        {
            System.Windows.Forms.Form f = System.Windows.Forms.Application.OpenForms["frmMain"];
            string id_xoa = ((frmMain)f).tbMPH.Text.ToString();

            string DeleteQuery = "DELETE FROM GiayHenNhapVien WHERE MaGH = '" + id_xoa + "'";
            int result = DataProvider.Instance.ExecuteNonQuery(DeleteQuery, null);
            if (result > 0)
            {
                MessageBox.Show("Phiếu hẹn nhập viện đã bị xoá,bấm xem để xem dữ liệu mới", "Thông báo", MessageBoxButtons.OK);
            }
        }
        public int GetNextID()
        {
            int nextID = 1;

            string Query = String.Empty;
            Query += "SELECT TOP 1 MaGH FROM GiayHenNhapVien ";
            Query += "ORDER BY MaGH DESC";

            DataTable dt = DataProvider.Instance.ExecuteQuery(Query, null);
            if (dt.Rows.Count > 0)
            {
                Int32.TryParse(dt.Rows[0]["MaGH"].ToString(), out nextID);
                ++nextID;
            }
            return nextID;
        }
    }
}
