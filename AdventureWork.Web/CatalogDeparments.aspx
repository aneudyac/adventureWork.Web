<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CatalogDeparments.aspx.cs" Inherits="AdventureWork.Web.CatalogDeparments" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="DepartmentID" DataSourceID="dsDeparments">
            <Columns>
                <asp:BoundField DataField="DepartmentID" HeaderText="DepartmentID" InsertVisible="False" ReadOnly="True" SortExpression="DepartmentID" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="GroupName" HeaderText="GroupName" SortExpression="GroupName" />
                <asp:BoundField DataField="ModifiedDate" HeaderText="ModifiedDate" SortExpression="ModifiedDate" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="dsDeparments" runat="server" ConnectionString="<%$ ConnectionStrings:dbConn %>" SelectCommand="exec HumanResources.spGetDepartments 0"></asp:SqlDataSource>
    </form>
</body>
</html>
