<%@page import="com.jobportal.project.AdminConModel"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>NavBar</title>
</head>
<body>
	<nav class="navbar navbar-expand-sm bg-dark navbar-dark justify-content-between">
		<ul class="navbar-nav">
			<li class="nav-item active"><a class="nav-link" href="#">Active</a>
			</li>
			<li class="nav-item active"><a class="nav-link" href="#">Active</a>
			</li>
			<li class="nav-item active"><a class="nav-link" href="#">Active</a>
			</li>
			<li class="nav-item active"><a class="nav-link" href="#">Active</a>
			</li>
		</ul>
		<%
		HttpSession sess=request.getSession(false);
		String userType=sess.getAttribute("userType").toString();
    if(userType.equals("adminSession"))
    {
    	AdminConModel acm=new AdminConModel();
    	
    	int pendingJobs=acm.getPendingCounts();
    	if(pendingJobs>0){
    %>
			 
			<button class="btn btn-outline-danger my-2 my-sm-0" type="submit">
				Pending <span class="badge badge-light"><%=pendingJobs%></span>
			</button>
			

		<% 
		}
    }
		%>
	</nav><br/><br/>
</body>
</html>