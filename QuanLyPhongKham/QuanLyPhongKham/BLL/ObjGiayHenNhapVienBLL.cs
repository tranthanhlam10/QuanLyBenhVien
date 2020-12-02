using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using QuanLyPhongKham.DAL;
using System.Data;
using System.Data.SqlClient;

namespace QuanLyPhongKham.BLL
{
    class ObjGiayHenNhapVienBLL
    {
        private static ObjGiayHenNhapVienBLL instance;

        public static ObjGiayHenNhapVienBLL Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new ObjGiayHenNhapVienBLL();
                }
                return instance;
            }
            set { instance = value; }


        }


        private ObjGiayHenNhapVienBLL() { }

        public DataTable GetListGHNV()
        {
            return ObjGiayHenNhapVienDAL.Instance.LoadListGHNV();
        }


        public void Add()
        {
            ObjGiayHenNhapVienDAL.Instance.Add();
        }


        public void Xoa()
        {
            ObjGiayHenNhapVienDAL.Instance.Xoa();
        }
        public int GetNextID()
        {
             return ObjGiayHenNhapVienDAL.Instance.GetNextID();
        }
    }
}
