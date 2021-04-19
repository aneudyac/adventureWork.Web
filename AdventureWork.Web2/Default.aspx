<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AdventureWork.Web2._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <br />
    <h3>Nuevo Empleado</h3>
    <br />
    <div class="container nuevo">
        <div class="row">
            <div class="col-sm-12 col-md-6">
                <asp:Label ID="lblBusinessEntityID" runat="server" Text="BusinessEntityID"></asp:Label>
                <asp:DropDownList ID="ddlBusinessEntityID" runat="server" DataSourceID="dsPersons" DataTextField="FullName" DataValueField="BusinessEntityID"></asp:DropDownList>
                <asp:SqlDataSource ID="dsPersons" runat="server" ConnectionString="<%$ ConnectionStrings:Conn %>" SelectCommand="SELECT top 10 p.BusinessEntityID, COALESCE (p.FirstName, '') + ' ' + COALESCE (p.LastName, '') AS FullName FROM Person.Person AS p LEFT OUTER JOIN HumanResources.Employee AS e ON e.BusinessEntityID = p.BusinessEntityID WHERE (e.BusinessEntityID IS NULL)"></asp:SqlDataSource>
            </div>
            <div class="col-sm-12 col-md-6">
                <asp:Label ID="lblNationalIDNumber" runat="server" Text="NationalIDNumber"></asp:Label>
                <asp:TextBox ID="txtNationalIDNumber" runat="server"></asp:TextBox>                
            </div>
            <div class="col-sm-12 col-md-6">
                <asp:Label ID="lblLoginID" runat="server" Text="LoginID"></asp:Label>
                <asp:TextBox ID="txtLoginID" runat="server"></asp:TextBox>                
            </div> 
            <div class="col-sm-12 col-md-6">
                <asp:Label ID="lblJobTitle" runat="server" Text="JobTitle"></asp:Label>
                <asp:TextBox ID="txtJobTitle" runat="server"></asp:TextBox>                
            </div>
            <div class="col-sm-12 col-md-6">
                <asp:Label ID="lblBirthDate" runat="server" Text="BirthDate"></asp:Label>
                <asp:TextBox ID="txtBirthDate" runat="server"></asp:TextBox>                
            </div>
            <div class="col-sm-12 col-md-6">
                <asp:Label ID="lblMaritalStatus" runat="server" Text="MaritalStatus"></asp:Label>
                <asp:DropDownList ID="ddlMaritalStatus" runat="server">
                    <asp:ListItem>Select Status</asp:ListItem>
                    <asp:ListItem>M</asp:ListItem>
                    <asp:ListItem>S</asp:ListItem>
                </asp:DropDownList>
            </div>

            <div class="col-sm-12 col-md-6">
                <asp:Label ID="lblGender" runat="server" Text="Gender"></asp:Label>
                <asp:DropDownList ID="ddlGender" runat="server">
                    <asp:ListItem>Select Gender</asp:ListItem>
                    <asp:ListItem>M</asp:ListItem>
                    <asp:ListItem>F</asp:ListItem>
                </asp:DropDownList>        
            </div>
           
           
            <div class="col-sm-12 col-md-6">
                <asp:Label ID="lblVacationHours" runat="server" Text="VacationHours"></asp:Label>
                <asp:TextBox ID="txtVacationHours" runat="server"></asp:TextBox> 
                <label>Máximo 240 horas</label>
            </div>
            <div class="col-sm-12 col-md-6">
                <asp:Label ID="lblSickLeaveHours" runat="server" Text="SickLeaveHours"></asp:Label>
                <asp:TextBox ID="txtSickLeaveHours"  runat="server"></asp:TextBox>     
                <label>Máximo 120 horas</label>
            </div>
  
        </div>
        <div class="row">
            <div class="col-12">
                <asp:Button ID="btnGuardar" runat="server" Text="Guardar" OnClick="btnGuardar_Click" />
            </div>
        </div>
    </div>
        <br />
        <br />
<%--    

