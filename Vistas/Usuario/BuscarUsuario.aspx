<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BuscarUsuario.aspx.cs" Inherits="Vistas.Usuario.BuscarUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
        .auto-style10 {
            width: 250px;
            text-align: center;
        }
        .auto-style11 {
            width: 294px;
            text-align: center;
        }
        .auto-style9 {
            text-align: center;
            width: 338px;
        }
        .auto-style8 {
            text-align: center;
        }
        .auto-style12 {
            width: 397px;
            text-align: right;
        }
        .auto-style13 {
            width: 399px;
        }
        .auto-style14 {
            text-align: center;
            font-size: large;
        }
        .auto-style15 {
            text-align: center;
            margin-left: 80px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
    <table class="auto-style1">
        <tr>
            <td class="auto-style3">Usuarios</td>
            <td class="auto-style5">Usuario<table class="auto-style1">
                <tr>
                    <td class="auto-style10">
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Usuario/AgregarUsuario.aspx">Crear Usuario</asp:HyperLink>
                    </td>
                    <td class="auto-style11">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Usuario/EliminarUsuario.aspx">Eliminar Usuarios</asp:HyperLink>
                    </td>
                    <td class="auto-style9">
                        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Usuario/ModificarUsuario.aspx">Modificar Usuario</asp:HyperLink>
                    </td>
                    <td class="auto-style8">
                        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Usuario/BuscarUsuario.aspx">Buscar Usuario</asp:HyperLink>
                    </td>
                </tr>
                </table>
            </td>
        </tr>
    </table>
        </div>
        <p class="auto-style14">
            Listado de Usuarios</p>
        <table class="auto-style1">
            <tr>
                <td class="auto-style12">Busqueda ID de usuario </td>
                <td class="auto-style13">&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtUsuario" runat="server" Width="333px"></asp:TextBox>
                </td>
                <td>&nbsp;&nbsp;<asp:Button ID="btnBuscar" runat="server" Text="Buscar" Width="147px" OnClick="Button1_Click" />
                &nbsp;<asp:Button ID="btnTodos" runat="server" OnClick="Button7_Click" Text="Mostrar todos" Width="144px" />
                </td>
            </tr>
        </table>
        <br />
        <div class="auto-style15">
            <asp:GridView ID="grdUsuarios" runat="server" Width="1322px">
            </asp:GridView>
        </div>
    </form>
</body>
</html>