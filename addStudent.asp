<!--#include file="connSqlServer.asp" -->



<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>无标题文档</title>

<link
            href="https://cdn.bootcss.com/twitter-bootstrap/4.3.1/css/bootstrap.min.css"
            rel="stylesheet">
</head>

<body>
	
	
	<%

	
	
	
	uid=request.Form("uid")
	uname=request.Form("uname")
	
	sql="insert into student  values ('"+uid+"','"+uname+"')" 
	conn.execute sql
	conn.close
	set conn =nothing
	response.Write("<script> alert('添加成功!');window.location.href='list.asp'</script>")
	
	
	%>
	
	
	
	
	
	
	
	
	
	
	
</body>
</html>




