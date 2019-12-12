<!--#include file="connSqlServer.asp" -->
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>无标题文档</title>
</head>

<body>
	
	
	
	<%
	
	
	
	Dim strSql
	StrSql="insert  into student values(4,'老王') "
	conn.Execute(StrSql)
	Response.Write "已经成功添加,请查看结果"
	%>
	<a href="list.asp">go</a>
	
	
</body>
</html>
