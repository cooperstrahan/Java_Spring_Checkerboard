<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="javax.servlet.http.HttpServletRequest"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dynamic Checkerboard</title>

<link rel="stylesheet" type="text/css" href="layout.css"/>
</head>
<body>	
	
	<%String width = request.getParameter("width");%>
	<%String height = request.getParameter("height");%>
	
	<%!
	int w = 0;
	int h = 0;
	%>
	
	<%if(width != null){ %>
		<% w = Integer.parseInt(width); %>
	<%} %>
	
	<%if(height != null){ %>
		<% h = Integer.parseInt(height); %>
	<%} %>
	
	<div class="grid-container">
	<%for(int i = 0; i < h; i++){ %>
		<div class="row">
		<%for(int j = 0; j < w; j++){ %>
			<%if( ( i%2==0 && j%2==0) || (i%2==1 && j%2==1) ) {%>
				<div class="red item">A</div>
				<% } else { %>
				<div class="blue item">B</div>
				<% } %>
		<% } %>
		</div>
	<% } %>
	</div>
</body>
</html>