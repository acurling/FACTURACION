<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="inicio.aspx.cs" Inherits="FACTURACIONUTC.inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="/css/miestilo.css">
    <link rel="stylesheet" href="/css/boton.css">
    <title>Sistema Facturacion</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
<ul>
  <li><a class="active" href="#home">Inicio</a></li>
  <li><a href="clientes.aspx">Clientes</a></li>
  <li><a href="facturacion.aspx">Facturacion</a></li>
  <li><a href="bitacora.aspx">Bitacora</a></li>
</ul>
        </div>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <asp:Image ID="Image1" runat="server" Height="439px" ImageUrl="~/imagen/ligajusticia.jpg" Width="705px" />
    </form>
</body>
</html>
