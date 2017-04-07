<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../../pub/constants.inc" %>
<%@ include file="../../pub/tags.inc" %>
<!DOCTYPE html>
<html>
	<head>
		<%@ include file="../../pub/head.inc" %>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta http-equiv="pragma" content="no-cache"/>
		<meta http-equiv="cache-control" content="no-cache"/>
		<meta http-equiv="expires" content="0"/>
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
		<meta http-equiv="description" content="This is my page"/>
		<title>代付违约金记录</title>
	</head>
<body>
	<table id="penaltyRecorddg" title=""></table>
	<div id="penaltyRecordtb" style="padding:5px;height:auto">
		<form id="searchform" method="post">
		<div>
			收款方: 
			<select class="easyui-combobox" id="userType" name="userType" editable="false" panelHeight="auto" style="width:100px">
				<option value="">请选择</option>
				<option value="nps">农批商</option>
				<option value="logis">物流公司</option>
			</select>&nbsp;&nbsp;&nbsp;&nbsp;
			转结状态:
			 <select class="easyui-combobox" id="hasChange"  name="hasChange" editable="false" panelHeight="auto" style="width:100px">
				<option value="">请选择</option>
				<option value="1">已转结</option>
				<option value="0">未转结</option>
			</select>&nbsp;&nbsp;&nbsp;&nbsp;
			代付状态: 
			<select class="easyui-combobox" id="payStatus" name="payStatus" editable="false" panelHeight="auto" style="width:100px">
				<option value="">请选择</option>
				<option value="0">待付款</option>
				<option value="1">付款成功</option>
			</select>&nbsp;&nbsp;&nbsp;&nbsp;
			关联订单号:		
			<input type="text" id="orderNo" name="orderNo" maxlength="100"
								style="width:150px" placeholder="请输入订单号">&nbsp;&nbsp;&nbsp;&nbsp;
			收款方手机:  
			<input type="text" id="payeeMobile" name="payeeMobile" maxlength="100"
								style="width:150px" placeholder="请输入收款方手机">&nbsp;&nbsp;&nbsp;&nbsp;
        </div>
        
        <div style="margin-top:10px;">
			下单时间: 
			<input  type="text" id="startOrderTime" name="startOrderTime"  
					onFocus="WdatePicker({onpicked:function(){startOrderTime.focus();},maxDate:'#F{$dp.$D(\'endOrderTime\')}',dateFmt:'yyyy-MM-dd'})"   
					onClick="WdatePicker({onpicked:function(){startOrderTime.focus();},maxDate:'#F{$dp.$D(\'endOrderTime\')}',dateFmt:'yyyy-MM-dd'})" 
					style="width:100px" placeholder="开始时间"> ~
			<input  type="text" id="endOrderTime" name="endOrderTime"   
					onFocus="WdatePicker({onpicked:function(){endOrderTime.focus();},minDate:'#F{$dp.$D(\'startOrderTime\')}',dateFmt:'yyyy-MM-dd'})"   
					onClick="WdatePicker({onpicked:function(){endOrderTime.focus();},minDate:'#F{$dp.$D(\'startOrderTime\')}',dateFmt:'yyyy-MM-dd'})" 
					style="width:100px" placeholder="结束时间">&nbsp;&nbsp;&nbsp;&nbsp;
			代付时间: 
			<input  type="text" id="startPayTime" name="startPayTime"  
					onFocus="WdatePicker({onpicked:function(){startPayTime.focus();},maxDate:'#F{$dp.$D(\'endPayTime\')}',dateFmt:'yyyy-MM-dd'})"   
					onClick="WdatePicker({onpicked:function(){startPayTime.focus();},maxDate:'#F{$dp.$D(\'endPayTime\')}',dateFmt:'yyyy-MM-dd'})" 
					style="width:100px" placeholder="开始时间"> ~
			<input  type="text" id="endPayTime" name="endPayTime"   
					onFocus="WdatePicker({onpicked:function(){endPayTime.focus();},minDate:'#F{$dp.$D(\'startPayTime\')}',dateFmt:'yyyy-MM-dd'})"   
					onClick="WdatePicker({onpicked:function(){endPayTime.focus();},minDate:'#F{$dp.$D(\'startPayTime\')}',dateFmt:'yyyy-MM-dd'})" 
					style="width:100px" placeholder="结束时间">&nbsp;&nbsp;&nbsp;&nbsp;
		</div>
		<div style="margin-top: 5px;">
			<gd:btn btncode="BTNDFWYJJL01"><a class="easyui-linkbutton" iconCls="icon-search" onclick="penaltyRecord.query()">查询</a></gd:btn>&nbsp;&nbsp;
			<a class="easyui-linkbutton" iconCls="icon-reload" onclick="penaltyRecord.cleardata()">重置</a>
			<gd:btn btncode="BTNDFWYJJL02"><a id="exportData" class="easyui-linkbutton" iconCls="icon-account-excel" onclick="penaltyRecord.exportData()">导出EXCEL</a></gd:btn>
		</div>
		</form>
	</div>
	<div id="editDialog" class="easyui-dialog" style="width:1000px;height:500px;" closed="true" modal="true" buttons="#dlg-buttonsEdit">
		<div id="dlg-buttonsEdit" style="text-align:center">
            <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel" onclick="javascript:$('#editDialog').dialog('close')">关闭</a>
        </div>
	</div>
</body>
<script type="text/javascript" src="${CONTEXT}js/penaltyRecord/penaltyRecordList.js"></script>
</html>