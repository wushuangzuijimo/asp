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
	StrSql="update student set uname ='tony' where uid =2"
	conn.Execute(StrSql)
	Response.Write "已经成功修改,请查看结果"
	%>
</body>
</html>




