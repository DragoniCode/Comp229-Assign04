<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Comp229_Assign04._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <img src="Assets/Wrath-of-Kings-logo.png"  alt="Wrath of Kings" /><br/>
        <h3>An epic fantasy miniatures war game set in a stunning world. Beautiful miniatures, great art and fast rules!</h3>
     <table>
        <asp:Repeater ID="modelsRep" runat="server" >
<ItemTemplate>
    <tr>
        <td>
            <asp:HyperLink runat="server" NavigateUrl='<%#String.Format("~/About.aspx?name={0}&faction={1}",Eval("name"),Eval("faction")) %>'>
<asp:Label runat="server"><%#Eval("name") %></asp:Label>
                
            </asp:HyperLink>
        </td>
        <td>
<asp:Label runat="server"><%#Eval("faction") %></asp:Label>
        </td>
    </tr>
</ItemTemplate>
        </asp:Repeater>

    </table>
    </div>     
</asp:Content>