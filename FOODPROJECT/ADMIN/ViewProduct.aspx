<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Home.master" AutoEventWireup="true" CodeFile="ViewProduct.aspx.cs" Inherits="ADMIN_ViewProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 902px;
        }
        .style3
        {
            width: 161px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead">
                VIEW PRODUCT -
               <asp:Label ID="lbl" runat="server"></asp:Label> 
            </td>
        </tr>
        <tr>
            <td>
                <table class="style2">
                    <tr>
                        <td class="style3">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style3">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="PID" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" Height="85px" Width="937px" AllowPaging="True">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ButtonType="Button">
                                    <ControlStyle BackColor="#CC9900" BorderColor="#FFCC66" BorderStyle="Dashed" Font-Bold="True" Font-Italic="False" ForeColor="White" />
                                    </asp:CommandField>
                                    <asp:BoundField DataField="PID" HeaderText="PID" InsertVisible="False" ReadOnly="True" SortExpression="PID" />
                                    <asp:TemplateField HeaderText="Image">
                                        <ItemTemplate>
                                            <asp:Image ID="imgg" runat="server" ImageUrl='<%#Eval("Image") %>'  Height="40px" Width="40px" />
                                            </ItemTemplate>
                                        <ControlStyle BorderColor="#FFCC00" BorderStyle="Dashed" />
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="PName" HeaderText="PName" SortExpression="PName" />
                                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                                    <asp:BoundField DataField="Detail" HeaderText="Detail" SortExpression="Detail" />
                                    <asp:BoundField DataField="Cname" HeaderText="Cname" SortExpression="Cname" />
                                </Columns>
                                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                                <SelectedRowStyle BackColor="#FFCC66" ForeColor="Navy" Font-Bold="True" />
                                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                                <SortedDescendingHeaderStyle BackColor="#820000" />
                            </asp:GridView>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FOODSYSTEMConnectionString %>" DeleteCommand="DELETE FROM [ProductMst] WHERE [PID] = @PID" InsertCommand="INSERT INTO [ProductMst] ([Image], [PName], [Price], [Detail], [Cname]) VALUES (@Image, @PName, @Price, @Detail, @Cname)" SelectCommand="SELECT [PID], [Image], [PName], [Price], [Detail], [Cname] FROM [ProductMst]" UpdateCommand="UPDATE [ProductMst] SET [PName] = @PName, [Price] = @Price, [Detail] = @Detail, [Cname] = @Cname WHERE [PID] = @PID">
                    <DeleteParameters>
                        <asp:Parameter Name="PID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Image" Type="String" />
                        <asp:Parameter Name="PName" Type="String" />
                        <asp:Parameter Name="Price" Type="Double" />
                        <asp:Parameter Name="Detail" Type="String" />
                        <asp:Parameter Name="Cname" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
           
                        <asp:Parameter Name="PName" Type="String" />
                        <asp:Parameter Name="Price" Type="Double" />
                        <asp:Parameter Name="Detail" Type="String" />
                        <asp:Parameter Name="Cname" Type="String" />
                        <asp:Parameter Name="PID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

