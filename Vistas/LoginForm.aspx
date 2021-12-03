<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginForm.aspx.cs" Inherits="Vistas.LoginForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        .auto-style1 {
            width: 78%;
            height: 358px;
            border:hidden;

        }
        .auto-style2 {
            width: 107px;
            background-color: #CCCCCC;
        }
        .auto-style5 {
            width: 314px;
            text-align: center;
            height: 45px;
        }
        .auto-style6 {
            width: 107px;
            text-align: center;
            height: 45px;
        }
        .auto-style7 {
            width: 107px;
            text-align: center;
            background-color: #CCCCCC;
            height: 74px;
        }
        .auto-style9 {
            background-color: #0099FF;
            text-align: center;
            color: #FFFFFF;
            height: 45px;
        }
        .auto-style10 {
            width: 314px;
            text-align: center;
            background-color: #CCCCCC;
        }
        .auto-style11 {
            height: 45px;
            width: 222px;
        }
        .auto-style12 {
            width: 474px;
            background-color: #FFFFFF;
        }
        .auto-style13 {
            width: 474px;
            text-align: center;
            background-color: #FFFFFF;
            height: 74px;
        }
        .auto-style14 {
            width: 474px;
            text-align: center;
            height: 45px;
            background-color: #FFFFFF;
        }
        .auto-style15 {
            width: 222px;
        }
        .auto-style16 {
            width: 474px;
            background-color: #FFFFFF;
            height: 45px;
        }
        .auto-style17 {
            width: 474px;
            text-align: center;
            background-color: #FFFFFF;
            height: 68px;
        }
        .auto-style18 {
            width: 107px;
            text-align: center;
            background-color: #CCCCCC;
            height: 68px;
        }
        .auto-style19 {
            width: 314px;
            text-align: center;
            background-color: #CCCCCC;
            height: 68px;

        }
        .auto-style20 {
            width: 222px;
            height: 68px;
        }
        .auto-style21 {
            width: 314px;
            text-align: center;
            background-color: #CCCCCC;
            height: 74px;
            border: 0px;
        }
        .auto-style22 {
            width: 222px;
            height: 74px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1" border="0">
                <tr>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style6"></td>
                    <td class="auto-style5"></td>
                    <td class="auto-style11">
                        <asp:Label ID="LblUsuario" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16"></td>
                    <td class="auto-style9" colspan="2">INICIAR SESION</td>
                    <td class="auto-style11"></td>
                </tr>
                <tr>
                    <td class="auto-style17"></td>
                    <td class="auto-style18">DNI:</td>
                    <td class="auto-style19">
                        <asp:TextBox ID="TxtUsuario" runat="server" Height="25px" Width="234px"></asp:TextBox>
                    </td>
                    <td class="auto-style20"></td>
                </tr>
                <tr>
                    <td class="auto-style13"></td>
                    <td class="auto-style7">Contraseña:</td>
                    <td class="auto-style21">
                        <asp:TextBox ID="TxtContraseña" runat="server" Height="28px" Width="234px" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style22"></td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style10">
                        <asp:Button ID="BtnIniciarSesion" runat="server" OnClick="BtnIniciarSesion_Click" Text="Iniciar sesión" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="BtnCerrarSesion" runat="server" OnClick="BtnCerrarSesion_Click" Text="Cerrar Sesión" Width="116px" />
                        <asp:Button ID="Registrarse" runat="server" OnClick="Registrarse_Click" Text="Crear usuario" />
                    </td>
                    <td class="auto-style15">
                        <asp:Label ID="LblMensaje" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
