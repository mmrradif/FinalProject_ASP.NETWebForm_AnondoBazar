using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Web;
using CrystalDecisions.ReportSource;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CrystalDecisions.Shared;

namespace AnondoBazar
{
    public partial class frmReport : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=aspProject;Integrated Security=True");

        

        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void btnLoadReport_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select * from tblEmployee", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);

            ReportDocument crp = new ReportDocument();
            crp.Load(Server.MapPath("employeeReport.rpt"));
            crp.SetDataSource(ds.Tables["tables"]);

            CrystalReportViewer1.ReportSource = crp;

            crp.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "Employee Report");
        }

        protected void btnLoadMenu_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select * from tblRole ", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);

            ReportDocument crp = new ReportDocument();
            crp.Load(Server.MapPath("menuReport.rpt"));
            crp.SetDataSource(ds.Tables["tables"]);

            CrystalReportViewer2.ReportSource = crp;

            crp.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "Menu Report");
        }

        protected void btnGruopLoad_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select * from tblDynamicMenu ", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);

            ReportDocument crp = new ReportDocument();
            crp.Load(Server.MapPath("groupReport.rpt"));
            crp.SetDataSource(ds.Tables["tables"]);

            CrystalReportViewer3.ReportSource = crp;

            crp.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "Group Report");
        }
    }
}