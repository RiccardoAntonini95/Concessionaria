<%@ Page Title="" Language="C#" MasterPageFile="~/Template/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Concessionaria.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Scegli un auto:</h1>

    <asp:DropDownList ID="AutoModel" runat="server">
    </asp:DropDownList>

        <asp:Image ID="AutoImg" runat="server"></asp:Image>

    <h2>Optional:</h2>
    <asp:CheckBoxList ID="OptionalList" runat="server">
         <asp:ListItem Value="800">Sistema navigazione satellitare</asp:ListItem>
         <asp:ListItem Value="1200">Tetto panoramico</asp:ListItem>
         <asp:ListItem Value="500">Sedili riscaldati</asp:ListItem>
         <asp:ListItem Value="300">Telecamera retromarcia</asp:ListItem>
         <asp:ListItem Value="400">Sensori parcheggio</asp:ListItem>
    </asp:CheckBoxList>

    <h2>Anni di garanzia:</h2>
    <asp:DropDownList ID="AnniGaranzia" runat="server">
        <asp:ListItem Value="120" runat="server">1</asp:ListItem>   
        <asp:ListItem Value="240" runat="server">2</asp:ListItem>   
        <asp:ListItem Value="360" runat="server">3</asp:ListItem>   
        <asp:ListItem Value="480" runat="server">4</asp:ListItem>  
    </asp:DropDownList>

</asp:Content>
