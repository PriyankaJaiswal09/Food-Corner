<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            USERNAME:<asp:TextBox ID="username" runat="server"></asp:TextBox><br />
            Password:<asp:TextBox ID="password" runat="server"></asp:TextBox><br />
            <asp:CheckBox ID="checkb" runat="server" />Remember me<br />
            <asp:Button ID="Button1" runat="server" Text="submit" OnClick="Button1_Click" />
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
