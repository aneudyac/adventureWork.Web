using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdventureWork.Web2
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            dsEmployees.InsertParameters["BusinessEntityID"].DefaultValue   = ddlBusinessEntityID.SelectedValue;
            dsEmployees.InsertParameters["NationalIDNumber"].DefaultValue   = txtNationalIDNumber.Text;
            dsEmployees.InsertParameters["LoginID"].DefaultValue            = txtLoginID.Text;
            dsEmployees.InsertParameters["JobTitle"].DefaultValue           = txtJobTitle.Text;
            dsEmployees.InsertParameters["BirthDate"].DefaultValue          = txtBirthDate.Text;
            dsEmployees.InsertParameters["MaritalStatus"].DefaultValue      = ddlMaritalStatus.SelectedValue;
            dsEmployees.InsertParameters["Gender"].DefaultValue             = ddlGender.SelectedValue;
            dsEmployees.InsertParameters["HireDate"].DefaultValue           = DateTime.Now.ToString("yyyy-MM-dd");
            dsEmployees.InsertParameters["SalariedFlag"].DefaultValue       = false.ToString();
            dsEmployees.InsertParameters["VacationHours"].DefaultValue      = txtVacationHours.Text;
            dsEmployees.InsertParameters["SickLeaveHours"].DefaultValue     = txtSickLeaveHours.Text;
            dsEmployees.InsertParameters["CurrentFlag"].DefaultValue        = false.ToString();
            dsEmployees.InsertParameters["rowguid"].DefaultValue            = Guid.NewGuid().ToString();
            dsEmployees.InsertParameters["ModifiedDate"].DefaultValue       = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
            dsEmployees.Insert();

            ddlBusinessEntityID.SelectedValue = "";
            txtNationalIDNumber.Text = "";
            txtLoginID.Text = "";
            txtJobTitle.Text = "";
            txtBirthDate.Text = "";
            ddlMaritalStatus.SelectedValue = "";
            ddlGender.SelectedValue = "";
            txtVacationHours.Text ="";
            txtSickLeaveHours.Text ="";
            //<asp:Parameter Name="BusinessEntityID" Type="Int32" />
            //    <asp:Parameter Name="NationalIDNumber" Type="String" />
            //    <asp:Parameter Name="LoginID" Type="String" />
            //    <asp:Parameter Name="JobTitle" Type="String" />
            //    <asp:Parameter DbType="Date" Name="BirthDate" />
            //    <asp:Parameter Name="MaritalStatus" Type="String" />
            //    <asp:Parameter Name="Gender" Type="String" />
            //    <asp:Parameter DbType="Date" Name="HireDate" />
            //    <asp:Parameter Name="SalariedFlag" Type="Boolean" />
            //    <asp:Parameter Name="VacationHours" Type="Int16" />
            //    <asp:Parameter Name="SickLeaveHours" Type="Int16" />
            //    <asp:Parameter Name="CurrentFlag" Type="Boolean" />
            //    <asp:Parameter Name="rowguid" Type="String" />
            //    <asp:Parameter Name="ModifiedDate" Type="DateTime" />
        }
    }
}