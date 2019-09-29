<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="BloodBank.AdminHome" %>



<asp:Content ID="Content1" ContentPlaceHolderID="cpMainContent" runat="server">

    <div>
        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="310px" NextPrevFormat="FullMonth" style="background-color: #339933" Width="751px" align="center">
            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
            <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
            <OtherMonthDayStyle ForeColor="#999999" />
            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
            <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
            <TodayDayStyle BackColor="#CCCCCC" />
        </asp:Calendar>
    
</div>
</asp:Content>
