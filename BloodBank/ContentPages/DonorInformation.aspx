<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MyMasterPage.Master" AutoEventWireup="true" CodeBehind="DonorInformation.aspx.cs" Inherits="BloodBank.DonorInformation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cpMainContent" runat="server">
    
    <div style="margin-left: 40px">
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="RegID" DataSourceID="SqlDataSource1" GridLines="Horizontal" style="background-color: #CCCCCC" Width="580px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="RegID" HeaderText="RegID" InsertVisible="False" ReadOnly="True" SortExpression="RegID" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="PhoneNo" HeaderText="PhoneNo" SortExpression="PhoneNo" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#487575" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#275353" />
        </asp:GridView>
    </div>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BloodDBCon %>" DeleteCommand="DELETE FROM [Registration] WHERE [RegID] = @RegID" InsertCommand="INSERT INTO [Registration] ([Name], [Email], [PhoneNo], [Address]) VALUES (@Name, @Email, @PhoneNo, @Address)" SelectCommand="SELECT * FROM [Registration]" UpdateCommand="UPDATE [Registration] SET [Name] = @Name, [Email] = @Email, [PhoneNo] = @PhoneNo, [Address] = @Address WHERE [RegID] = @RegID">
        <DeleteParameters>
            <asp:Parameter Name="RegID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="PhoneNo" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="PhoneNo" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="RegID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />



</asp:Content>
