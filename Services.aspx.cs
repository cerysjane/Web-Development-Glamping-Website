using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WDA2_1_
{
    public partial class Services : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            { Page.MaintainScrollPositionOnPostBack = true; }
            if (!IsPostBack)  // the first time the page loads
            {
                DataSet ds = new DataSet();
                ds.ReadXml(Server.MapPath("Activities.xml"));
                gvActivities.DataSource = ds.Tables[0];
                gvActivities.DataBind();

                Session["dsActivites"] = ds;
            }

        }

        protected void gvActivites_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void gvActivities_SelectedIndexChanged(object sender, EventArgs e)
        {
            String selectedActivityName = gvActivities.SelectedRow.Cells[1].Text;

            lblActivityOutput.Text = selectedActivityName;
            
        }//gvActivities_SelectedIndexChanged

        protected void ddlActivity_SelectedIndexChanged(object sender, EventArgs e)
        {
            DataSet ds = (DataSet)Session["dsActivites"];
            DataView dv = new DataView(ds.Tables[0]);
            //filtering
            if (ddlActivity.SelectedIndex != 0)
                dv.RowFilter = "timeOfDay like '" + ddlActivity.Text + "'";
            else
                dv.RowFilter = "timeOfDay like '*'";
            gvActivities.DataSource = dv;
            gvActivities.DataBind();

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            DataSet ds = (DataSet)Session["dsActivites"];
            DataView dv = new DataView(ds.Tables[0]);

            dv.RowFilter = "name like '" + txtSearch.Text + "%'";
            if (ddlActivity.SelectedIndex !=0)
            {
                dv.RowFilter = "name like '" + txtSearch.Text + "%' and timeOfDay = '"
                + ddlActivity.Text + "'";
            }

            gvActivities.DataSource = dv;
            gvActivities.DataBind();
        }
    }
}