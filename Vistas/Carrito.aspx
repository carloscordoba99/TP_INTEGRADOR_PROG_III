<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Carrito.aspx.cs" Inherits="Vistas.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Carrito<br />
            <asp:GridView ID="GrdCarrito" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:TemplateField HeaderText="ID producto"></asp:TemplateField>
                    <asp:TemplateField HeaderText="Descripción"></asp:TemplateField>
                    <asp:TemplateField HeaderText="Precio"></asp:TemplateField>
                    <asp:TemplateField HeaderText="Cantidad"></asp:TemplateField>
                    <asp:TemplateField HeaderText="Total"></asp:TemplateField>
                </Columns>
            </asp:GridView>
            <asp:GridView ID="grdPrueba" runat="server">
            </asp:GridView>
        </div>
    </form>
</body>
</html>
