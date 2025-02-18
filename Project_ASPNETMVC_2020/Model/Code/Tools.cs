﻿using System;
using System.Collections.Generic;
using System.Globalization;
using System.Text;
using System.Text.RegularExpressions;

namespace Project_ASPNETMVC_2020.Model.Code
{
    public static class Tools
    {
        public static bool IsValidEmail(string email)
        {
            try
            {
                var addr = new System.Net.Mail.MailAddress(email);
                return addr.Address == email;
            }
            catch
            {
                return false;
            }
        }
        public static bool IsNumberPhone(string phone)
        {
            return Regex.Match(phone, @"(03|07|08|09|01[2|6|8|9])+([0-9]{8})\b").Success;
        }
        public static string MD5(string input)
        {
            using (System.Security.Cryptography.MD5 md5 = System.Security.Cryptography.MD5.Create())
            {
                byte[] inputBytes = System.Text.Encoding.ASCII.GetBytes(input);
                byte[] hashBytes = md5.ComputeHash(inputBytes);
                StringBuilder sb = new StringBuilder();
                for (int i = 0; i < hashBytes.Length; i++)
                {
                    sb.Append(hashBytes[i].ToString("X2"));
                }
                return sb.ToString();
            }
        }

        public static DateTime? toDateTime(string ngaySinh)
        {
            int day = int.Parse(ngaySinh.Substring(0, 2));
            int month = int.Parse(ngaySinh.Substring(3, 2));
            int year = int.Parse(ngaySinh.Substring(6, 4));
            if (day < 1)
            {
                day = 1;
            }else if (day > 31)
            {
                day = 30;
            }else if (month <1)
            {
                month = 1;
            }
            else if (month > 12)
            {
                month = 12;
            }else if (year<0)
            {
                year = 1900;
            }
            return new DateTime(year, month, day, 12, 12, 12);
        }
        public static String StringToVND(string money)
        {
            CultureInfo cul = CultureInfo.GetCultureInfo("vi-VN");
            return double.Parse(money.ToString()).ToString("#,###", cul.NumberFormat) + " VNĐ";
        }
        public static double PricesDecreased(double price, double discount)
        {
            return (price - (price * (discount / 100)));
        }
        public static bool checkNull(string tocheck)
        {
            if (String.IsNullOrEmpty(tocheck) || String.IsNullOrWhiteSpace(tocheck) || String.Empty.Equals(tocheck) || tocheck.Equals(""))
            {
                return false;
            }
            else
            {
                return true;
            }
        }
        public static bool checkNum(string tocheck)
        {
            try
            {
                int check = Convert.ToInt32(tocheck);
                return true;
            }
            catch (Exception e)
            {
                return false;
            }
        }
        public static bool checkNullList(List<string> tocheck)
        {
            foreach(string word in tocheck)
            {
                if (checkNull(word) == false)
                {
                    return false;
                }
            }
            return true;
        }
    }
}
