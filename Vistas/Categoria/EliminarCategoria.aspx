<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EliminarCategoria.aspx.cs" Inherits="Vistas.Categoria.EliminarCategoria" %>

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
            height: 21px;
        }
        .auto-style11 {
            width: 294px;
            text-align: center;
            height: 21px;
        }
        .auto-style9 {
            text-align: center;
            width: 338px;
            height: 21px;
        }
        .auto-style8 {
            text-align: center;
            height: 21px;
        }
        .auto-style12 {
            text-align: center;
            font-size: large;
        }
        .auto-style13 {
            width: 571px;
            text-align: right;
        }
        .auto-style15 {
            width: 334px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
    <table class="auto-style1">
        <tr>
            <td class="auto-style3">Categorias</td>
            <td class="auto-style5">Usuario<table class="auto-style1">
                <tr>
                    <td class="auto-style10">
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Categoria/AgregarCategoria.aspx">Crear Categoria</asp:HyperLink>
                    </td>
                    <td class="auto-style11">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Categoria/EliminarCategoria.aspx">Eliminar Categoria</asp:HyperLink>
                    </td>
                    <td class="auto-style9">
                        <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Categoria/BuscarCategoria.aspx">Buscar Categoria</asp:HyperLink>
                    </td>
                    <td class="auto-style8">
                    </td>
                </tr>
                </table>
            </td>
        </tr>
    </table>
        </div>
        <p class="auto-style12">
            <strong>Eliminar Categoria</strong></p>
        <table class="auto-style1">
            <tr>
                <td class="auto-style13">Ingrese ID de Categoria: </td>
                <td class="auto-style15">
                    <asp:TextBox ID="txtIdSuc" runat="server" Width="320px"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="btnElliminar" runat="server" OnClick="btnElliminar_Click" Text="Eliminar" Width="117px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style15">
                    <asp:Label ID="lblmensaje" runat="server"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
