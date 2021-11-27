<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistroUsuario.aspx.cs" Inherits="Vistas.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        .auto-style17 {
            width: 55%;
            height: 208px;
            margin-left: 0px;
        }
        .auto-style16 {
            width: 173px;
            height: 23px;
            text-align: center;
        }
        .auto-style14 {
            height: 23px;
            text-align: left;
            width: 381px;
        }
        .auto-style15 {
            width: 173px;
            text-align: center;
        }
        .auto-style18 {
            text-align: left;
            width: 381px;
        }
        .auto-style20 {
            width: 173px;
            text-align: center;
            height: 39px;
        }
        .auto-style19 {
            text-align: center;
            width: 381px;
            height: 39px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:HyperLink ID="HLRegresar" runat="server" NavigateUrl="~/LoginForm.aspx">Volver a Iniciar Sesión</asp:HyperLink>
            <br />
        <table align="center" class="auto-style17">
            <tr>
                <td class="auto-style16">Nombre</td>
                <td class="auto-style14">
                    <asp:TextBox ID="txtNom" runat="server" Width="373px"></asp:TextBox>
                </td>
                <td class="auto-style14">
                    <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="txtNom">Ingrese Nombre</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style16">Apellido</td>
                <td class="auto-style14">
                    <asp:TextBox ID="txtApellido" runat="server" Width="373px"></asp:TextBox>
                </td>
                <td class="auto-style14">
                    <asp:RequiredFieldValidator ID="rfvApellido" runat="server" ControlToValidate="txtApellido">Ingrese Apellido</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">Email</td>
                <td class="auto-style18">
                    <asp:TextBox ID="txtEmail" runat="server" Width="373px"></asp:TextBox>
                </td>
                <td class="auto-style18">
                    <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Ingrese Email</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">Numero Celular</td>
                <td class="auto-style18">
                    <asp:TextBox ID="txtNumCel" runat="server" Width="373px"></asp:TextBox>
                </td>
                <td class="auto-style18">
                    <asp:RequiredFieldValidator ID="rfvNum" runat="server" ControlToValidate="txtNumCel">Ingrese Numero Celular</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">Dni</td>
                <td class="auto-style18">
                    <asp:TextBox ID="txtDni" runat="server" Width="373px"></asp:TextBox>
                </td>
                <td class="auto-style18">
                    <asp:CompareValidator ID="cv" runat="server" ControlToValidate="txtDni" Operator="GreaterThan" Type="Integer" ValueToCompare="0">Ingrese Dni</asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">Direccion</td>
                <td class="auto-style18">
                    <asp:TextBox ID="TxtDireccion" runat="server" Width="373px"></asp:TextBox>
                </td>
                <td class="auto-style18">
                    <asp:RequiredFieldValidator ID="rfvDireccion" runat="server" ControlToValidate="TxtDireccion">Ingrese Direccion</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">Provincia</td>
                <td class="auto-style18">
                    <asp:TextBox ID="TxtProvincia" runat="server" Width="373px"></asp:TextBox>
                </td>
                <td class="auto-style18">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15">Contraseña</td>
                <td class="auto-style18">
                    <asp:TextBox ID="txtContraseña" runat="server" Width="373px"></asp:TextBox>
                </td>
                <td class="auto-style18">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style20"></td>
                <td class="auto-style19">
                    <asp:Button ID="btnGuardar" runat="server" Text="Guardar" Width="103px" OnClick="btnGuardar_Click" Height="27px" />
                </td>
                <td class="auto-style19">
                    <asp:Label ID="lblMensaje" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        </div>
    </form>
</body>
</html>
