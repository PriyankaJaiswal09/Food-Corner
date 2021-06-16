<%@ Page Title="" Language="C#" MasterPageFile="~/Homee.master" AutoEventWireup="true" CodeFile="Payment.aspx.cs" Inherits="Member_Payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"> 
    
 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead" colspan="3"  style="color: #663300; background-color: #FFFFCC; font-weight: bold; font-size: medium">
                            Shipping Address And Payment</td>
        </tr>
        <tr>
            <td class="style3">
                            &nbsp;</td>
            <td class="style4">
                            &nbsp;</td>
            <td>
                            &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">                         
                            &nbsp;</td>
            <td class="style4" colspan="2">
        </tr>
                <table align="center" class="style5">
                    <tr>
                        <td class="auto-style1">
                            Name :
                        </td>
                        <td align="left">
                            <asp:TextBox ID="txtname" runat="server" CssClass="txt"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                   ControlToValidate="txtname" ErrorMessage="Please fill properly" ForeColor="Yellow" 
                                   SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                           Email :
                        </td>
                        <td align="left">
                           <asp:TextBox ID="txtemail" runat="server" CssClass="txt"></asp:TextBox> 
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                   ControlToValidate="txtemail" ErrorMessage="Please fill properly" ForeColor="Yellow" 
                                   SetFocusOnError="True"></asp:RequiredFieldValidator>
                               <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                   ControlToValidate="txtemail" ErrorMessage="Invalid email" ForeColor="Yellow" 
                                   SetFocusOnError="True" 
                                   ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                           Mobile no :
                        </td>
                        <td align="left">
                           <asp:TextBox ID="txtmobile" runat="server" CssClass="txt"></asp:TextBox> 
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                   ControlToValidate="txtmobile" ErrorMessage="Please fill properly" ForeColor="Yellow" 
                                   SetFocusOnError="True"></asp:RequiredFieldValidator>
                               <asp:RangeValidator ID="RangeValidator1" runat="server" 
                                   ControlToValidate="txtmobile" ErrorMessage="Invalid mobile" ForeColor="Yellow" 
                                   MaximumValue="9999999999" MinimumValue="1000000000" SetFocusOnError="True" 
                                   Type="Double"></asp:RangeValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                           Address :
                        </td>
                        <td align="left">
                           <asp:TextBox ID="txtadd" runat="server" CssClass="txt"></asp:TextBox> 
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                   ControlToValidate="txtadd" ErrorMessage="Please fill properly" ForeColor="Yellow" 
                                   SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                           Payment Type :
                        </td>
                        <td align="left">
                            <asp:DropDownList ID="COD" runat="server" CssClass="txt" 
                                ForeColor="#006600" Height="27px" Width="205px">
                         <asp:ListItem Value="Cash">Cash on delivery</asp:ListItem>                  
                      </asp:DropDownList>
                        </td>
                    </tr>
                    
                      <tr>   
                        <td>
                            &nbsp;</td>
                          
                        <td class="auto-style2">
                            <asp:Button ID="submit" runat="server" CssClass="btn" Text="Submit" OnClick="submit_Click1" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">                         
                            &nbsp;</td>
                        <td class="style4" colspan="2">
                    </tr>
                    <tr>
                        <td class="style3">                         
                            &nbsp;</td>
                        <td class="style4" colspan="2">
                    </tr>
                    <tr>
                      <td class="auto-style1">
                           Note :
                        </td>
                         <td class="auto-style1">
                           The Amount details and Order Bill you will get with your Order.
                        </td>
                    </tr>

                    </table>
            
</asp:Content>

