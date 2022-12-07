<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="validaciones.aspx.cs" Inherits="FACTURACIONUTC.validaciones" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <p>
        <br />
    </p>
    <form id="form1" runat="server">
        <p>
            Ingrese el nombre de usuario:&nbsp;
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        &nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Debe ingresar el nombre</asp:RequiredFieldValidator>
        </p>
        <p>
            Ingrese edad del candidato (18 y 40):&nbsp;
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
&nbsp;&nbsp;
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="RangeValidator" ForeColor="Red" MaximumValue="40" MinimumValue="18" Type="Integer">El candidato debe estar entre los 18 y 40 años edad</asp:RangeValidator>
        </p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="RequiredFieldValidator" ForeColor="Red"> Debe digitar la edad</asp:RequiredFieldValidator>
        </p>
        <p>
            Clave:</p>
        <p>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox3" ControlToValidate="TextBox4" ErrorMessage="CompareValidator" ForeColor="Red">Las claves ingresadas son distintas</asp:CompareValidator>
        </p>
        <p>
            Repita la clave:</p>
        <p>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </p>
        <p>
            Ingrese multiplo de 5:&nbsp;
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="TextBox5" ErrorMessage="CustomValidator" OnServerValidate="CustomValidator1_ServerValidate">No es multiplo de 5</asp:CustomValidator>
        </p>
        <p>
            &nbsp;</p>
        <p>
            Ingrese un correo:&nbsp;
            <asp:TextBox ID="TextBox6" runat="server" Height="28px" Width="272px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox6" ErrorMessage="RegularExpressionValidator" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Mail incorrecto</asp:RegularExpressionValidator>
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="bingresar" runat="server" Height="78px" Text="Ingresar" Width="175px" OnClick="bingresar_Click" />
        </p>
        <p>
            &nbsp;</p>
        <div>
        </div>
    </form>
</body>
</html>
