using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Asp_DropDown
{
    public partial class DropDown : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetProductPriceByName("Select");
            }
            else
            {
                Response.Cache.SetExpires(DateTime.Now.AddSeconds(30));
                Response.Cache.VaryByParams["None"] = true;
                Response.Cache.SetCacheability(HttpCacheability.ServerAndPrivate);
            }

        }

        protected void GetProductPriceByName(string PName)
        {
            string connString = "Data Source = LAPTOP-6F0KDF5Q\\SQLEXPRESS; initial catalog=master;integrated security = true;";
            SqlConnection conn = new SqlConnection(connString);
            SqlDataAdapter da = new SqlDataAdapter("getProductPriceByName", conn);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            SqlParameter param = new SqlParameter();
            param.ParameterName = "@PName";
            param.Value = PName;
            da.SelectCommand.Parameters.Add(param);


            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            this.img.ImageUrl = "~/Images/" + DropDownList1.SelectedValue + "jpg";
            GetProductPriceByName(DropDownList1.SelectedValue);
            Label1.Text = this.GridView1.Rows[0].Cells[0].Text;
        }
    }
}