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
        .auto-style18 {
            width: 191px;
            text-align: center;
            height: 23px;
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
            
        </div>
        <div>

            <asp:GridView ID="grdVentas" runat="server" AutoGenerateColumns="False" HorizontalAlign="Center" AutoGenerateEditButton="True" OnRowCancelingEdit="grdVentas_RowCancelingEdit" OnRowEditing="grdVentas_RowEditing" OnRowUpdating="grdVentas_RowUpdating">
                <Columns>
                    <asp:TemplateField HeaderText="Codigo Venta">
                        <EditItemTemplate>
                            <asp:Label ID="lbl_eit_CodVenta" runat="server" Text='<%# Bind("Cod_Venta_V") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lbl_it_CodigoVenta" runat="server" Text='<%# Bind("Cod_Venta_V") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Codigo Cliente">
                        <EditItemTemplate>
                            <asp:Label ID="txt_eit_CodCliente" runat="server" Text='<%# Bind("Cod_Cliente_V") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lbl_it_CodCliente" runat="server" Text='<%# Bind("Cod_Cliente_V") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Total Factura">
                        <EditItemTemplate>
                            <asp:TextBox ID="txt_eit_Totalfact" runat="server" Text='<%# Bind("TotalFactura_V") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lbl_eit_TotalFact" runat="server" Text='<%# Bind("TotalFactura_V") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Fecha Factura">
                        <EditItemTemplate>
                            <asp:TextBox ID="txt_eit_FechaF" runat="server" Text='<%# Bind("FechaFactura_V") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lbl_eit_FechaFact" runat="server" Text='<%# Bind("FechaFactura_V") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>

        </div>
    </form>
</body>
</html>
