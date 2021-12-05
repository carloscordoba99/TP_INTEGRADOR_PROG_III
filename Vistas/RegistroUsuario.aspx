<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistroUsuario.aspx.cs" Inherits="Vistas.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        .auto-style17 {
            width: 70%;
            height: 208px;
            margin-left: 0px;
            text-align: center;
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
        .auto-style23 {
            width: 227px;
            height: 23px;
            text-align: center;
        }
        .auto-style22 {
            height: 23px;
            text-align: left;
            width: 457px;
            margin-left: 40px;
        }
        .auto-style27 {
            height: 23px;
            text-align: left;
            width: 457px;
        }
        .auto-style15 {
            width: 173px;
            text-align: center;
        }
        .auto-style18 {
            text-align: left;
            width: 381px;
        }
        .auto-style26 {
            width: 227px;
            text-align: center;
        }
        .auto-style28 {
            text-align: left;
            width: 457px;
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
        .auto-style25 {
            width: 227px;
            text-align: center;
            height: 39px;
        }
        .auto-style29 {
            text-align: center;
            width: 457px;
            height: 39px;
        }
        .auto-style30 {
            text-align: center;
            width: 381px;
            height: 45px;
        }
        .auto-style31 {
            text-align: center;
            width: 457px;
            height: 45px;
        }
        .auto-style32 {
            width: 173px;
            text-align: center;
            height: 45px;
        }
        .auto-style33 {
            width: 70%;
            height: 45px;
            margin-left: 0px;
            text-align: center;
        }
        .auto-style34 {
            text-align: center;
            width: 381px;
            height: 49px;
        }
        .auto-style35 {
            text-align: center;
            width: 457px;
            height: 49px;
        }
        .auto-style36 {
            width: 173px;
            text-align: center;
            height: 49px;
        }
        .auto-style37 {
            width: 70%;
            height: 49px;
            margin-left: 0px;
            text-align: center;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:HyperLink ID="HLRegresar" runat="server" NavigateUrl="~/LoginForm.aspx">Volver a Iniciar Sesión</asp:HyperLink>
            <br />
            <br />
        <table align="center" class="auto-style17">
            <tr>
                <td class="auto-style15">Nombre</td>
                <td class="auto-style18">
                    <asp:TextBox ID="txtNom" runat="server" Width="373px"></asp:TextBox>
                </td>
                <td class="auto-style26">
                    <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="txtNom" ValidationGroup="Group1">Ingrese Nombre</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style28">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15">Apellido</td>
                <td class="auto-style18">
                    <asp:TextBox ID="txtApellido" runat="server" Width="373px"></asp:TextBox>
                </td>
                <td class="auto-style26">
                    <asp:RequiredFieldValidator ID="rfv_Apellido" runat="server" ControlToValidate="txtApellido" ValidationGroup="Group1">Ingrese Apellido</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style28">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15">Email</td>
                <td class="auto-style18">
                    <asp:TextBox ID="txtEmail" runat="server" Width="373px"></asp:TextBox>
                </td>
                <td class="auto-style26">
                    <asp:RequiredFieldValidator ID="rfv_Email" runat="server" ControlToValidate="txtEmail" ValidationGroup="Group1">Ingrese Email</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style28">
                    <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="Group1">Ingrese un Email valido de formato usuario@gmail.com</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">Numero Celular</td>
                <td class="auto-style18">
                    <asp:TextBox ID="txtNumCel" runat="server" Width="373px"></asp:TextBox>
                </td>
                <td class="auto-style26">
                    <asp:RequiredFieldValidator ID="rfv_Num" runat="server" ControlToValidate="txtNumCel" ValidationGroup="Group1">Ingrese Celular</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style28">
                    <asp:CompareValidator ID="cv_Tel" runat="server" ControlToValidate="txtNumCel" ErrorMessage="CompareValidator" Operator="GreaterThan" Type="Integer" ValueToCompare="0" ValidationGroup="Group1">Solo se permiten ingresar números</asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">Dni</td>
                <td class="auto-style18">
                    <asp:TextBox ID="txtDni" runat="server" Width="373px"></asp:TextBox>
                </td>
                <td class="auto-style26">
                    <asp:RequiredFieldValidator ID="rfv_Dni" runat="server" ControlToValidate="txtDni" ValidationGroup="Group1">Ingrese Dni</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style28">
                    <asp:CompareValidator ID="cv" runat="server" ControlToValidate="txtDni" Operator="GreaterThan" Type="Integer" ValueToCompare="0" ValidationGroup="Group1">Solo se permite ingresar números</asp:CompareValidator>
                </td>
            </tr>
            <tr>
                    <td class="auto-style15">Provincia: </td>
                    <td class="auto-style18">
                    <asp:DropDownList ID="DdlProvincias" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DdlProvincias_SelectedIndexChanged">
                    </asp:DropDownList>
                    </td>
                    <td class="auto-style26">
                    <asp:RequiredFieldValidator ID="frProvincia" runat="server" ControlToValidate="DdlProvincias" InitialValue="-- Seleccionar provincia --" ValidationGroup="Group1">Elija una Provincia</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style28">
                        </td>
                </tr>
            <tr>
                    <td class="auto-style15">Localidad: </td>
                    <td class="auto-style18">
                    <asp:DropDownList ID="DdlLocalidad" runat="server" AutoPostBack="True" Width="214px">
                    </asp:DropDownList>
                    </td>
                    <td class="auto-style26">
                    <asp:RequiredFieldValidator ID="frProvincia0" runat="server" ControlToValidate="DdlLocalidad" InitialValue="-- Seleccionar localidad --" ValidationGroup="Group1">Elija una Localidad</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style28">
                        </td>
                </tr>
            <tr>
                <td class="auto-style15">Direccion</td>
                <td class="auto-style18">
                    <asp:TextBox ID="TxtDireccion" runat="server" Width="373px"></asp:TextBox>
                </td>
                <td class="auto-style26">
                    <asp:RequiredFieldValidator ID="frv_Direccion" runat="server" ControlToValidate="TxtDireccion" ValidationGroup="Group1">Ingrese Direccion</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style28">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15">Contraseña</td>
                <td class="auto-style18">
                    <asp:TextBox ID="txtContrasenia" runat="server" Width="373px" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style26">
                    <asp:RequiredFieldValidator ID="rfv_Contrasena0" runat="server" ControlToValidate="txtContrasenia" ValidationGroup="Group1">Ingrese Contraseña</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style28">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15">Contraseña</td>
                <td class="auto-style18">
                    <asp:TextBox ID="txtContraseniaRevision" runat="server" Width="373px" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style26">
                    <asp:RequiredFieldValidator ID="rfv_Contrasena1" runat="server" ControlToValidate="txtContraseniaRevision" ValidationGroup="Group1">Repita Contraseña</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style28">
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtContrasenia" ControlToValidate="txtContraseniaRevision" ValidationGroup="Group1">La contraseña ingresada y la repetida no son iguales. Intente de nuevo</asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style20"></td>
                <td class="auto-style19">
                    <asp:Button ID="btnGuardar" runat="server" Text="Guardar" Width="103px" OnClick="btnGuardar_Click" Height="27px" ValidationGroup="Group1" />
                </td>
                <td class="auto-style25">
                    <asp:Label ID="lblMensaje" runat="server"></asp:Label>
                </td>
                <td class="auto-style29">
                    &nbsp;</td>
            </tr>
        </table>
        </div>
    </form>
</body>
</html>
