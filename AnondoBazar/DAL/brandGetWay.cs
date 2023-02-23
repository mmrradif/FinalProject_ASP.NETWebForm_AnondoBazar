using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using AnondoBazar.Models;

namespace AnondoBazar.DAL
{
    public class brandGetWay
    {
        SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=aspProject;Integrated Security=True");

        public IQueryable<brand> Select()
        {
            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter("SELECT * FROM tblBrands", con);
            sda.Fill(dt);

            return dt.AsEnumerable()
                .Select(a => new brand
                {
                    BrandId = a.Field<int>("brandId"),
                    BrandName = a.Field<string>("brandName")
                })
                .AsQueryable();
        }

        public void Insert(brand a)
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO tblBrands VALUES (@n)", con);
            cmd.Parameters.AddWithValue("@n", a.BrandName);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}
