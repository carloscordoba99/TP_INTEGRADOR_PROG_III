<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PanelAdm.aspx.cs" Inherits="Vistas.PanelAdm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 271px;
        }
        .auto-style2 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel1" runat="server" Height="586px" Width="259px">
                <asp:Panel ID="Panel2" runat="server" CssClass="auto-style1" Height="35px" Width="801px" style="text-align:right">
                    <asp:Button ID="BtnCerrarSesion" runat="server" OnClick="BtnCerrarSesion_Click" Text="Cerrar Sesión" Width="116px" />
                    <asp:Label ID="LblUsuario" runat="server"></asp:Label>
                </asp:Panel>
                <asp:Panel ID="Panel3" runat="server" CssClass="auto-style1" Height="40px" Width="801px" style="text-align:center">
                    PANEL ADMINISTRADOR</asp:Panel>&nbsp;<div class="auto-style2">
                    <br />
                    <asp:Button ID="btnProductos" runat="server" Font-Bold="True" Height="30px" Text="Productos" Width="180px" OnClick="btnProductos_Click" />
                    <br />
                    <br />
                    <asp:Button ID="btnCategorias" runat="server" Font-Bold="True" Height="30px" Text="Categorias" Width="180px" OnClick="btnCategorias_Click" />
                    <br />
                    <br />
                    <asp:Button ID="btnDetalleventas" runat="server" Font-Bold="True" Height="30px" Text="Detalle Ventas" Width="180px" OnClick="btnDetalleventas_Click" />
                    <br />
                    <br />
                    <asp:Button ID="btnProveedores" runat="server" Font-Bold="True" Height="30px" Text="Proveedores" Width="180px" OnClick="btnProveedores_Click" />
                    <br />
                    <br />
                    <asp:Button ID="btnUsuarios" runat="server" Font-Bold="True" Height="30px" Text="Usuarios" Width="180px" OnClick="btnUsuarios_Click" />
                    <br />
                    <br />
                    <asp:Button ID="btnVentas" runat="server" Font-Bold="True" Height="30px" Text="Ventas" Width="180px" OnClick="btnVentas_Click" />
                    <br />
                    <br />
                    <asp:Button ID="BtnReportes" runat="server" Font-Bold="True" Height="30px" Text="Reporte ventas" Width="180px" OnClick="BtnReportes_Click" />
                    <br />
                </div>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
