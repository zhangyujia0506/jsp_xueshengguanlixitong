<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<style type="text/css">
body {
	font: 12px/ 16px Arial, Helvetica, sans-serif;
     }

#fileQueue {
	overflow: auto;
	border: 1px solid #E5E5E5;
	margin-bottom: 10px;
}
</style>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>上传文件</title>
		<link href="include/uploadify.css" rel="stylesheet"
			type="text/css" />
			<link rel="stylesheet" type="text/css" href="css/tablestyle.css">
		<script type="text/javascript" src="include/jquery-1.3.2.min.js"></script>
		<script language="javascript"
			src="include/swfobject.js"></script>
		<script language="javascript"
			src="include/jquery.uploadify.v2.1.0.js"></script>

		<script type="text/javascript"> 
     function showResult(){//删除显示的上传成功结果   
          $("#result").html("");   
        }   
    
    $(document).ready(function() {
        $('#fileInput').uploadify({   
        'uploader': 'include/uploadify.swf',
        'script': 'uploadifyAction',   //指定服务端处理类的入口
        'folder': 'temp',   
        'cancelImg': 'include/cancel.png',
        'fileDataName': 'fileInput', //和input的name属性值保持一致就好，Struts2就能处理了   
        'queueID': 'fileQueue',   
        'auto': false,//是否选取文件后自动上传   
        'multi': true,//是否支持多文件上传
        'simUploadLimit' : 5,//每次最大上传文件数   
        'buttonText': 'Browse Files',//按钮上的文字 
          
        'displayData': 'percentage',//有speed和percentage两种，一个显示速度，一个显示完成百分比    
        'onComplete': function (event, queueID, fileObj, response, data){   
                   $("#result").html(response);//显示上传成功结果   
                  setInterval("showResult()",10000);//10秒后删除显示的上传成功结果   
          }  
           
        });   
           
    });   
</script>
</head>
<jsp:include page="isLogin.jsp"></jsp:include>
	<body>
	<p><br/><br/></p>
	<div class="login">
		<h1>
			上传文件
		</h1>
	
		<p align="center"><input type="file" name="fileInput" id="fileInput" /></p>
		<br />
		<p align="center"><a href="javascript:$('#fileInput').uploadifyUpload();">开始上传</a></p>
		<p align="center"><a href="javascript:$('#fileInput').uploadifyClearQueue();">取消上传队列</a></p>
		
		<div id="fileQueue" align="center"></div>
		
		<br />
		<br />
		<div id="result" align="center"></div>
		</div>
		<div class="login-help">
	<a href="main.jsp"><p align=center>返回主页面</p> </a>
<br/>
<p>Copyright 2017 学生学籍信息管理系统. All Rights Reserved.</p>
</div>
	</body>
</html>

