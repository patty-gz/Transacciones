<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Trabajo.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 297px;
        }
        .auto-style2 {
            width: 100%;
            height: 292px;
        }
        .auto-style3 {
            height: 32px;
        }
        .auto-style4 {
            width: 297px;
            height: 32px;
        }
        .auto-style5 {
            height: 45px;
        }
        .auto-style6 {
            width: 297px;
            height: 45px;
        }
        .auto-style7 {
            margin-bottom: 4px;
        }
        .auto-style8 {
            margin-bottom: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style2">
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="Label1" runat="server" Text="Buscar Cliente :"></asp:Label>
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style7" OnTextChanged="TextBox1_TextChanged" Width="282px"></asp:TextBox>
                    </td>
                    <td class="auto-style6">
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style8" OnClick="Button1_Click" Text="Buscar" />
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:GridView ID="GridView1" runat="server">
                        </asp:GridView>
                    </td>
                    <td class="auto-style3"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style1">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
