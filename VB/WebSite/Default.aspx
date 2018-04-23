<%@ Page Language="vb" AutoEventWireup="true"  CodeFile="Default.aspx.vb" Inherits="_Default" %>
<%@ Register Assembly="DevExpress.XtraCharts.v8.2.Web, Version=8.2.2.0, Culture=neutral, PublicKeyToken=9B171C9FD64DA1D1"
	Namespace="DevExpress.XtraCharts.Web" TagPrefix="dxchartsui" %>
<%@ Register Assembly="DevExpress.XtraCharts.v8.2, Version=8.2.2.0, Culture=neutral, PublicKeyToken=9B171C9FD64DA1D1"
	Namespace="DevExpress.XtraCharts" TagPrefix="cc1" %>
<%@ Register Assembly="DevExpress.Web.ASPxEditors.v8.2, Version=8.2.2.0, Culture=neutral, PublicKeyToken=9B171C9FD64DA1D1"
	Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dxe" %>
<%@ Register Assembly="DevExpress.Web.v8.2, Version=8.2.2.0, Culture=neutral, PublicKeyToken=9B171C9FD64DA1D1"
	Namespace="DevExpress.Web.ASPxCallback" TagPrefix="dxcb" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
<title>Untitled Page</title>
<script type="text/javascript">
function Resized() {
var callbackState = window.document.form1.elements['callbackState'].value;
if (callbackState == 0)
	DoCallback();
}

function DoCallback(){
	window.document.form1.elements['chartWidth'].value = document.body.offsetWidth;
	chart.PerformCallback();
}

function ResizeChart(s, e) {
	window.document.form1.elements['callbackState'].value = 0;
	s.GetMainElement().style.width = window.document.form1.elements['chartWidth'].value + "px";
}

function ResetCallbackState() {
	window.document.form1.elements['callbackState'].value = 1;
}
</script>
</head>
<body onResize="Resized()" onload="DoCallback()">
	<form id="form1" runat="server">
	<div>
		&nbsp; &nbsp;
		&nbsp;&nbsp;&nbsp;
		<dxchartsui:WebChartControl ID="WebChartControl1" runat="server" ClientInstanceName="chart"
			DiagramTypeName="XYDiagram" Height="387px" Width="447px" ShowLoadingPanel="False">
			<SeriesSerializable>
				<cc1:Series LabelTypeName="SideBySideBarSeriesLabel" Name="Series 1" PointOptionsTypeName="PointOptions"
					SeriesViewTypeName="SideBySideBarSeriesView">
					<points>
<cc1:SeriesPoint Values="1" ArgumentSerializable="A"></cc1:SeriesPoint>
<cc1:SeriesPoint Values="2" ArgumentSerializable="B"></cc1:SeriesPoint>
<cc1:SeriesPoint Values="3" ArgumentSerializable="C"></cc1:SeriesPoint>
</points>
					<view hiddenserializablestring="to be serialized"></view>
					<label hiddenserializablestring="to be serialized" overlappingoptionstypename="OverlappingOptions">
						<fillstyle filloptionstypename="SolidFillOptions">
<Options HiddenSerializableString="to be serialized"></Options>
</fillstyle>
					</label>
					<pointoptions hiddenserializablestring="to be serialized"></pointoptions>
					<legendpointoptions hiddenserializablestring="to be serialized"></legendpointoptions>
				</cc1:Series>
			</SeriesSerializable>
			<SeriesTemplate LabelTypeName="SideBySideBarSeriesLabel" PointOptionsTypeName="PointOptions"
				SeriesViewTypeName="SideBySideBarSeriesView">
				<View HiddenSerializableString="to be serialized">
				</View>
				<Label HiddenSerializableString="to be serialized" OverlappingOptionsTypeName="OverlappingOptions">
					<FillStyle FillOptionsTypeName="SolidFillOptions">
						<Options HiddenSerializableString="to be serialized" />
					</FillStyle>
				</Label>
				<PointOptions HiddenSerializableString="to be serialized">
				</PointOptions>
				<LegendPointOptions HiddenSerializableString="to be serialized">
				</LegendPointOptions>
			</SeriesTemplate>
			<ClientSideEvents EndCallback="function(s, e) {
ResizeChart(s,e);
}" BeginCallback="function(s, e) {
ResetCallbackState();
}" />
			<Diagram>
				<axisx visibleinpanesserializable="-1">
<Range SideMarginsEnabled="True"></Range>
</axisx>
				<axisy visibleinpanesserializable="-1">
<Range SideMarginsEnabled="True"></Range>
</axisy>
			</Diagram>
			<FillStyle FillOptionsTypeName="SolidFillOptions">
				<Options HiddenSerializableString="to be serialized" />
			</FillStyle>
		</dxchartsui:WebChartControl>
		<input id="chartWidth" type="hidden" runat="server" value="400" />
		<input id="callbackState" type="hidden" runat="server" value="0" /></div>
	</form>
</body>
</html>