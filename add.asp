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
	<div  id="app">
	<center><caption><h1>用户添加页面</h1></caption></center>
	<form method="post"  action="addStudent.asp">
		<div>
			<span>ID</span>
			<input type="text" name="uid"  class="form-control" placeholder="请输入ID">
		</div>
		<div>
			<span>NAME</span>
			<input type="text" name="uname" class="form-control" placeholder="请输入NAME">
		</div>
		<div>
		<span>
		<button class="btn btn-success "    >add</button>
		</span>
		</div>
		
	</form>
	
	</div>
</body>
</html>
