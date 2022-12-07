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
            CLIENTES<br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="sqlclientes">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="sqlclientes" runat="server" ConnectionString="<%$ ConnectionStrings:examen2ConnectionString %>" DeleteCommand="delete cliente where cedula = @cedula" InsertCommand="insert into cliente values(@cedula, @nombre)" SelectCommand="SELECT [id], [nombre] FROM [Cliente]">
                <DeleteParameters>
                    <asp:ControlParameter ControlID="TCODIGO" Name="cedula" PropertyName="Text" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:ControlParameter ControlID="TCODIGO" Name="cedula" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TNOMBRE" Name="nombre" PropertyName="Text" />
                </InsertParameters>
            </asp:SqlDataSource>
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
            <asp:Button ID="BINGRESAR" class="rainbow-button" runat="server" Height="87px" Text="INGRESAR" Width="282px" OnClick="BINGRESAR_Click" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="BBORRAR" class="rainbow-button" runat="server" Height="65px" Text="BORRAR" Width="291px" OnClick="BBORRAR_Click" />
            <br />
        </div>
    </form>
</body>
</html>
