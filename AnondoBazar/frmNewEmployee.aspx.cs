using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AnondoBazar
{
    public partial class frmNewEmployee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            TextBox tx = DetailsView1.FindControl("TextBox2") as TextBox;

            DateTime d = Convert.ToDateTime(tx.Text);
            if (d > DateTime.Today)
            {
                args.IsValid = false;
            }
            else
            {
                args.IsValid = true;
            }
        }

        protected void DetailsView1_ItemInserting(object sender, DetailsViewInsertEventArgs e)
        {
            FileUpload fileUpload = DetailsView1.FindControl("PictureFileUpload") as FileUpload;
            if (fileUpload.HasFile)
            {
                string fileName = Guid.NewGuid() + "_" + Path.GetExtension(fileUpload.FileName);
                fileUpload.PostedFile.SaveAs(Server.MapPath("~/Images/") + fileName);
                e.Values["employeePicture"] = fileName;
            }
        }

        protected void DetailsView1_ItemUpdating(object sender, DetailsViewUpdateEventArgs e)
        {
            FileUpload fileUpload = DetailsView1.FindControl("PictureFileUpload2") as FileUpload;
            if (fileUpload.HasFile)
            {
                string fileName = Guid.NewGuid() + "_" + Path.GetExtension(fileUpload.FileName);
                fileUpload.PostedFile.SaveAs(Server.MapPath("~/Images/") + fileName);
                e.NewValues["employeePicture"] = fileName;
            }
        }
    }
}