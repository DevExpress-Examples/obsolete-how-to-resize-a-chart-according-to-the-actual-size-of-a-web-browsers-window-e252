<!-- default badges list -->
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E252)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))
<!-- default file list end -->
# How to resize a chart according to the actual size of a Web Browser's window
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/e252)**
<!-- run online end -->


<p><strong>[IMPORTANT UPDATE]</strong> Starting with v17.1, we introduced a new set of ASP.NET WebForms controls that provide built-in integration with the <a href="http://getbootstrap.com/">Bootstrap</a> framework. The <a href="https://documentation.devexpress.com/#AspNetBootstrap/CustomDocument118689"><strong>DevExpress Bootstrap Charts</strong></a> are a set of server-side wrappers for JavaScript-based <a href="https://js.devexpress.com/Demos/WidgetsGallery/Demo/Charts/StandardBar/jQuery/Light/">DevExtreme Chart widgets</a> that allow you to use the familiar ASP.NET approach when integrating Bootstrap Charts into your web application and attaching it to the common ASP.NET data source. The most important feature (in context of this example) is the client-side chart rendering engine that allows one to adjust the chart size depending on the actual web browser window size <strong>automatically</strong> (<em>adaptive layout)</em> without requesting the new chart's image from the server. For instance, check the following online demo application: <a href="https://demos.devexpress.com/Bootstrap/Charts/Default.aspx">Charts - Overview</a>.</p>
<p><em>NOTE</em>: The approach described in the original example illustrates how to request a new WebChartControl image when the web browser window is resized. If multiple users try to resize charts, the server may not be able to handle a very large number of requests at once.<br><br></p>
<p>See also

* <a href="https://www.devexpress.com/Support/Center/p/E1242">E1242: How to link a web chart to an ASPxPivotGrid</a>;
* <a href="https://www.devexpress.com/Support/Center/p/E568">E568: How to add a WebChartControl to the ASPxCallbackPanel on its callback</a>;
* <a href="https://www.devexpress.com/Support/Center/p/E258">E258: How to show custom data over WebChartControl using ASPxPopupControl</a>.</p>

<br/>


