﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarUsuario.aspx.cs" Inherits="Vistas.Usuario.AgregarUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
   
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 184px;
            text-align: center;
        }
        .auto-style5 {
            text-align: right;
        }
        .auto-style8 {
            width: 250px;
            text-align: center;
        }
        
        .auto-style11 {
            width: 250px;
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
        .auto-style16 {
            width: 173px;
            height: 23px;
            text-align: center;
        }
        .auto-style17 {
            width: 70%;
            height: 208px;
            margin-left: 0px;
            text-align: center;
        }
        .auto-style18 {
            text-align: left;
            width: 381px;
        }
        .auto-style19 {
            text-align: center;
            width: 381px;
            height: 39px;
        }
        .auto-style20 {
            width: 173px;
            text-align: center;
            height: 39px;
        }
        .auto-style21 {
            width: 250px;
            text-align: center;
        }
        .auto-style22 {
            height: 23px;
            text-align: left;
            width: 459px;
            margin-left: 40px;
        }
        .auto-style23 {
            width: 227px;
            height: 23px;
            text-align: center;
        }
        .auto-style25 {
            width: 227px;
            text-align: center;
            height: 39px;
        }
        .auto-style26 {
            width: 227px;
            text-align: center;
        }
        .auto-style27 {
            height: 23px;
            text-align: left;
            width: 459px;
        }
        .auto-style28 {
            text-align: left;
            width: 459px;
        }
        .auto-style29 {
            text-align: center;
            width: 459px;
            height: 39px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style3">Crear Usuario</td>
            <td class="auto-style5">
                        <asp:Label ID="LblUsuario" runat="server"></asp:Label>
                    <table class="auto-style1">
                <tr>
                   
                    <td class="auto-style11">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Usuario/EliminarUsuario.aspx">Eliminar Usuarios</asp:HyperLink>
                    </td>
                    <td class="auto-style21">
                        <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Usuario/BuscarUsuario.aspx">Buscar Usuario</asp:HyperLink>
                    </td>
                    <td class="auto-style8">
                        <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/Usuario/EditarUsuario.aspx">Editar Usuario</asp:HyperLink>
                    </td>
                    <td class="auto-style8">
                        <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/PanelAdm.aspx">Inicio</asp:HyperLink>
                    </td>
                </tr>
                </table>
            </td>
        </tr>
    </table>
        <br />
        <table align="center" class="auto-style17">
            <tr>
                <td class="auto-style23">
                    <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="txtNom">Ingrese Nombre</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style16">Nombre</td>
                <td class="auto-style14">
                    <asp:TextBox ID="txtNom" runat="server" Width="373px"></asp:TextBox>
                </td>
                <td class="auto-style22">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style23">
                    <asp:RequiredFieldValidator ID="rfv_Apellido" runat="server" ControlToValidate="txtApellido">Ingrese Apellido</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style16">Apellido</td>
                <td class="auto-style14">
                    <asp:TextBox ID="txtApellido" runat="server" Width="373px"></asp:TextBox>
                </td>
                <td class="auto-style27">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style26">
                    <asp:RequiredFieldValidator ID="rfv_Email" runat="server" ControlToValidate="txtEmail">Ingrese Email</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style15">Email</td>
                <td class="auto-style18">
                    <asp:TextBox ID="txtEmail" runat="server" Width="373px"></asp:TextBox>
                </td>
                <td class="auto-style28">
                    <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Ingrese Email</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style26">
                    <asp:RequiredFieldValidator ID="rfv_Num" runat="server" ControlToValidate="txtNumCel">Ingrese Celular</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style15">Numero Celular</td>
                <td class="auto-style18">
                    <asp:TextBox ID="txtNumCel" runat="server" Width="373px"></asp:TextBox>
                </td>
                <td class="auto-style28">
                    <asp:CompareValidator ID="cv_Tel" runat="server" ControlToValidate="txtNumCel" ErrorMessage="CompareValidator" Operator="GreaterThan" Type="Integer" ValueToCompare="0">Ingrese un numero de Telefono</asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style26">
                    <asp:RequiredFieldValidator ID="rfv_Dni" runat="server" ControlToValidate="txtDni">Ingrese Dni</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style15">Dni</td>
                <td class="auto-style18">
                    <asp:TextBox ID="txtDni" runat="server" Width="373px"></asp:TextBox>
                </td>
                <td class="auto-style28">
                    <asp:CompareValidator ID="cv" runat="server" ControlToValidate="txtDni" Operator="GreaterThan" Type="Integer" ValueToCompare="0">Ingrese Dni</asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style26">
                    <asp:RequiredFieldValidator ID="frv_Direccion" runat="server" ControlToValidate="TxtDireccion">Ingrese Direccion</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style15">Direccion</td>
                <td class="auto-style18">
                    <asp:TextBox ID="TxtDireccion" runat="server" Width="373px"></asp:TextBox>
                </td>
                <td class="auto-style28">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style26">
                    <asp:RequiredFieldValidator ID="frProvincia" runat="server" ControlToValidate="DdlProvincias" InitialValue="-- Seleccione Provincia --">Elija una Provincia</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style15">Provincia</td>
                <td class="auto-style18">
                    <asp:DropDownList ID="DdlProvincias" runat="server">
                        <asp:ListItem>-- Seleccione Provincia --</asp:ListItem>
                        <asp:ListItem>Cordoba</asp:ListItem>
                        <asp:ListItem>Santa Fe</asp:ListItem>
                        <asp:ListItem>Buenos Aires</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style28">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style26">
                    <asp:RequiredFieldValidator ID="rfv_Contrasena" runat="server" ControlToValidate="txtContraseña">Ingrese Contraseña</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style15">Contraseña</td>
                <td class="auto-style18">
                    <asp:TextBox ID="txtContraseña" runat="server" Width="373px"></asp:TextBox>
                </td>
                <td class="auto-style28">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style26">
                    <asp:RequiredFieldValidator ID="rfv0" runat="server" ControlToValidate="ddlTipo" InitialValue="-- Seleccione Tipo --">Seleccione Tipo</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style15">Tipo de Usuario</td>
                <td class="auto-style18">
                    <asp:DropDownList ID="ddlTipo" runat="server" Height="32px" Width="225px">
                        <asp:ListItem>-- Seleccione Tipo --</asp:ListItem>
                        <asp:ListItem Value="0">Cliente</asp:ListItem>
                        <asp:ListItem Value="1">Administrador</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style28">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style25">&nbsp;</td>
                <td class="auto-style20"></td>
                <td class="auto-style19">
                    <asp:Button ID="btnGuardar" runat="server" Text="Guardar" Width="103px" OnClick="btnGuardar_Click" Height="27px" />
                </td>
                <td class="auto-style29">
                    <asp:Label ID="lblMensaje" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <br />
    </form>
</body>
</html>
