<!--#include file="connSqlServer.asp" -->
<!doctype html>
<html>
<head>
<meta charset="utf-8">
	
	<link
            href="https://cdn.bootcss.com/twitter-bootstrap/4.3.1/css/bootstrap.min.css"
            rel="stylesheet">
	<style>
		button{
			width: 45%
		}
		tr{
			text-align: center;
		}
		#app{
			margin-top: 100px;
		}
		#ok{
			margin-left: 200px;
			
			
			
		}
	</style>
<body>
	<%
	set conn = server.CreateObject("adodb.connection")
	conn.open strConn
	
	set rs = Server.CreateObject("ADODB.recordset")
	rs.Open "select * from student", conn,1,3
	
	
	
	
	%>
	
	<%
	if rs.recordcount>0 then
	rs.PageSize=3
	num =rs.recordcount
	page=Cint(request("page"))
	if page<1 then page=1 
	rs.absolutepage =page
	if page<>pagenum then 
	lablenum =rs.PageSize
	else lablenum =num-(page-1)*rs.PageSize
	end if
	
	
	%>
	
	<div id="app">
	<center><caption><h1>USERCRUD</h1></caption></center>
	<table  class="table table-hover table-striped table-bordered table-light">
		<tr>
		<th>uid</th>
		<th>uname</th>
		<th>操作</th>
		</tr>
		<%for i = 1 to lablenum%> 	
		<tr>
			<td><%=rs("uid")%></td>
			<td><%=rs("uname")%></td>
			<td>
				<a href="edit.asp?uid=<%=rs("uid")%>"><button class="btn btn-warning">update</button></a>
				<a href="delStudent.asp?uid=<%=rs("uid")%>"><button class="btn btn-danger">del</button></a>
			</td>
		</tr>

		  
		  
		 <%
		  rs.movenext
		  next
		  rs.close
		  set rs=nothing
		  conn.close
		  set conn=nothing
		  end if
		  %>
	</table>
	<div class="container"  id="ok">
		<p><%=num%>条记录</p>
	  <ul class="pagination pagination-lg">
		<li class="page-item"><a class="page-link" href="?page=1">firstPage</a></li>
	    <li class="page-item"><a class="page-link" href="?page=<%=page-1%>">Previous</a></li>
	    <li class="page-item"><a class="page-link" href="#">1</a></li>
	    <li class="page-item active"><a class="page-link" href="#">2</a></li>
	    <li class="page-item"><a class="page-link" href="#">3</a></li>
		<li class="page-item"><a class="page-link" href="?page=<%=page+1%>">Next</a></li>
		<li class="page-item"><a class="page-link" href="?page=3">finalPage</a></li>
	  </ul>
	</div>
	<div>
		<span>
			<a href="add.asp"><button class="btn btn-success btn-block">add</button></a>
		</span>
	</div>
	
	
	
	</div>
	
</body>
</html>
