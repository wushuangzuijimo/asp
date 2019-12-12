<!--#include file="connSqlServer.asp" -->
<!doctype html>
<html>
<head>

<meta charset="utf-8">
</head>

<body>
	
	<%
	set rs = server.CreateObject("adodb.recordset")
	sql="delete from student where uid="&request("uid")
	conn.Execute sql
	response.Write("<script> alert('删除成功!');window.location.href='list.asp'</script>")
	%>
</body>
</html>
	



