﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using QuanLyPhongKham.DAL;
using System.Data;
using System.Data.SqlClient;

namespace QuanLyPhongKham.BLL
{
    class ObjThuocBLL
    {
        private static ObjThuocBLL instance;

        public static ObjThuocBLL Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new ObjThuocBLL();
                }
                return instance;
            }
            set { instance = value; }
        }
        private ObjThuocBLL() { }


        public DataTable GetData()
        {
            return ObjThuocDAL.Instance.GetInfo();
        }

        public DataTable GetInfoByID(string id)
        {
            return ObjThuocDAL.Instance.GetInfoByID(id);
        }

        public DataTable GetInfoByName(string name)
        {
            return ObjThuocDAL.Instance.GetInfoByName(name);
        }

        public void Add(Dictionary<string, string> parameters)
        {
            ObjThuocDAL.Instance.Add(parameters);
        }

        public void Update(Dictionary<string, string> parameters)
        {
            ObjThuocDAL.Instance.Update(parameters);
        }

        public void AddThuoc()
        {
            ObjThuocDAL.Instance.AddThuoc();
        }

        public void XoaThuoc()
        {
            ObjThuocDAL.Instance.XoaThuoc();
        }

        public void SuaThuoc()
        {
            ObjThuocDAL.Instance.SuaThuoc();
        }


        public DataTable FindThuoc()
        {
            return ObjThuocDAL.Instance.FindThuoc();
        }


    }
}
