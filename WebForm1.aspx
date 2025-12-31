<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
                   <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
           <asp:View ID="View1" runat="server">
               hi this from view 1<br />
               <asp:Button ID="nextbtn" runat="server" OnClick="nextbtn_Click" Text="next" />
           </asp:View>
           <asp:View ID="View2" runat="server">
               this is second view<br />
               <asp:Button ID="pbtn" runat="server" Text="previous" OnClick="pbtn_Click" />
               <asp:Button ID="btnnext" runat="server" Text="next" OnClick="btnnext_Click" />
           </asp:View>
            <asp:View ID="View3" runat="server">
    this is third view<br />
    <asp:Button ID="Button2" runat="server" Text="previous" OnClick="Button2_Click1" />
</asp:View>
       </asp:MultiView>
        </div>
    </form>
</body>
</html>
