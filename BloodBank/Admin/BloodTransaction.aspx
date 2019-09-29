<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/AdminMaster.Master" AutoEventWireup="true" CodeBehind="BloodTransaction.aspx.cs" Inherits="BloodBank.Admin.BloodTransaction" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cpMainContent" runat="server">
    <%-- Blood Entry Start--%>
    <h1 class="jumbotron center-block"><strong>Donated Blood Entry</strong></h1>
    <div class="jumbotron center-block">
         <table class="table table-bordered table-striped table-condensed" runat="server">
  

    <tr>
        <td><asp:Label ID="Label1" runat="server" Text=" Donor Name : "></asp:Label></td>
        <td> 
            <asp:DropDownList ID="donorIDdropDownl" runat="server"  AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="DonorName" DataValueField="DonorID" >

            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BloodDBCon %>" SelectCommand="SELECT [DonorID], [DonorName] FROM [Donor]"></asp:SqlDataSource>
        </td>
        
        <td>
            &nbsp;
        </td>
    </tr>
              <tr>
        <td><asp:Label ID="Label5" runat="server" Text=" Blood Group : "></asp:Label></td>
        <td> 
            <asp:DropDownList ID="BldGroupDropdownl" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="BldGroupName" DataValueField="BldGroupID">

            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BloodDBCon %>" SelectCommand="SELECT [BldGroupID], [BldGroupName] FROM [BloodGroup]"></asp:SqlDataSource>
        </td>
        
        <td>
            &nbsp;
        </td>
    </tr>
  
     <tr>
        <td>
            <asp:Label ID="Label9" runat="server" Text="Donation Date : "></asp:Label>

        </td>
        <td>
            <asp:TextBox ID="txtBoxBldDonationDate" CssClass="form-control" runat="server" TextMode="Date"></asp:TextBox>
        </td>
        <td>&nbsp;
        </td>
    </tr>
          <tr>
        <td>
            <asp:Label ID="Label8" runat="server" Text="Units Of Blood : "></asp:Label>

        </td>
        <td>
            <asp:TextBox ID="txtBoxUnitsDonatedBld" CssClass="form-control" runat="server" ></asp:TextBox>
        </td>
        <td>&nbsp;
        </td>
    </tr>

   
     <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="btnDonatedBldSave" runat="server" Text="Save" OnClick="btnDonatedBldSave_Click"  BackColor="Green" ForeColor="White"/>
        </td>
        <td><asp:Label ID="lblDonatedBldMessage" runat="server" Text="Message" ForeColor="Red"></asp:Label></td>
    </tr>



</table>
</div>
    <%-- Blood Entry END--%>

   <%-- Blood Transfer Start--%>

    <h1 class="jumbotron center-block"><strong>Blood Transfer For Patient </strong></h1>
     <div class="jumbotron center-block">
         <table class="table table-bordered table-striped table-condensed" runat="server">
  

    <tr>
        <td><asp:Label ID="Label2" runat="server" Text=" Patient Name : "></asp:Label></td>
        <td> 
            <asp:DropDownList ID="PatientNamedroplist" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="PatientName" DataValueField="PatientID">

            </asp:DropDownList>
            
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:BloodDBCon %>" SelectCommand="SELECT [PatientID], [PatientName] FROM [Patient]"></asp:SqlDataSource>
            
        </td>
        
        <td>
            &nbsp;
        </td>
    </tr>
              <tr>
        <td><asp:Label ID="Label3" runat="server" Text=" Blood Group : "></asp:Label></td>
        <td> 
            <asp:DropDownList ID="patientBldGroupDrpl" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource4" DataTextField="BldGroupName" DataValueField="BldGroupName">

            </asp:DropDownList>
           
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:BloodDBCon %>" SelectCommand="SELECT [BldGroupID], [BldGroupName] FROM [BloodGroup]"></asp:SqlDataSource>
           
        </td>
        
        <td>
            &nbsp;
        </td>
    </tr>
  
     <tr>
        <td>
            <asp:Label ID="Label4" runat="server" Text="Blood Transfer Date : "></asp:Label>

        </td>
        <td>
            <asp:TextBox ID="txtBldTransferPatient" CssClass="form-control" runat="server" TextMode="Date"></asp:TextBox>
        </td>
        <td>&nbsp;
        </td>
    </tr>
          <tr>
        <td>
            <asp:Label ID="Label6" runat="server" Text="Units Of Blood : "></asp:Label>

        </td>
        <td>
            <asp:TextBox ID="txtBoxPatientUnitsofbld" CssClass="form-control" runat="server" ></asp:TextBox>
        </td>
        <td>&nbsp;
        </td>
    </tr>

   
     <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="btnSaveTransferredBld" runat="server" Text="Save" OnClick="btnSaveTransferredBld_Click"  BackColor="Green" ForeColor="White"/>
        </td>
        <td><asp:Label ID="Label7" runat="server" Text="Message" ForeColor="Red"></asp:Label></td>
    </tr>



</table>
</div> <br />

    <%-- Blood Transfer End--%>

        <%-- Blood Stock Start--%>
    <h1 class="jumbotron center-block"><strong>Blood Bank Blood Stock</strong></h1>
    <div class="jumbotron center-block">

        <div class="text-center">

        <asp:GridView ID="grdVwBloodStock" runat="server" AutoGenerateColumns="False" DataKeyNames="StockID" CellPadding="5" ForeColor="#333333" AllowPaging="True" DataSourceID="SqlDataSource5" Width="993px"  >
            <AlternatingRowStyle BackColor="White" ForeColor="#284775"  />
            <Columns>
                <asp:TemplateField HeaderText="StockID ID" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                        <asp:Label ID="lblStockID" runat="server" Text='<%#Eval("StockID") %>'></asp:Label>
                    </ItemTemplate>

<HeaderStyle HorizontalAlign="Center"></HeaderStyle>

<ItemStyle HorizontalAlign="Center"></ItemStyle>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Blood Group" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                        <asp:Label ID="lblBldstockGroup" runat="server" Text='<%#Eval("BldGroupID") %>'></asp:Label>
                    </ItemTemplate>

<HeaderStyle HorizontalAlign="Center"></HeaderStyle>

<ItemStyle HorizontalAlign="Center"></ItemStyle>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Units" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                        <asp:Label ID="lblTotalUnits" runat="server" Text='<%#Eval("TotalUnits") %>'></asp:Label>
                    </ItemTemplate>

<HeaderStyle HorizontalAlign="Center"></HeaderStyle>

<ItemStyle HorizontalAlign="Center"></ItemStyle>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Status" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                        <asp:Label ID="lblStatusStock" runat="server" Text='<%#Eval("Status") %>'></asp:Label>
                    </ItemTemplate>

<HeaderStyle HorizontalAlign="Center"></HeaderStyle>

<ItemStyle HorizontalAlign="Center"></ItemStyle>
                </asp:TemplateField>
                                        
            </Columns>
        </asp:GridView>

        </div>
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:BloodDBCon %>" SelectCommand="SELECT * FROM [StockBlood]"></asp:SqlDataSource>

    </div>
     <%-- Blood Stock Start--%>
</asp:Content>
