<%@ Page Title="" Language="C#" EnableEventValidation="false" MasterPageFile="~/MasterPages/AdminMaster.Master" AutoEventWireup="true" CodeBehind="BloodRequestManagement.aspx.cs" Inherits="BloodBank.Admin.BloodRequestManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cpMainContent" runat="server">
    <h1 class="jumbotron center-block"><strong>List Of Blood Request</strong></h1>


      <div class="jumbotron center-block" style="text-align: center" >


            <asp:GridView ID="grdBldRequest" runat="server" AutoGenerateColumns="False" DataKeyNames="BldRequestID" CellPadding="5" ForeColor="#333333" Width="1022px" >
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:TemplateField HeaderText="Blood Request ID" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                <ItemTemplate>
                    <asp:Label ID="lblBldRequestID" runat="server" Text='<%#Eval("BldRequestID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Patient Name" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                <ItemTemplate>
                    <asp:Label ID="lblPatientName" runat="server" Text='<%#Eval("PatientName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Phone No" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                <ItemTemplate>
                    <asp:Label ID="lblPhone" runat="server" Text='<%#Eval("Phone") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Request Date" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                <ItemTemplate>
                    <asp:Label ID="lblRequestDate" runat="server" Text='<%#Eval("RequestDate") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Requested Blood" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                <ItemTemplate>
                    <asp:Label ID="lblRequestedBlood" runat="server" Text='<%#Eval("RequestedBlood") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Uints Of Blood" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                <ItemTemplate>
                    <asp:Label ID="lblUnitsofBlood" runat="server" Text='<%#Eval("UnitsOfBlood") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Region" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                <ItemTemplate>
                    <asp:Label ID="lblRegion" runat="server" Text='<%#Eval("Region") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>


      
            <asp:TemplateField HeaderText="Delete" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                <ItemTemplate>
                    <asp:Button ID="btnDelete" runat="server" BackColor="Red" ForeColor="White" Text="Delete" OnCommand="btnDelete_Command" CommandArgument='<%#Eval("BldRequestID") %>'
                     ToolTip="Delete" OnClientClick="return confirm('Are you sure you want to delete?')" />

                </ItemTemplate>

            </asp:TemplateField>



        </Columns>
    
 </asp:GridView>
       
    </div>
</asp:Content>
