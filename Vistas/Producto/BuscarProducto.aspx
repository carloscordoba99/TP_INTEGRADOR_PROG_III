﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BuscarProducto.aspx.cs" Inherits="Vistas.Producto.BuscarProducto" %>

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
            font-size: xx-large;
        }
        .auto-style5 {
            text-align: right;
        }
        .auto-style10 {
            width: 250px;
            text-align: center;
            height: 23px;
        }
        .auto-style11 {
            width: 294px;
            text-align: center;
            height: 23px;
        }
        .auto-style9 {
            text-align: center;
            width: 338px;
            height: 23px;
        }
        .auto-style8 {
            text-align: center;
            height: 23px;
        }
        .auto-style12 {
            text-align: center;
            font-size: large;
        }
        .auto-style13 {
            width: 429px;
            text-align: right;
        }
        .auto-style15 {
            width: 348px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
    <table class="auto-style1">
        <tr>
            <td class="auto-style3">Producto</td>
            <td class="auto-style5">
                        <asp:Label ID="LblUsuario" runat="server"></asp:Label>
                    <table class="auto-style1">
                <tr>
                    <td class="auto-style10">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Producto/AgregarProducto.aspx">Crear Producto</asp:HyperLink>
                    </td>
                    <td class="auto-style11">
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Producto/EliminarProducto.aspx">Eliminar Producto</asp:HyperLink>
                    </td>
                    <td class="auto-style9">
                        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Producto/BuscarProducto.aspx">Buscar Producto</asp:HyperLink>
                    </td>
                    <td class="auto-style8">
                    </td>
                </tr>
                </table>
            </td>
        </tr>
    </table>
            <p class="auto-style12">
                <strong>Buscar Producto</strong></p>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style13">Ingrese ID del Producto: </td>
                    <td class="auto-style15">
                        <asp:TextBox ID="txtIdProd" runat="server" Width="320px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnBuscar" runat="server" OnClick="btnBuscar_Click" Text="Buscar" />
                    </td>
                    <td>
                        <asp:Button ID="btnMostarTodos" runat="server" OnClick="btnMostarTodos_Click" Text="Mostar Todos" />
                    </td>
                </tr>
            </table>
            <br />
            <asp:GridView ID="grdProductos" runat="server" Width="1392px">
            </asp:GridView>
        </div>
    </form>
</body>
</html>
