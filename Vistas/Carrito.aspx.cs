using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Vistas
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack == false)
            {
                DataTable dt = Session["Pedido"] as DataTable;
                GrdCarrito.DataSource = dt;
                GrdCarrito.DataBind();
            }

        }
    }
}