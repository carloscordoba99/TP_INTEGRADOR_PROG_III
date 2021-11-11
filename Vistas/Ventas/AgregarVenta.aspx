<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarVenta.aspx.cs" Inherits="Vistas.Ventas.WebForm1" %>

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
        .auto-style8 {
            text-align: center;
            height: 23px;
        }
        .auto-style12 {
            text-align: center;
            font-size: large;
        }
        .auto-style14 {
            width: 53%;
            margin-left: 34px;
        }
        .auto-style17 {
            width: 258px;
            text-align: right;
        }
        .auto-style13 {
            width: 258px;
        }
        .auto-style19 {
            width: 260px;
            text-align: center;
            height: 23px;
        }
        .auto-style20 {
            text-align: center;
            height: 23px;
            width: 166px;
        }
        .auto-style21 {
            width: 204px;
            text-align: center;
            height: 23px;
        }
        .auto-style22 {
            width: 185px;
            text-align: center;
            height: 23px;
        }
        .auto-style23 {
            width: 258px;
            text-align: right;
            height: 26px;
        }
        .auto-style24 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">Ventas</td>
                    <td class="auto-style5">
                        <asp:Label ID="LblUsuario" runat="server"></asp:Label>
                        <table class="auto-style1">
                        <tr>
                            <td class="auto-style21">
                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Ventas/AgregarVenta.aspx">Agregar venta</asp:HyperLink>
                            </td>
                            <td class="auto-style19">
                                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Ventas/EliminarVenta.aspx">Eliminar venta</asp:HyperLink>
                            </td>
                            <td class="auto-style22">
                                <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Ventas/BuscarVenta.aspx">Buscar venta</asp:HyperLink>
                            </td>
                            <td class="auto-style20">
                                <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Ventas/ModificarVenta.aspx">Modificar ventas</asp:HyperLink>
                            </td>
                            <td class="auto-style8">
                                <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/PanelAdm.aspx">Menú principal</asp:HyperLink>
                            </td>
                        </tr>
                        </table>
                    </td>
                </tr>
            </table>
            <p class="auto-style12">
                Agregar venta</p>
            <table align="center" class="auto-style14">
                <tr>
                    <td class="auto-style17">Código cliente: </td>
                    <td>
                        <asp:TextBox ID="TxtCodCliente" runat="server" Width="216px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvCodCliente" runat="server" ControlToValidate="TxtCodCliente">Ingrese Codigo de Cliente</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style23">Total factura: </td>
                    <td class="auto-style24">
                        <asp:TextBox ID="TxtTotalFactura" runat="server" Width="216px"></asp:TextBox>
                        <asp:CompareValidator ID="cvTotalFactura" runat="server" ControlToValidate="TxtTotalFactura" Operator="GreaterThan" Type="Integer" ValueToCompare="0">Ingrese Total de Factura</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17">Fecha factura: </td>
                    <td>
                        <asp:TextBox ID="TxtFecha" runat="server" Width="216px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvFecha" runat="server" ControlToValidate="TxtFecha">Ingrese Fecha</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td>
                        <asp:Button ID="BtnAgregar" runat="server" Text="Agregar" Width="129px" OnClick="BtnAgregar_Click" />
                        <asp:Label ID="LblMensaje" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
