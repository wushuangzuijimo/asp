<!doctype html>
<html><head>
	
<title>无标题文档</title>

<meta charset="utf-8">
	<link
            href="https://cdn.bootcss.com/twitter-bootstrap/4.3.1/css/bootstrap.min.css"
            rel="stylesheet">
	
		<style>
	
	
		div{
			height: 300px;
			width: 300px;
			background-color: deeppink;
			text-align: center;
			line-height: 300px;
			
		}
	
        </style>
</head>

<body>
	
	
	<div>this is untitled.asp </div>
	
	<h1>this is index.asp</h1>
	
	<button onclick="ok()"  class="btn  btn-success">点击</button>
	
	
	<input  type="text" class="form-control" placeholder="请输入您的姓名">
	<p>您来访的时间是</p>
<%
	   sj="您来访的时间 "&date() &time()
	   Response.Write sj
	   %>
	
	
	
	
	

		
</body>
</html>
	
<script>
	
function	ok(){
		
		alert("hello");
	}
	
	
	</script>
