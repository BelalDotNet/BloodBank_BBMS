<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/AdminMaster.Master" AutoEventWireup="true" CodeBehind="RoleManageMent.aspx.cs" Inherits="BloodBank.Management.RoleManageMent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cpMainContent" runat="server">
     <br /> 
    <br /> 
    <br /> 
    <h1>Role Management</h1>
    <div class="container">
    <div class="row">
        <div class="col-sm-12 table-responsive">
            <h2>Users List</h2>
            <asp:GridView ID="grdUsers" runat="server" DataKeyNames="Id" AutoGenerateColumns="false" SelectMethod="grdUsers_GetData" ItemType="BloodBank.Models.ApplicationUser" CssClass="table table-bordered table-condensed table-striped" OnPreRender="grdUsers_PreRender">
                <Columns>
                    <asp:BoundField HeaderText="User Name" DataField="UserName" />
                    <asp:BoundField HeaderText="Email" DataField="Email" />
                    <asp:TemplateField HeaderText="Roles">
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%# ListRoles(Item.Roles) %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ShowSelectButton="true"  />
                </Columns>
            </asp:GridView>
        </div>
        <div class="col-sm-6">
            <asp:DetailsView ID="dvUsers" runat="server" DataKeyNames="Id" AutoGenerateRows="false" CssClass="table table-bordered table-condensed table-striped" SelectMethod="dvUsers_GetItem" UpdateMethod="dvUsers_UpdateItem" InsertMethod="dvUsers_InsertItem" DeleteMethod="dvUsers_DeleteItem" >
                <Fields>
                    <asp:BoundField HeaderText="Email" DataField="Email"/>
                    <asp:CommandField ShowEditButton="true" ShowDeleteButton="true" ShowCancelButton="true" ShowInsertButton="true" />
                </Fields>
            </asp:DetailsView>
        </div>

    </div>
    <div class="row">
        <div class="col-sm-6">
            <h2>Roles List</h2>
            <asp:GridView ID="drdRoles" runat="server" AutoGenerateColumns="false" DataKeyNames="Id" SelectMethod="drdRoles_GetData" CssClass="table table-bordered table-condensed table-striped" OnPreRender="drdRoles_PreRender">
                <columns>
                    <asp:BoundField HeaderText="Role Name" DataField="Name" />
                    <asp:CommandField ShowSelectButton="true" ShowEditButton="true" ShowCancelButton="true" ShowDeleteButton="true" />
                </columns>
            </asp:GridView>
            <asp:DetailsView ID="dvRoles" runat="server" AutoGenerateRows="false" DataKeyNames="Id" CssClass="table table-bordered table-condensed table-striped" SelectMethod="dvRoles_GetItem" UpdateMethod="dvRoles_UpdateItem" DeleteMethod="dvRoles_DeleteItem" InsertMethod="dvRoles_InsertItem">
                <Fields>
                    <asp:BoundField HeaderText="Role Name" DataField="Name" />
                    <asp:CommandField ShowEditButton="true" ShowDeleteButton="true" ShowInsertButton="true" ShowCancelButton="true" ShowSelectButton="true" />
                </Fields>
            </asp:DetailsView>
        </div>
        <div class="col-sm-6">
            <h2>Add Roles to User</h2>
            <div class="form-group">
                <label class="control-label">Select User : </label>
                <asp:DropDownList ID="ddlUsers" runat="server" SelectMethod="grdUsers_GetData" DataValueField="Id" DataTextField="UserName" CssClass="form-control">

                </asp:DropDownList>
            </div>
            <div class="form-group">
                <label class="control-label">Add one or more roles : </label>
                <asp:ListBox ID="lstRoles" runat="server" SelectionMode="Multiple" SelectMethod="drdRoles_GetData" DataTextField="Name" DataValueField="Id" CssClass="form-control" >

                </asp:ListBox>
            </div>
            <div class="form-group">
                <asp:Button ID="btnAddRoles" runat="server" Text="Add Roles" CssClass="btn btn-default" OnClick="btnAddRoles_Click" />
            </div>
        </div>
    </div>
    </div>
</asp:Content>
