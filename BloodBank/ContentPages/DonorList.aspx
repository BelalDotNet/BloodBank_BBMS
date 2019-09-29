<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MyMasterPage.Master" AutoEventWireup="true" CodeBehind="DonorList.aspx.cs" Inherits="BloodBank.ContentPages.DoneorList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">
    <h2 class="jumbotron center-block">Blood Donor List Of <strong>Bondon Blood Bank</strong></h2>
   <asp:GridView ID="grdViewDonorList" CssClass="well well-lg text-center" runat="server" AutoGenerateColumns="False" DataKeyNames="DonorID" CellPadding="10" ForeColor="#333333" DataSourceID="DonorListDBSource" Width="1130px">
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                <Columns>
                                     <asp:TemplateField HeaderText="Donor ID" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                                        <ItemTemplate>
                                            <asp:Label ID="lblDonor" runat="server" Text='<%#Eval("DonorID") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Name" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                                        <ItemTemplate>
                                            <asp:Label ID="lblName" runat="server" Text='<%#Eval("DonorName") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Gender" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                                        <ItemTemplate>
                                            <asp:Label ID="lblGender" runat="server" Text='<%#Eval("Gender") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Date Of Birth" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                                        <ItemTemplate>
                                            <asp:Label ID="lblDob" runat="server" Text='<%#Eval("DOB") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Blood Group" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                                        <ItemTemplate>
                                            <asp:Label ID="lblBloolGroup" runat="server" Text='<%#Eval("BloodGroup") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Email Address" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                                        <ItemTemplate>
                                            <asp:Label ID="lblEmail" runat="server" Text='<%#Eval("Email") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Phone No." ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                                        <ItemTemplate>
                                            <asp:Label ID="lblPhone" runat="server" Text='<%#Eval("PhoneNo") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Picture" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                                        <ItemTemplate>
                                           <asp:Image runat="server" Width="100" Height="100" ID="donorPhotoGrid" ImageUrl='<%# "~/Uploads/"+ Eval("Photo") %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                     <asp:TemplateField HeaderText="Contact Address" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                                        <ItemTemplate>
                                            <asp:Label ID="lblContactAddress" runat="server" Text='<%#Eval("ContactAddress") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                  

                                  
                                </Columns>
 </asp:GridView>
    <asp:SqlDataSource ID="DonorListDBSource" runat="server" ConnectionString="<%$ ConnectionStrings:BloodDBCon %>" SelectCommand="SELECT * FROM [Donor]"></asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
