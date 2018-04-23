using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using DevExpress.XtraCharts;
using System.Diagnostics;

public partial class _Default : System.Web.UI.Page 
{

    protected void Page_Load(object sender, EventArgs e) {
        this.WebChartControl1.Width = new Unit(Convert.ToInt32(chartWidth.Value));
    }

    protected void WebChartControl1_CustomCallback(object sender, DevExpress.XtraCharts.Web.CustomCallbackEventArgs e) {
        this.WebChartControl1.Width = new Unit(Convert.ToInt32(chartWidth.Value));
    }

}
