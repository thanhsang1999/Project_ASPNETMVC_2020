using Project_ASPNETMVC_2020.Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Project_ASPNETMVC_2020.Areas.Admin.Model.DAO
{
    public class MemoryDAO
    {
        public bool checkExit(int memory)
        {
            var check = false;
            foreach (memory item in getAllMemory())
            {
                if (item.MEMORY1 == memory)
                {
                    check = true;
                    return check;
                }
            }
            return check;
        }
        public List<memory> getAllMemory()
        {
            DBModel dBModel = new DBModel();
            return dBModel.memories.OrderBy(x=>x.MEMORY1).ToList();
        }
        public bool addMemory(int memory)
        {
            try
            {
                DBModel dBModel = new DBModel();
                memory m = new memory();
                m.MEMORY1 = memory;
                dBModel.memories.Add(m);
                dBModel.SaveChanges();
                return true;
            }
            catch (Exception e)
            {
                return false;
            }


        }
        public bool delMemory(int memory)
        {
            try
            {
                DBModel dBModel = new DBModel();
                memory m = dBModel.memories.Where(x => x.MEMORY1 == memory).FirstOrDefault();
                if (m != null)
                {
                    dBModel.memories.Attach(m);
                    dBModel.memories.Remove(m);
                    dBModel.SaveChanges();
                    return true;
                }
                else
                {
                    return false;
                }


            }
            catch (Exception e)
            {
                return false;
            }


        }
    }
}
