<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Asp.net.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="center" colspacing="1">
                <tr>
                    <td>

                    </td>
                    <td>
                    <asp:Label ID="lbltitle" runat="server" Text="LOGIN" />
                    </td>
 
                </tr>
                <tr>
                    <td>
                        Username :
                    </td>
                    <td>
                      <asp:TextBox ID="txtname" runat="server" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Password :
                    </td>
                    <td>
                        <asp:TextBox ID ="txtpwd" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        
                    </td>
                     <td>
                         
                          <asp:Button ID="btnlogin" runat="server" text="Login" OnClick="btnlogin_Click" />
                     </td>
                </tr>
                
            </table>
        </div>
    </form>
</body>
</html>
