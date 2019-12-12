<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>无标题文档</title>
</head>

<body>
	<%
	Set   conn=Server.CreateObject( "ADODB.Connection") 
	strConn= "Provider=sqloledb;Data Source=.;Initial Catalog=wushuangzuijimo;User Id=sa;Password=zxczxc;"
	conn.open   strConn  
	%>
</body>
</html>




