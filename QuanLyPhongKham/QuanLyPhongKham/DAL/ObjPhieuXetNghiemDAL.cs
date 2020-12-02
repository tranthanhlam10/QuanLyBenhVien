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
    class ObjPhieuXetNghiemDAL
    {
        private static ObjPhieuXetNghiemDAL instance;

        public static ObjPhieuXetNghiemDAL Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new ObjPhieuXetNghiemDAL();
                }
                return instance;
            }
            set { instance = value; }
        }


        public string MaPKB { get; set; }
        public string MaBN { get; set; }
        public string MaNV { get; set; }
        public string LoaiXetNghiem { get; set; }
        public DateTime NgXetNghiem { get; set; }
        public string Ketqua { get; set; }

        public ObjPhieuXetNghiemDAL() { }


        public ObjPhieuXetNghiemDAL(string MaPKB, string MaBN, string MaNV, DateTime NgXetNghiem, string Loaixetnghiem, string Ketqua)
        {
            this.MaPKB = MaPKB;
            this.MaBN = MaBN;
            this.MaNV = MaNV;
            this.LoaiXetNghiem = LoaiXetNghiem;
            this.NgXetNghiem = NgXetNghiem;
            this.Ketqua = Ketqua;
        }


        public DataTable LoadListPXN()
        {
            Form main = Application.OpenForms["frmMain"];

            Dictionary<string, string> param = new Dictionary<string, string>();

            DataTable dt = new DataTable();


            string LoadQuery = "select MaPKB , GiayXetNghiem.MaBN  ,TenBN ,GiayXetNghiem.MaNV,NgXetNghiem,LoaiXetNghiem,KetQua from GiayXetNghiem, BenhNhan, NhanVien"
                              + " where GiayXetNghiem.MaBN = BenhNhan.MaBN and GiayXetNghiem.MaNV = NhanVien.MaNV";

            // string LoadQuery = " select * from GiayXetNghiem";

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

            string MaBN = ((frmMain)main).tbMBN.Text.ToString();
            // string TenBN = ((frmMain)main).tbTBN.Text.ToString();
            string MaNV = ((frmMain)main).tbMBS.Text.ToString();
            string Ketqua = ((frmMain)main).tbKLB.Text.ToString();
            string NgayXetNghiem = ((frmMain)main).dtimeNXN.Value.ToString("MM/dd/yyyy");
            string MaPKB = ((frmMain)main).tbMPKB.Text.ToString();
            string LoaiXetNghiem = ((frmMain)main).cbLXN.Text.ToString();



            string AddQuery = String.Empty;



            AddQuery = "INSERT INTO GiayXetNghiem (MaPKB, MaBN, MaNV,NgXetNghiem,LoaiXetNghiem,Ketqua) values ('" + MaPKB + "','" + MaBN + "','" + MaNV + "', '" + NgayXetNghiem + "','" + LoaiXetNghiem + "','" + Ketqua + "')";

            int result = DataProvider.Instance.ExecuteNonQuery(AddQuery, param);
            if (result > 0)
            {
                MessageBox.Show("Thêm phiếu xét nghiệm thành công");
            }
            else
            {
                MessageBox.Show("Thêm thất bại");
            }
        }


        public void Xoa()
        {
            System.Windows.Forms.Form f = System.Windows.Forms.Application.OpenForms["frmMain"];
            string id_xoa = ((frmMain)f).tbMPKB.Text.ToString();

            string DeleteQuery = "DELETE FROM GiayXetNghiem WHERE MaPKB = '" + id_xoa + "'";
            int result = DataProvider.Instance.ExecuteNonQuery(DeleteQuery, null);
            if (result > 0)
            {
                MessageBox.Show("Kết quả xét nghiệm đã bị xoá,bấm xem để xem dữ liệu mới", "Thông báo", MessageBoxButtons.OK);
            }
        }





    }



}
