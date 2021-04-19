using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdventureWork.Web.Presentacion
{
    public partial class Departments : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void lbInsert_Click(object sender, EventArgs e)
        {
            dsDeparments.InsertParameters["Name"].DefaultValue =
                   ((TextBox)GridView1.FooterRow.FindControl("txtName")).Text;
            dsDeparments.InsertParameters["GroupName"].DefaultValue =
                   ((TextBox)GridView1.FooterRow.FindControl("txtGroupName")).Text;
            dsDeparments.InsertParameters["ModifiedDate"].DefaultValue = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
            dsDeparments.Insert();
        }
        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                Control control = e.Row.Cells[0].Controls[2];
                if (control is LinkButton)
                {
                    if (((LinkButton)control).Text == "Delete")
                    {
                        ((LinkButton)control).OnClientClick = 
                            "return confirm('¿Estás seguro de eliminar el departamento?')";

                    }
                }
            }
        }
    }
}