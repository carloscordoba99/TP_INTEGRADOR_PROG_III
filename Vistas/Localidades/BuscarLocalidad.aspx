<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BuscarLocalidad.aspx.cs" Inherits="Vistas.Localidades.WebForm2" %>

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
        </style>
</head>
<body>
    <form id="form1" runat="server">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">Localidad</td>
                    <td class="auto-style5">
                        <asp:Label ID="LblUsuario" runat="server"></asp:Label>
                        <table class="auto-style1">
                        <tr>
                            <td class="auto-style10">
                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Localidades/AgregarLocalidad.aspx">Agregar localidad</asp:HyperLink>
                            </td>
                            <td class="auto-style11">
                                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Localidades/EliminarLocalidad.aspx">Eliminar localidad</asp:HyperLink>
                            </td>
                            <td class="auto-style9">
                                <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Localidades/BuscarLocalidad.aspx">Buscar localidad</asp:HyperLink>
                            </td>
                            <td class="auto-style8">
                                <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/PanelAdm.aspx">Inicio</asp:HyperLink>
                            </td>
                        </tr>
                        </table>
                    </td>
                </tr>
            </table>
        <div>
            <p class="auto-style12">
                Buscar Localidad&nbsp;&nbsp;&nbsp; </p>
            <table class="auto-style14" align="center">
                <tr>
                    <td class="auto-style17">Id Provincia: </td>
                    <td class="auto-style19">
                        <asp:TextBox ID="txtIdLocalidad" runat="server" Width="216px"></asp:TextBox>
                    </td>
                    <td class="auto-style29">
                        <asp:Button ID="BtnBuscar" runat="server" Text="Buscar" Width="129px" OnClick="BtnBuscar_Click" ValidationGroup="Group1" />
                    </td>
                    <td class="auto-style20">
                        <asp:Button ID="BtnMostrarTodos" runat="server" Text="Mostrar todos" Width="129px" OnClick="BtnMostrarTodos_Click" ValidationGroup="Group1" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style19">
                        <asp:Label ID="LblMensaje" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style29">&nbsp;</td>
                    <td class="auto-style20">&nbsp;</td>
                </tr>
                </table>
            <asp:GridView ID="grdLocalidades" runat="server" AutoGenerateColumns="False" AutoGenerateEditButton="True" OnRowEditing="grdLocalidades_RowEditing" OnRowUpdating="grdLocalidades_RowUpdating" >
                <Columns>
                    <asp:TemplateField HeaderText="Id Localidad">
                        <EditItemTemplate>
                            <asp:Label ID="lbl_eit_IdLocalidad" runat="server" Text='<%# Bind("IdLocalidad") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lbl_it_IdLocalidad" runat="server" Text='<%# Bind("IdLocalidad") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Nombre Localidad">
                        <EditItemTemplate>
                            <asp:TextBox ID="txt_eit_NombreLocalidad" runat="server" Text='<%# Bind("NombreLocalidad") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lbl_it_NombreLocalidad" runat="server" Text='<%# Bind("NombreLocalidad") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Id Provincia">
                        <EditItemTemplate>
                            <asp:TextBox ID="txt_eit_IdLocalidad" runat="server" Text='<%# Bind("IdProvincia") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lbl_it_IdProvincia" runat="server" Text='<%# Bind("IdProvincia") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
