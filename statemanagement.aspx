<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="statemanagement.aspx.cs" Inherits="WebApplication1.statemanagement" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        1)view state example<br/>
        <asp:TextBox ID="tb1" runat="server" OnTextChanged="tb1_TextChanged"></asp:TextBox>
        <asp:Label ID="lblview" runat="server"></asp:Label><br/><br/><br/><br/>
        
        2) hidden field example<br />
        <asp:HiddenField ID="HiddenField2" runat="server" />
        <asp:Button ID="Button1" runat="server" Text="store hidden value" OnClick="Button1_Click" />
        <asp:Label ID="lblhidden" runat="server"></asp:Label>
        <br/><br/><br/><br/>

        3)cookie example<br />
        <asp:TextBox ID="tb2" runat="server"></asp:TextBox>
        <asp:Button ID="Button6" runat="server" Text="create cookie" OnClick="Button6_Click" />
        <asp:Button ID="Button7" runat="server" Text="read cookie" OnClick="Button7_Click" />
        <asp:Label ID="lblcookie" runat="server"></asp:Label>
        <br /><br /><br /><br />
        4)query string example<br />
        <asp:TextBox ID="tb3" runat="server"></asp:TextBox>
        <asp:Button ID="Button8" runat="server" Text="send via query string" />
        <asp:Label ID="querylbl" runat="server" Visible="False"></asp:Label>
    </div>

    <br />
</form>
</body>
</html>
