<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModificarVenta.aspx.cs" Inherits="Vistas.Ventas.WebForm4" %>

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
            width: 212px;
            text-align: center;
            height: 23px;
        }
        .auto-style11 {
            width: 164px;
            text-align: center;
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
        .auto-style18 {
            width: 191px;
            text-align: center;
            height: 23px;
        }
        .auto-style19 {
            margin-left: 206px;
        }
    </style>
</head>
<body style="margin-top: 15px">
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">Ventas</td>
                    <td class="auto-style5">
                        <asp:Label ID="LblUsuario" runat="server"></asp:Label>
                        <table class="auto-style1">
                        <tr>
                            <td class="auto-style10">
                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Ventas/AgregarVenta.aspx">Agregar venta</asp:HyperLink>
                            </td>
                            <td class="auto-style11">
                                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Ventas/EliminarVenta.aspx">Eliminar venta</asp:HyperLink>
                            </td>
                            <td class="auto-style18">
                                <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Ventas/BuscarVenta.aspx">Buscar venta</asp:HyperLink>
                            </td>
                            <td class="auto-style8">
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
                Modificar venta</p>
            <p >
                <asp:TextBox ID="txtbuscar" runat="server" CssClass="auto-style19" Width="229px"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="Buscar" Width="86px" />
            </p>
        </div>
        <asp:GridView ID="gvmodificarventa" runat="server" AutoGenerateColumns="False" AutoGenerateEditButton="True" Width="755px">
            <Columns>
                <asp:TemplateField HeaderText="Codigo Cliente">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtcodclienteedit" runat="server" Text='<%# Bind("Cod_Cliente_V") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblcodcliente" runat="server" Text='<%# Bind("Cod_Cliente_V") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Total Factura">
                    <EditItemTemplate>
                        <asp:TextBox ID="txttotaledit" runat="server" Text='<%# Bind("TotalFactura_V") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblCantidad" runat="server" Text='<%# Bind("TotalFactura_V") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Fecha de Venta">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtfechaedit" runat="server" Text='<%# Bind("FechaFactura_V") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblFecha" runat="server" Text='<%# Bind("FechaFactura_V") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
