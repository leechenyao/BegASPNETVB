<%@ Page Language="VB" AutoEventWireup="false" CodeFile="State.aspx.vb" Inherits="Demos_State" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Label" EnableViewState="false"></asp:Label>
                    </td>
                    <td>
                        <asp:Button ID="SetDate" runat="server" Text="Set Date" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                    </td>
                    <td>
                        <asp:Button ID="PlainPostback" runat="server" Text="Plain Postback" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" EnableViewState="false"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
