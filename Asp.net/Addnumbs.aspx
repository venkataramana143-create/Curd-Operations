<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Addnumbs.aspx.cs" Inherits="Asp.net.Addnumbs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table border="2" align="center">
                <tr>
                    <td colspan="2" align="center">
                        <asp:Label ID="lbltitle" runat="server" Text ="Calculation"></asp:Label>

                    </td>
                </tr>
                <tr>
                    <td>
                        Enter first number : 
                    </td>
                    <td>
                        <asp:Textbox ID="txtfirst" runat="server"></asp:Textbox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Enter second number :
                    </td>
                    <td>
                        <asp:TextBox ID="txtsecond" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnadd" runat="server" Text="ADD" OnClick="btnadd_Click" />
                    </td>
                    <td>
                        <asp:Button ID="btnsub" runat="server" Text="SUB" OnClick="btnsub_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                            <asp:Button ID="btnmul" runat="server" Text="MUL" OnClick="btnmul_Click" />
                    </td>
                    <td>
                        <asp:Button ID="btndiv" runat="server" Text="DIV" OnClick="btndiv_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
