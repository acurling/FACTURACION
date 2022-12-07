<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bitacora.aspx.cs" Inherits="FACTURACIONUTC.bitacora" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>bitacora</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SQLBITACORA">
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="NOMBRE" HeaderText="NOMBRE" SortExpression="NOMBRE" />
                    <asp:BoundField DataField="TRANSACCION" HeaderText="TRANSACCION" SortExpression="TRANSACCION" />
                    <asp:BoundField DataField="FECHA" HeaderText="FECHA" SortExpression="FECHA" />
                    <asp:BoundField DataField="USUARIO" HeaderText="USUARIO" SortExpression="USUARIO" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SQLBITACORA" runat="server" ConnectionString="<%$ ConnectionStrings:VETERINARIAConnectionString %>" SelectCommand="SELECT * FROM [BITACORACLIENTES]"></asp:SqlDataSource>
            <br />
            <asp:Button ID="Button1" runat="server" Height="97px" OnClick="Button1_Click" Text="REGRESAR" Width="169px" />
            <br />
        </div>
    </form>
</body>
</html>
