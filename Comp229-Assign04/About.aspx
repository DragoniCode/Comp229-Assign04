<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Comp229_Assign04.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
 

      <div class="jumbotron">
      <div class="col-xs-12 col-md-4">
             <asp:Image runat="server" ID="modelImg" Width="200px" />        
        </div>
          <div class="col-xs-12 ">
            <table>
                <tr>
                    <td >Name:</td>
                    <td id="name_row" runat="server">
                        <asp:Label runat="server" ID="nameLabel" /></td>
                     <td id="row1" runat="server">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Faction:</td>
                    <td>
                        <asp:Label runat="server" ID="factionLabel" /></td>
                   
                </tr>
                
                <tr>
                    <td>Rank:</td>
                    <td>
                        <asp:Label runat="server" ID="rankLabel" /></td>
                </tr>
                <tr>
                    <td>Base:</td>
                    <td>
                        <asp:Label runat="server" ID="baseLabel" /></td>
                </tr>
                <tr>
                    <td>Size:</td>
                    <td>
                        <asp:Label runat="server" ID="sizeLabel" /></td>
                </tr>
                <tr>
                    <td>Deploymentzone:</td>
                    <td>
                        <asp:Label runat="server" ID="deploymentzoneLabel" /></td>
                </tr>
                <tr>
                    <td>Traits:</td>
                    <asp:Repeater runat="server" ID="traitsRepeater">
                        <ItemTemplate>
                                <td>
                                    <asp:Label runat="server" Text="<%# Container.DataItem.ToString() %>" />
                                </td>
                        </ItemTemplate>
                    </asp:Repeater>
                </tr>
                <tr>
                    <td>Types:</td>
                    <asp:Repeater runat="server" ID="typeRepeater">
                        <ItemTemplate>
                                <td>
                                    <asp:Label runat="server" Text="<%# Container.DataItem.ToString() %>" />
                                </td>
                        </ItemTemplate>
                    </asp:Repeater>
                </tr>
              
                <tr>
                    <td>Resilience:</td>
                    <td>
                        <asp:Label runat="server" ID="resilienceLabel" /></td>
                </tr>
                <tr>
                    <td>Wounds:</td>
                    <td>
                        <asp:Label runat="server" ID="woundsLabel" /></td>

                </tr>
            </table>
        </div>
    </div>
    <div class="jumbotron">
    <table  class="table">
        <asp:Repeater runat="server" ID="actionRepeater">
            <ItemTemplate>
                <tr>
                    <td>Name:</td>
                    <td>
                        <asp:Label runat="server" Text='<%# Eval("name") %>' />
                    </td>
                </tr>

                <tr>
                    <td>Type:</td>
                    <td>
                        <asp:Label runat="server" Text='<%# Eval("type") %>' />
                    </td>


                    <td>Rating:</td>
                    <td>
                        <asp:Label runat="server" Text='<%# Eval("rating") %>' />
                    </td>

                    <td>Range:</td>
                    <td>
                        <asp:Label runat="server" Text='<%# Eval("range") %>' />
                    </td>
                </tr>
                <tr>
                    <td colspan="6">
                        <asp:Label runat="server" Text='<%# Eval("description") %>' />

                    </td>
                </tr>

            </ItemTemplate>
        </asp:Repeater>
      
        <tr>
            <td>DefenceChart:</td>
            <td>
                  
                <table>
                    <asp:Repeater runat="server" ID="defenceChartRepeater">
                        <ItemTemplate>
                            <tr>
                                <td>
                                    <asp:Label runat="server" Text="<%# (10 - Container.ItemIndex).ToString() %>" />
                                </td>
                                <td>
                                    <asp:Label runat="server" Text="<%# Container.DataItem.ToString() %>" />
                                </td>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                </table>
            </td>
        </tr>

        <tr>
            <td>Mobility:</td>
            <td>

                <asp:Label runat="server" ID="mobilityLabel" />
            </td>
        </tr>
        <tr>
            <td>Willpower:</td>
            <td>
                <asp:Label runat="server" ID="willpowerLabel" />
            </td>

        </tr>
        <tr>
            <td>Resiliance:</td>
            <td>
                <asp:Label runat="server" ID="resilianceLabel" />
            </td>

        </tr>

        <tr>
            <td>Special Abilities:</td>
            <td>
                <table>
                    <asp:Repeater runat="server" ID="specialAbilitiesRepeater">
                        <ItemTemplate>
                            <tr>
                                <td>Name:</td>
                                <td>
                                    <asp:Label runat="server" Text='<%# Eval("name") %>' />
                                </td>
                            </tr>


                            <tr>
                                <td colspan="6">
                                    <asp:Label runat="server" Text='<%# Eval("description") %>' />

                                </td>
                            </tr>

                        </ItemTemplate>
                    </asp:Repeater>
                    
                    
                </table>
            </td>
        </tr>
    </table>
      </div>
     <div class="jumbotron">
       
          <h2>Change profile</h2>
     
         <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>

         <asp:TextBox ID="NameTextBox" class="form-control" runat="server"></asp:TextBox>

       
         <asp:Label ID="Label2" runat="server" Text="Faction"></asp:Label>

         <asp:TextBox ID="FactionTextBox" class="form-control" runat="server"></asp:TextBox>

        

         <asp:Label ID="Label3" runat="server" Text="Deployment Zone"></asp:Label>

         <asp:TextBox ID="deploymentZoneTextBox" class="form-control" runat="server"></asp:TextBox>
         <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label>
        <asp:TextBox ID="c_AddressTextBox" class="form-control" runat="server"></asp:TextBox>
         <asp:Label ID="Label5" runat="server" Text="Name"></asp:Label>
         <asp:TextBox ID="c_NameTextBox" class="form-control" runat="server"></asp:TextBox>

         
         <br />
     <%-- MessageBox.Show(this.inputText.Text);--%>
         
         <asp:Button ID="Button1" runat="server" Class="btn btn-default" Text="Update &amp; Email" OnClick="UpdateButton_Click" />

       
         </div>
</asp:Content>