BusinessEntityID
--NationalIDNumber
--LoginID
--JobTitle
--BirthDate
--MaritalStatus
--Gender
--HireDate
--SalariedFlag
--VacationHours
--SickLeaveHours
--CurrentFlag
rowguid
ModifiedDate--%>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="dsEmployees" AllowPaging="True" AllowSorting="True" DataKeyNames="BusinessEntityID">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        <asp:TemplateField HeaderText="BusinessEntityID" SortExpression="BusinessEntityID">
            <EditItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("BusinessEntityID") %>'></asp:Label>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Bind("BusinessEntityID") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="NationalIDNumber" SortExpression="NationalIDNumber">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("NationalIDNumber") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label2" runat="server" Text='<%# Bind("NationalIDNumber") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="LoginID" SortExpression="LoginID">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("LoginID") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label3" runat="server" Text='<%# Bind("LoginID") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="JobTitle" SortExpression="JobTitle">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("JobTitle") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label4" runat="server" Text='<%# Bind("JobTitle") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="BirthDate" SortExpression="BirthDate">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("BirthDate") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label5" runat="server" Text='<%# Bind("BirthDate") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="MaritalStatus" SortExpression="MaritalStatus">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("MaritalStatus") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label6" runat="server" Text='<%# Bind("MaritalStatus") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Gender" SortExpression="Gender">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Gender") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label7" runat="server" Text='<%# Bind("Gender") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="HireDate" SortExpression="HireDate">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("HireDate") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label8" runat="server" Text='<%# Bind("HireDate") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="SalariedFlag" SortExpression="SalariedFlag">
            <EditItemTemplate>
                <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("SalariedFlag") %>' />
            </EditItemTemplate>
            <ItemTemplate>
                <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("SalariedFlag") %>' Enabled="false" />
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="VacationHours" SortExpression="VacationHours">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("VacationHours") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label9" runat="server" Text='<%# Bind("VacationHours") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="SickLeaveHours" SortExpression="SickLeaveHours">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("SickLeaveHours") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label10" runat="server" Text='<%# Bind("SickLeaveHours") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="CurrentFlag" SortExpression="CurrentFlag">
            <EditItemTemplate>
                <asp:CheckBox ID="CheckBox2" runat="server" Checked='<%# Bind("CurrentFlag") %>' />
            </EditItemTemplate>
            <ItemTemplate>
                <asp:CheckBox ID="CheckBox2" runat="server" Checked='<%# Bind("CurrentFlag") %>' Enabled="false" />
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="rowguid" SortExpression="rowguid">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox10" runat="server" Text='<%# Bind("rowguid") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label11" runat="server" Text='<%# Bind("rowguid") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="ModifiedDate" SortExpression="ModifiedDate">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox11" runat="server" Text='<%# Bind("ModifiedDate") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label12" runat="server" Text='<%# Bind("ModifiedDate") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="dsEmployees" runat="server" 
    ConnectionString="<%$ ConnectionStrings:Conn %>" 
    DeleteCommand="DELETE FROM [HumanResources].[Employee] WHERE [BusinessEntityID] = @BusinessEntityID" 
    InsertCommand="INSERT INTO [HumanResources].[Employee] ([BusinessEntityID], [NationalIDNumber], [LoginID], [JobTitle], [BirthDate], [MaritalStatus], [Gender], [HireDate], [SalariedFlag], [VacationHours], [SickLeaveHours], [CurrentFlag], [rowguid], [ModifiedDate]) VALUES (@BusinessEntityID, @NationalIDNumber, @LoginID, @JobTitle, @BirthDate, @MaritalStatus, @Gender, @HireDate, @SalariedFlag, @VacationHours, @SickLeaveHours, @CurrentFlag, @rowguid, @ModifiedDate)"
    UpdateCommand="UPDATE [HumanResources].[Employee] SET [NationalIDNumber] = @NationalIDNumber, [LoginID] = @LoginID, [JobTitle] = @JobTitle, [BirthDate] = @BirthDate, [MaritalStatus] = @MaritalStatus, [Gender] = @Gender, [HireDate] = @HireDate, [SalariedFlag] = @SalariedFlag, [VacationHours] = @VacationHours, [SickLeaveHours] = @SickLeaveHours, [CurrentFlag] = @CurrentFlag, [rowguid] = @rowguid, [ModifiedDate] = @ModifiedDate WHERE [BusinessEntityID] = @BusinessEntityID"
    SelectCommand="SELECT BusinessEntityID
        ,NationalIDNumber
        ,LoginID
        ,JobTitle
        ,BirthDate
        ,MaritalStatus
        ,Gender
        ,HireDate
        ,SalariedFlag
        ,VacationHours
        ,SickLeaveHours
        ,CurrentFlag
        ,rowguid
        ,ModifiedDate 
    FROM [HumanResources].[Employee]" 
    >
    <DeleteParameters>
        <asp:Parameter Name="BusinessEntityID" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="BusinessEntityID" Type="Int32" />
        <asp:Parameter Name="NationalIDNumber" Type="String" />
        <asp:Parameter Name="LoginID" Type="String" />
        <asp:Parameter Name="JobTitle" Type="String" />
        <asp:Parameter DbType="Date" Name="BirthDate" />
        <asp:Parameter Name="MaritalStatus" Type="String" />
        <asp:Parameter Name="Gender" Type="String" />
        <asp:Parameter DbType="Date" Name="HireDate" />
        <asp:Parameter Name="SalariedFlag" Type="Boolean" />
        <asp:Parameter Name="VacationHours" Type="Int16" />
        <asp:Parameter Name="SickLeaveHours" Type="Int16" />
        <asp:Parameter Name="CurrentFlag" Type="Boolean" />
        <asp:Parameter Name="rowguid" Type="String" />
        <asp:Parameter Name="ModifiedDate" Type="DateTime" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="NationalIDNumber" Type="String" />
        <asp:Parameter Name="LoginID" Type="String" />
        <asp:Parameter Name="JobTitle" Type="String" />
        <asp:Parameter DbType="Date" Name="BirthDate" />
        <asp:Parameter Name="MaritalStatus" Type="String" />
        <asp:Parameter Name="Gender" Type="String" />
        <asp:Parameter DbType="Date" Name="HireDate" />
        <asp:Parameter Name="SalariedFlag" Type="Boolean" />
        <asp:Parameter Name="VacationHours" Type="Int16" />
        <asp:Parameter Name="SickLeaveHours" Type="Int16" />
        <asp:Parameter Name="CurrentFlag" Type="Boolean" />
        <asp:Parameter Name="rowguid" Type="String" />
        <asp:Parameter Name="ModifiedDate" Type="DateTime" />
        <asp:Parameter Name="BusinessEntityID" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
    
</asp:Content>
