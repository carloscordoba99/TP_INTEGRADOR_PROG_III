<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BuscarDetalleDeVentas.aspx.cs" Inherits="Vistas.DetalleDeVentas.WebForm2" %>

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
        .auto-style16 {
            width: 225px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">Detalle de ventas</td>
                <td class="auto-style5">
                        <asp:Label ID="LblUsuario" runat="server"></asp:Label>
                    <table class="auto-style1">
                    <tr>
                        <td class="auto-style10">
                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/DetalleVentas/AgregarDetalleDeVentas.aspx">Agregar detalle de ventas</asp:HyperLink>
                        </td>
                        <td class="auto-style11">
                                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/DetalleVentas/EliminarDetalleDeVentas.aspx">Eliminar detalle de ventas</asp:HyperLink>
                        </td>
                        <td class="auto-style9">
                                <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/DetalleVentas/BuscarDetalleDeVentas.aspx">Buscar detalle de ventas</asp:HyperLink>
                        </td>
                        <td class="auto-style8">
                        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/PanelAdm.aspx">Home</asp:HyperLink>
                        </td>
                    </tr>
                    </table>
                </td>
            </tr>
        </table>
        <p class="auto-style12">
            <strong>Buscar </strong>detalle de ventas</p>
        <table class="auto-style1">
            <tr>
                <td class="auto-style13">Ingrese el ID del detalle de venta: </td>
                <td class="auto-style15">
                    <asp:TextBox ID="TxtIdDetVenta" runat="server" Width="320px"></asp:TextBox>
                </td>
                <td class="auto-style16">
                    <asp:Button ID="BtnAgregar" runat="server" CssClass="auto-style14" Text="Buscar" Width="113px" OnClick="BtnAgregar_Click" style="margin-left: 0px" />
                </td>
                <td>
                    <asp:Button ID="BtnMostrarTodos" runat="server" CssClass="auto-style14" Text="Mostrar todos" Width="113px" OnClick="BtnMostrarTodos_Click" style="margin-left: 0px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style15">
                    &nbsp;</td>
                <td class="auto-style16">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5" colspan="4">
            <asp:GridView ID="GrdDetVentas" runat="server" Width="1392px">
            </asp:GridView>
                </td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
