using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AnondoBazar
{
    public partial class frmAddProducts : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=aspProject;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            brandsCount.Text = GridView1.Rows.Count.ToString();
            categoryCount.Text = GridView2.Rows.Count.ToString();
            subCategoryCount.Text = GridView3.Rows.Count.ToString();
            //genderCount.Text = "2";
            //sizeCount.Text = DetailsView5.PageCount.ToString();



            if (!IsPostBack)
            {
                GetListView();

                if (Session["UserType"] != null)
                {

                    string usertype = Session["UserType"].ToString();
                    if (usertype == "1")
                    {
                        btnAddBrand.Visible = true;
                        DetailsView1.Visible = false;
                        GridView1.Visible = true;
                        btnGotoBrand.Visible = false;

                        btnAddCategory.Visible = true;
                        DetailsView2.Visible = false;
                        GridView2.Visible = true;
                        btnGotoCategory.Visible = false;

                        btnAddSubCategory.Visible = true;
                        DetailsView3.Visible = false;
                        GridView3.Visible = true;
                        btnGotoSubCategory.Visible = false;

                        UpdatePanel9.Visible = false;
                        //FormView1.Visible = false;
                        //Label6.Visible = false;


                    }
                    else
                    {
                        btnAddBrand.Visible = false;
                        btnGotoBrand.Visible = false;
                        DetailsView1.Visible = false;
                        GridView1.Visible = true;

                        btnAddCategory.Visible = false;
                        btnGotoBrand.Visible = false;
                        DetailsView2.Visible = false;
                        GridView2.Visible = true;


                        btnAddSubCategory.Visible = false;
                        btnGotoSubCategory.Visible = false;
                        DetailsView3.Visible = false;
                        GridView3.Visible = true;

                        UpdatePanel9.Visible = false;


                        //FormView1.Visible = false;
                        //Label6.Visible = false;

                    }
                }
            }
        }


        protected void btnAddBrand_Click1(object sender, EventArgs e)
        {
            DetailsView1.Visible = true;
            GridView1.Visible = false;
            btnGotoBrand.Visible = true;
            btnAddBrand.Visible = false;

            UpdatePanel9.Visible = true;

            //FormView1.Visible = true;
            //Label6.Visible = true;

            ListView1.Visible = false;
        }

        protected void btnGotoBrand_Click(object sender, EventArgs e)
        {
            DetailsView1.Visible = false;
            GridView1.Visible = true;
            btnAddBrand.Visible = true;
            btnGotoBrand.Visible = false;

            UpdatePanel9.Visible = false;

            //FormView1.Visible = false;
            //Label6.Visible = false;

            ListView1.Visible = true;
        }

        protected void btnAddCategory_Click1(object sender, EventArgs e)
        {
            DetailsView2.Visible = true;
            GridView2.Visible = false;
            btnGotoCategory.Visible = true;
            btnAddCategory.Visible = false;
        }

        protected void btnGotoCategory_Click1(object sender, EventArgs e)
        {
            DetailsView2.Visible = false;
            GridView2.Visible = true;
            btnAddCategory.Visible = true;
            btnGotoCategory.Visible = false;
        }

        protected void btnAddSubCategory_Click1(object sender, EventArgs e)
        {
            DetailsView3.Visible = true;
            GridView3.Visible = false;
            btnGotoSubCategory.Visible = true;
            btnAddSubCategory.Visible = false;
        }

        protected void btnGotoSubCategory_Click1(object sender, EventArgs e)
        {
            DetailsView3.Visible = false;
            GridView3.Visible = true;
            btnAddSubCategory.Visible = true;
            btnGotoSubCategory.Visible = false;
        }


        // ------------------- LIST VIEW -->>

        private void GetListView()
        {
            string getListVew = "SELECT * FROM tblBrands";
            con.Open();
            SqlCommand cmd = new SqlCommand(getListVew, con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            ListView1.DataSource = dt;
            ListView1.DataBind();
            con.Close();

        }


    }
}