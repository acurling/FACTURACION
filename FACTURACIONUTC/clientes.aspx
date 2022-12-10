<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="clientes.aspx.cs" Inherits="FACTURACIONUTC.productos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="/css/boton.css">
    <title>Clientes</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <br />
            FACTURACION DE CLIENTES<br />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
            <br />
            <br />
            <br />
            CODIGO<br />
            <asp:TextBox ID="TCODIGO" runat="server"></asp:TextBox>
            <br />
            <br />
            NOMBRE<br />
            <asp:TextBox ID="TNOMBRE" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Height="50px" OnClick="Button1_Click" Text="Button" Width="153px" />
            <br />
        </div>
    </form>
</body>
</html>
