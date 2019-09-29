<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/AdminMaster.Master" AutoEventWireup="true" CodeBehind="CampRegisterdList.aspx.cs" Inherits="BloodBank.Admin.CampRegisterdList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cpMainContent" runat="server">
    <div class="well well-lg text-center">
        <h1> <strong>Campaign  Registerd  List</strong>  </h1> 
    </div>
    <div class="jumbotron center-block">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:Label ID="lblName" runat="server" Text=" Registration Name : "></asp:Label>
        <asp:DropDownList ID="dropCamList" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="CRegID"></asp:DropDownList>


        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BloodDBCon %>" SelectCommand="SELECT [CRegID], [Name] FROM [CampRegistration]"></asp:SqlDataSource>

        <br />
        <br />

        <asp:UpdatePanel ID="CamPanelList" runat="server">
            <Triggers>
                <asp:AsyncPostBackTrigger  ControlID="dropCamList" EventName="SelectedIndexChanged"/>
            </Triggers>
            <ContentTemplate>
                <asp:GridView ID="grdViewCamplist" runat="server" CssClass="well well-lg text-center" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="CRegID" DataSourceID="SqlDataSource2" Width="933px">

                    <Columns>
                        <asp:BoundField DataField="CRegID" HeaderText="Registration ID" InsertVisible="False" ReadOnly="True" SortExpression="CRegID" />
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="PhoneNo" HeaderText="PhoneNo" SortExpression="PhoneNo" />
                        <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                        <asp:BoundField DataField="Message" HeaderText="Message" SortExpression="Message" />
                    </Columns>

                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BloodDBCon %>" SelectCommand="SELECT * FROM [CampRegistration] WHERE ([CRegID] = @CRegID)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="dropCamList" Name="CRegID" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</asp:Content>
