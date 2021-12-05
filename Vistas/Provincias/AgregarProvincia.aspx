<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarProvincia.aspx.cs" Inherits="Vistas.Provincias.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">



        .auto-style1 {
            width: 100%;
            background-color:coral;
        }
        table {
		
            margin: 0 auto;
		
            border-collapse: collapse;
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
        .auto-style14 {
            width: 62%;
            margin-left: 34px;
            text-align:center;
        }
        .auto-style17 {
            width: 258px;
            text-align: right;
        }
        .auto-style19 {
            width: 238px;
        }
        .auto-style29 {
            width: 303px;
        }
        .auto-style20 {
            width: 269px;
        }
        .auto-style13 {
            width: 258px;
            height: 30px;
        }
        .auto-style21 {
            width: 238px;
            height: 30px;
            text-align: center;
        }
        .auto-style32 {
            width: 303px;
            height: 30px;
        }

        .auto-style22 {
            width: 269px;
            height: 30px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">Provincias</td>
                    <td class="auto-style5">
                        <asp:Label ID="LblUsuario" runat="server"></asp:Label>
                        <table class="auto-style1">
                        <tr>
                            <td class="auto-style10">
                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Provincias/AgregarProvincia.aspx">Agregar provincia</asp:HyperLink>
                            </td>
                            <td class="auto-style11">
                                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Provincias/EliminarProvincia.aspx">Eliminar provincia</asp:HyperLink>
                            </td>
                            <td class="auto-style9">
                                <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Provincias/BuscarProvincia.aspx">Buscar provincia</asp:HyperLink>
                            </td>
                            <td class="auto-style8">
                                <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/PanelAdm.aspx">Inicio</asp:HyperLink>
                            </td>
                        </tr>
                        </table>
                    </td>
                </tr>
            </table>
            <p class="auto-style12">
                Agregar provincia&nbsp;&nbsp;&nbsp; </p>
            <table class="auto-style14" align="center">
                <tr>
                    <td class="auto-style17">Nombre provincia: </td>
                    <td class="auto-style19">
                        <asp:TextBox ID="TxtNombreProvincia" runat="server" Width="216px"></asp:TextBox>
                    </td>
                    <td class="auto-style29">
                        <asp:RequiredFieldValidator ID="rfv" runat="server" ControlToValidate="TxtNombreProvincia" ValidationGroup="Group1">Ingrese Razon Social</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style20">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style19">&nbsp;</td>
                    <td class="auto-style29">&nbsp;</td>
                    <td class="auto-style20">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13"></td>
                    <td class="auto-style21">
                        <asp:Button ID="BtnAgregar" runat="server" Text="Agregar" Width="129px" OnClick="BtnAgregar_Click" ValidationGroup="Group1" />
                    </td>
                    <td class="auto-style32">
                        <asp:Label ID="LblMensaje" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style22">
                        &nbsp;</td>
                </tr>
            </table>
        <div>
            <asp:GridView ID="grdProvincias" runat="server">
            </asp:GridView>
        </div>
    </form>
</body>
</html>
