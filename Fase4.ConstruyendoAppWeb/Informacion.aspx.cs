using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Fase4.ConstruyendoAppWeb
{
    public partial class Informacion : System.Web.UI.Page
    {
        private static string dbConnectionString = ConfigurationManager.ConnectionStrings["DataBaseConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            llenarGrid();
        }
        private void llenarGrid()
        {
            var queryString = "Select * from directoriotelefonico_eventos;";
            var dbConnection = new MySqlConnection(dbConnectionString);
            var dataAparter = new MySqlDataAdapter(queryString, dbConnection);
            var commanBuilder = new MySqlCommandBuilder(dataAparter);
            var ds = new DataSet();
            dataAparter.Fill(ds);
            grdArch.DataSource = ds.Tables[0];
            grdArch.DataBind();
        }
    }
}