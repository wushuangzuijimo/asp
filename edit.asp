<!--#include file="connSqlServer.asp" -->
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<link
            href="https://cdn.bootcss.com/twitter-bootstrap/4.3.1/css/bootstrap.min.css"
            rel="stylesheet">
			<style>
				div{
					width: 50%;
					margin: auto;
					margin-top: 10px;
				}
				button{
					width:100%; 
					margin-top: 10px;
				}
				#app{
					margin-top: 100px;
				}
				
			</style>
	
<title>无标题文档</title>
</head>

<body>
	
	<%

	set rs = server.CreateObject("adodb.recordset")
	sql="select * from student where uid="&request("uid")
	rs.open sql,conn,1,3
	%>
	
	<div id="app">
	
	<center><caption><h1>用户修改页面</h1></caption></center>
	 <form method="post"  action="editStudent.asp?uid=<%=rs("uid")%>">
		<div>
			<span>ID</span>
			<input type="text" name="uid"  class="form-control" value="<%=rs("uid")%>"   >
		</div>
		<div>
			<span>NAME</span>
			<input type="text" name="uname" class="form-control" value="<%=rs("uname")%>" >
		</div>
		<div>
		<button class="btn btn-success ">update</button>
		</div>
		
	</form> 
	</div>
</body>
</html>
