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
    class ObjXetNghiemBLL
    {
        private static ObjXetNghiemBLL instance;

        public static ObjXetNghiemBLL Instance
        {
            get
            {

                if (instance == null)
                {
                    instance = new ObjXetNghiemBLL();
                }
                return instance;
            }
            private set => instance = value;
        }

        private ObjXetNghiemBLL() { }

        public DataTable GetListPXN()
        {
            return ObjPhieuXetNghiemDAL.Instance.LoadListPXN();
        }



        public void Add()
        {
            ObjPhieuXetNghiemDAL.Instance.Add();

        }

        public DataTable Reload()
        {
            return ObjPhieuXetNghiemDAL.Instance.LoadListPXN();
        }

        public void Xoa()
        {
            ObjPhieuXetNghiemDAL.Instance.Xoa();
        }
    }
}
