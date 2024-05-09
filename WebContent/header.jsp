<!DOCTYPE HTML>
<html>

<head>
<title>Voidmain</title>
<meta name="description" content="website description" />
<meta name="keywords" content="website keywords, website keywords" />
<meta http-equiv="content-type"
	content="text/html; charset=windows-1252" />
<link rel="stylesheet" type="text/css" href="style/style.css"
	title="style" />
</head>

<body>
	<div id="main">
		<div id="header">
			<div id="logo">
				<div id="logo_text">
					<!-- class="logo_colour", allows you to change the colour of the text -->
					<
					<h1>
						<a href="#">Uplifting the Farmer Through <span
							class="logo_colour">Connected Ecosystem</span></a>
					</h1>
				</div>
			</div>
			<div id="menubar">
				<ul id="menu">

					<%
						String role = (String) request.getSession().getAttribute("role");
						String username = (String) request.getSession().getAttribute(
								"username");

					if (role.equals("admin")) {
					%>
							<li><a href="addmarket.jsp">Add Market</a></li>
							<li><a href="viewmarket.jsp">View Market</a></li>
							
							<li><a href="addloans.jsp">Add Loan</a></li>
							<li><a href="viewloans.jsp">View Loans</a></li>
					<%
						}
					%>
					<%
						if (role.equals("former")) {
					%>
							<li><a href="addcropsale.jsp">Add Crop Sale</a></li>
							<li><a href="viewcropsale.jsp">View Crop Sale</a></li>
					<%
						}
					%>

					<%
						if (role.equals("user")) {
					%>
							<li><a href="viewcropsale.jsp">View Crop Sale</a></li>
							<li><a href="viewfertilizer.jsp">View Fertilizer</a></li>
							<li><a href="viewmarket.jsp">View Market</a></li>
							<li><a href="viewmachinary.jsp">View Machinery</a></li>
					<%
						}
					%>

					<li><a href="logout.jsp">Logout</a></li>

				</ul>
			</div>
		</div>
		<div id="site_content">
			<div class="sidebar">
				<ul>
				
					<%
						if (role.equals("admin")) {
					%>
							<li><a href="addfertilizer.jsp">Add Fertilizer</a></li>
							<li><a href="viewfertilizer.jsp">View Fertilizer</a></li>
					<%
						}
					%>
					
					<%
						if (role.equals("former")) {
					%>
							<li><a href="addmachinary.jsp">Add Machinery</a></li>
						    <li><a href="viewmachinary.jsp">View Machinery</a></li>
						    
							<li><a href="addlandrental.jsp">Add Land Rental</a></li>
							<li><a href="viewlandrental.jsp">View Land Rental</a></li>
							
							<li><a href="viewloans.jsp">View Loans</a></li>
							<li><a href="viewmarket.jsp">View Market</a></li>
							<li><a href="viewfertilizer.jsp">View Fertilizer</a></li>
					<%
						}
					%>
					
				</ul>
			</div>
			<div id="content">