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
        .auto-style2 {
            width: 99px;
        }
        .auto-style3 {
            width: 99px;
            height: 34px;
        }
        .auto-style4 {
            height: 34px;
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
                    <td class="auto-style3">DE:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TxtInicio" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtInicio" ErrorMessage="RequiredFieldValidator" ValidationGroup="Group1">Ingrese una fecha</asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RevFechaInicio" runat="server" ControlToValidate="TxtInicio" ErrorMessage="dd/mm/yyyy" SetFocusOnError="True" ValidationExpression="^([0]?[1-9]|[1-2][0-9]|[3][0-1])/([0]?[1-9]|[1][0-2])/([1-3][0-9][0-9][0-9])$" ValidationGroup="Group1">Por favor, ingresar la fecha de la siguiente manera: día/mes/año</asp:RegularExpressionValidator>
                    </td>
                    <td rowspan="2">
                        <asp:Button ID="BtnMostrarReporte" runat="server" OnClick="BtnMostrarReporte_Click" Text="Mostrar reporte" ValidationGroup="Group1" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">HASTA:</td>
                    <td>
                        <asp:TextBox ID="TxtFinal" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtFinal" ErrorMessage="RequiredFieldValidator" ValidationGroup="Group1">Ingrese una fecha</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RevFechaInicio0" runat="server" ControlToValidate="TxtFinal" ErrorMessage="dd/mm/yyyy" SetFocusOnError="True" ValidationExpression="^([0]?[1-9]|[1-2][0-9]|[3][0-1])/([0]?[1-9]|[1][0-2])/([1-3][0-9][0-9][0-9])$" ValidationGroup="Group1">Por favor, ingresar la fecha de la siguiente manera: día/mes/año</asp:RegularExpressionValidator>
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
