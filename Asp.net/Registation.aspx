<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registation.aspx.cs" Inherits="Asp.net.Registation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 198px;
        }
        .auto-style2 {
            height: 29px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="center" colspacing="2">
                <tr><td>

                    </td>
                    <td > <b>Registation</b>  </td>

                </tr>
                <tr>
                    <td>Name : </td>
                    <td>
                        <asp:TextBox ID="txtname" runat="server" style="width: 168px" OnTextChanged="txtname_TextChanged"></asp:TextBox>
                    </td>
                    <td class="auto-style1">

                        <em>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" ErrorMessage=" Reguired Field">*</asp:RequiredFieldValidator>
                        </em>

                    </td>
                </tr>
                <tr>
                    <td>
                        age :
                    </td>
                    <td>
                        <asp:TextBox ID="txtage" runat="server"></asp:TextBox>
                    </td>
                    <td>

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtage" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtage" ErrorMessage=" Enter must be (18 - 25)" ForeColor="#FF3300" MaximumValue="25" MinimumValue="18"></asp:RangeValidator>

                    </td>
                </tr>
                 <tr>
                     <td class="auto-style2">
                         Email:
                     </td>
                     <td class="auto-style2">
                         <asp:TextBox ID="txtemail" runat="server" ></asp:TextBox>
                     </td>
                     <td class="auto-style2">

                         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtemail" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="Invalid Format" ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

                     </td>
                 </tr>
                <tr>
                    <td>
                        Password:
                    </td>
                    <td>
                        <asp:TextBox ID="txtpwd" runat="server"></asp:TextBox>
                    </td>
                    <td>

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtpwd" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>

                    </td>
                </tr>
                <tr>
                <td>
                    Con password :
                </td>
                <td>
                    <asp:TextBox ID="txtcpwd" runat="server"></asp:TextBox>
                </td>
                    <td>

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtcpwd" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpwd" ControlToValidate="txtcpwd" ErrorMessage=" Doesn't match pwd" ForeColor="#FF3300" Type="Integer"></asp:CompareValidator>

                    </td>
                    </tr>
                <tr>
                    <td>
                        State :
                    </td>
                    <td>
                        <asp:DropDownList ID="liststate" runat="server">
                            <asp:ListItem>Andhra pradesh</asp:ListItem>
                            <asp:ListItem>Telangana</asp:ListItem>
                            <asp:ListItem>Tamilnaidu</asp:ListItem>
                            <asp:ListItem>Karnataka</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="liststate" ErrorMessage="RequiredFieldValidator" InitialValue="--Select state--">*</asp:RequiredFieldValidator>

                    </td>
                </tr>
                <tr>
                    <td>

                    </td>
                    <td>
                        <asp:Button ID="btnsubmit" runat="server" Text="Submit" OnClick="btnsubmit_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbldisplay" runat="server" Text=""></asp:Label>
                    </td>
                     
                </tr>

            </table>
        </div>
    </form>
</body>
</html>
