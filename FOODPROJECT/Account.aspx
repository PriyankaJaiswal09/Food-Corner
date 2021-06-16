<%@ Page Title="" Language="C#" MasterPageFile="~/Homee.master" AutoEventWireup="true" CodeFile="Account.aspx.cs" Inherits="Member_Account" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <style type="text/css">
 .style3
   {
    }
 .style4
  {
   }

.auto-style1 {
    text-align: right;
    color: #fff;
    font-size: 20px;
    height: 35px;
    width: 228px;
   }
.auto-style2 {
 width: 228px;
}
 </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead" 
                style="color: #663300; background-color: #FFFFCC; font-weight: bold; font-size: medium">
                UPDATE ACCOUNT
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>      
    </table>
    <table align="center" class="style5">
                    <tr>
                        <td class="auto-style1">
                           First Name :
                        </td>
                        <td align="left">
                            <asp:TextBox ID="txtfname" runat="server" CssClass="txt" ></asp:TextBox>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                   ControlToValidate="txtfname" ErrorMessage="Please fill properly" ForeColor="Yellow" 
                                   SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                      <tr>
                        <td class="auto-style1">
                           Last Name :
                        </td>
                        <td align="left">
                            <asp:TextBox ID="txtlname" runat="server" CssClass="txt"></asp:TextBox>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                   ControlToValidate="txtlname" ErrorMessage="Please fill properly" ForeColor="Yellow" 
                                   SetFocusOnError="True"></asp:RequiredFieldValidator>
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
                           City :
                        </td>
                        <td align="left">
                           <asp:TextBox ID="txtcity" runat="server" CssClass="txt"></asp:TextBox>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                   ControlToValidate="txtcity" ErrorMessage="Please fill properly" ForeColor="Yellow" 
                                   SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                     <tr>
                        <td class="auto-style1">
                           Pincode :
                        </td>
                        <td align="left">
                           <asp:TextBox ID="txtpincode" runat="server" CssClass="txt"></asp:TextBox>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                   ControlToValidate="txtpincode" ErrorMessage="Please fill properly" ForeColor="Yellow" 
                                   SetFocusOnError="True"></asp:RequiredFieldValidator>
                               <asp:RangeValidator ID="RangeValidator2" runat="server" 
                                   ControlToValidate="txtpincode" ErrorMessage="invalid pincode" 
                                   ForeColor="Yellow" MaximumValue="999999" MinimumValue="100000" 
                                   SetFocusOnError="True" Type="Double"></asp:RangeValidator>
                        </td>
                    </tr>
                      <tr>
                        <td class="auto-style1">
                          Old Email ID :
                        </td>
                        <td align="left">
                           <asp:TextBox ID="txtoldemail" runat="server" CssClass="txt"></asp:TextBox> 
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                   ControlToValidate="txtoldemail" ErrorMessage="Please fill properly" ForeColor="Yellow" 
                                   SetFocusOnError="True"></asp:RequiredFieldValidator>
                               <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                   ControlToValidate="txtoldemail" ErrorMessage="invalid email" ForeColor="Yellow" 
                                   SetFocusOnError="True" 
                                   ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </td>
                    </tr>    
                    <tr>
                        <td class="auto-style1">
                          New Email ID :
                        </td>
                        <td align="left">
                           <asp:TextBox ID="txtemail" runat="server" CssClass="txt"></asp:TextBox> 
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                   ControlToValidate="txtemail" ErrorMessage="Please fill properly" ForeColor="Yellow" 
                                   SetFocusOnError="True"></asp:RequiredFieldValidator>
                               <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                   ControlToValidate="txtemail" ErrorMessage="invalid email" ForeColor="Yellow" 
                                   SetFocusOnError="True" 
                                   ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </td>
                    </tr>  
                <tr>   
                        <td>
                            &nbsp;</td> 
                        <td class="auto-style2">
                             <asp:Label ID="lblmsg" runat="server" ForeColor="#FFCC00"></asp:Label>
                        </td>
                    </tr>
                <tr>   
                        <td>
                            &nbsp;</td> 
                        <td class="auto-style2">
                            <asp:Button ID="submit" runat="server" CssClass="btn" Text="Update" OnClick="submit_Click"/>
                        </td>
                    </tr>
                       
                   
        </table>
</asp:Content>