<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Asp.net._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

   <div style="padding:15px">

       <table class="w-100">
           <tr>
               <td colspan="2" style="font-size: x-large; font-weight: bold; font-style: normal; color: #800080">&nbsp;&nbsp; Complete CRUD Operations in Asp.net</td>
           </tr>
           <tr>
               <td style="width: 497px">
                   <asp:Label ID="Label1" runat="server" Text=" Employee Id"></asp:Label>
               </td>
               <td>
                   <asp:TextBox ID="Txteid" runat="server" Width="200px"></asp:TextBox>
                   <asp:Button ID="btnget" runat="server" BackColor="#999999" ForeColor="White" OnClick="btnget_Click" Text=" Get" ViewStateMode="Disabled" Width="100px" />
               </td>
           </tr>
           <tr>
               <td style="width: 497px">
                   <asp:Label ID="Label2" runat="server" Text=" Epmname"></asp:Label>
               </td>
               <td>
                   <asp:TextBox ID="Txtname" runat="server" Width="200px"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td style="height: 24px; width: 497px">
                   <asp:Label ID="Label3" runat="server" Text=" City"></asp:Label>
               </td>
               <td style="height: 24px">
                   <asp:DropDownList ID="DropDownList1" runat="server" Width="200px">
                       <asp:ListItem>--Select City__</asp:ListItem>
                       <asp:ListItem>Hyderabad</asp:ListItem>
                       <asp:ListItem>Chennai</asp:ListItem>
                       <asp:ListItem>Bengaluru</asp:ListItem>
                       <asp:ListItem>Mumbai</asp:ListItem>
                       <asp:ListItem>Visakhapatnam</asp:ListItem>
                       <asp:ListItem>Vizinagaram</asp:ListItem>
                   </asp:DropDownList>
               </td>
           </tr>
           <tr>
               <td style="width: 497px; height: 53px">
                   <asp:Label ID="Label4" runat="server" Text=" Age"></asp:Label>
               </td>
               <td style="height: 53px">
                   <asp:TextBox ID="Txtagee" runat="server" Width="200px"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td style="width: 497px">
                   <asp:Label ID="Label5" runat="server" Text=" Sex"></asp:Label>
               </td>
               <td>
                   <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                       <asp:ListItem>Male</asp:ListItem>
                       <asp:ListItem>Female</asp:ListItem>
                   </asp:RadioButtonList>
               </td>
           </tr>
           <tr>
               <td style="height: 24px; width: 497px">Join Date</td>
               <td style="height: 24px">
                   <asp:TextBox ID="Txtjoindate" runat="server" Width="200px"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td style="width: 497px">
                   <asp:Label ID="Label7" runat="server" Text=" Contact"></asp:Label>
               </td>
               <td>
                   <asp:TextBox ID="Txtcontact" runat="server" Width="200px"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td style="width: 497px; height: 24px"></td>
               <td style="height: 24px">
                   <asp:Button ID="btninsert" runat="server" BackColor="#999999" ForeColor="White" OnClick="btninsert_Click" Text=" Insert" Width="100px" />
                   <asp:Button ID="btnupdate" runat="server" BackColor="#999999" ForeColor="White" OnClick="btnupdate_Click" Text=" Update" Width="100px" />
                   <asp:Button ID="btndelete" runat="server" BackColor="#999999" ForeColor="White" OnClick="btndelete_Click" OnClientClick="return confirm('Are you sure to delete')" Text=" Delete" />
                   <asp:Button ID="btnload" runat="server" BackColor="#999999" ForeColor="White" OnClick="btnload_Click" Text=" Load" Width="99px" />
               </td>
           </tr>
           <tr>
               <td colspan="2" style="height: 24px">
                   <asp:GridView ID="GridView1" runat="server">
                   </asp:GridView>
               </td>
           </tr>
       </table>

   </div>
       
    

</asp:Content>
