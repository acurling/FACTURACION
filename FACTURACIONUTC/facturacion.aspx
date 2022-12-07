<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="facturacion.aspx.cs" Inherits="FACTURACIONUTC.facturacion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="/css/gridview.css"/>
    <link rel="stylesheet" href="/css/boton.css"/>
    <title>Facturacion</title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            text-align: center;
            height: 15px;
        }
        .auto-style3 {
            text-align: center;
            height: 15px;
            width: 315px;
        }
        .auto-style4 {
            text-align: center;
            width: 315px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width: 100%;" border="2">
                <tr>
                    <td class="auto-style3">Codigo</td>
                    <td class="auto-style2"><strong>Producto</strong></td>
                    <td class="auto-style2"><strong>Cantidad</strong></td>
                    <td class="auto-style2"><strong>Precio</strong></td>
                </tr>

                <tr>
                    <td class="auto-style4">
                        <asp:TextBox ID="tcodigo" runat="server" OnTextChanged="tcodigo_TextChanged"></asp:TextBox>&nbsp;&nbsp;
                        </td>
                    <td class="auto-style1">
                        <asp:TextBox ID="tnombre" runat="server" Width="216px" Enabled="False"></asp:TextBox></td>
                    <td class="auto-style1">
                        <asp:TextBox ID="tcantidad" runat="server"></asp:TextBox></td>
                    <td class="auto-style1">
                        <asp:TextBox ID="tprecio" runat="server" Enabled="False"></asp:TextBox></td>
                </tr>


                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style2"><strong></strong></td>
                    <td class="auto-style2"><strong></strong></td>
                </tr>

                 <tr>
                    <td class="auto-style3">Cliente</td>
                    <td class="auto-style2"><strong>Fecha</strong></td>
                    <td class="auto-style2"><strong>numero factura</strong></td>
                    <td class="auto-style2"><strong> Sistema Ventas</strong></td>
                </tr>
                 <tr>
                    <td class="auto-style3"><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                    <td class="auto-style2"><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                    <td class="auto-style2"><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
                    <td class="auto-style2"><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
                </tr>
                
            </table>
        </div>
        
        <asp:Button ID="Button1" CssClass="button button2" runat="server" Text="INGRESAR" OnClick="Button1_Click" />
        <div> 
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" GridLines="None"
                AllowPaging="true" CssClass="mGrid" PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt"
                PageSize="7" >
                <Columns>
                    <asp:BoundField DataField="Codigo" HeaderText="Codigo" />
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
                    <asp:BoundField DataField="Cantidad" HeaderText="Cantidad" />
                    <asp:BoundField DataField="Precio" HeaderText="Precio" />
                    <asp:BoundField DataField="Subtotal" HeaderText="Subtotal" />
                </Columns>
            </asp:GridView>
        </div>

        <div>
            <table style="width: 100%;" border="1">
                <tr>
                    <td class="auto-style1"><strong>SUBTOTAL</strong></td>
                    <td class="auto-style1"><strong>IVA</strong></td>
                    <td class="auto-style1"><strong>TOTAL</strong></td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="LSB" runat="server" Font-Size="Large" Text="0"></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <asp:Label ID="LIVA" runat="server" Font-Size="Large" Text="0"></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <asp:Label ID="LTOTAL" runat="server" Font-Size="Large" Text="0"></asp:Label>
                    </td>
                    
                </tr>
                
            </table>
        </div>

         <asp:Button ID="Bfacturar" CssClass="button button3" runat="server" Text="FACTURAR" OnClick="Bfacturar_Click" />
    </form>
</body>
</html>
