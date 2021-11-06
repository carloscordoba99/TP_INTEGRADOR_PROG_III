<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginForm.aspx.cs" Inherits="Vistas.LoginForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        .auto-style1 {
            width: 100%;
            height: 358px;
        }
        .auto-style3 {
            width: 459px;
        }
        .auto-style2 {
            width: 108px;
            background-color: #CCCCCC;
        }
        .auto-style5 {
            width: 314px;
            text-align: center;
        }
        .auto-style6 {
            width: 108px;
            text-align: center;
        }
        .auto-style7 {
            width: 108px;
            text-align: center;
            background-color: #CCCCCC;
        }
        .auto-style8 {
            width: 314px;
            text-align: center;
            color: #FFFFFF;
            background-color: #0099FF;
        }
        .auto-style9 {
            width: 108px;
            background-color: #0099FF;
        }
        .auto-style10 {
            width: 314px;
            text-align: center;
            background-color: #CCCCCC;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style8">INICIAR SESION</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style7">ID:</td>
                    <td class="auto-style10">
                        <asp:TextBox ID="TxtUsuario" runat="server" Height="25px" Width="234px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style7">Contraseña:</td>
                    <td class="auto-style10">
                        <asp:TextBox ID="TxtContraseña" runat="server" Height="28px" Width="234px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style10">
                        <asp:Button ID="BtnIniciarSesion" runat="server" OnClick="BtnIniciarSesion_Click" Text="Iniciar sesión" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="BtnCerrarSesion" runat="server" OnClick="BtnCerrarSesion_Click" Text="Cerrar Sesión" Width="116px" />
                        <asp:Button ID="Registrarse" runat="server" OnClick="Registrarse_Click" Text="Crear usuario" />
                    </td>
                    <td>
                        <asp:Label ID="LblMensaje" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
    </form>
</body>
</html>
