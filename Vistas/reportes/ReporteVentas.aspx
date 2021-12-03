<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReporteVentas.aspx.cs" Inherits="Vistas.reportes.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            REPORTE DE VENTAS SEGUN UN RANGO DE FECHAS<br />
            <table class="auto-style1">
                <tr>
                    <td>DE:</td>
                    <td>
                        <asp:TextBox ID="TxtInicio" runat="server"></asp:TextBox>
                    </td>
                    <td rowspan="2">
                        <asp:Button ID="BtnMostrarReporte" runat="server" OnClick="BtnMostrarReporte_Click" Text="Mostrar reporte" />
                    </td>
                </tr>
                <tr>
                    <td>HASTA:</td>
                    <td>
                        <asp:TextBox ID="TxtFinal" runat="server"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <table class="auto-style1">
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:GridView ID="GrdReporte" runat="server" AutoGenerateSelectButton="True" OnSelectedIndexChanging="GrdReporte_SelectedIndexChanging">
                        </asp:GridView>
                    </td>
                    <td>
                        <asp:GridView ID="grdDetalleVentas" runat="server">
                        </asp:GridView>
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
