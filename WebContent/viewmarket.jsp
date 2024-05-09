<%@include file="header.jsp"%>
<%@page import="com.voidmain.dao.HibernateTemplate"%>
<%@page import="com.voidmain.dao.HibernateDAO"%>
<%@page import="com.voidmain.pojo.Market"%>
<%@page import="java.util.List"%>

<div id="content">
	<!-- insert the page content here -->

	<%
		String status = request.getParameter("status");

		if (status != null) {
	%>
	<h1><%=status%></h1>
	<%
		} else {
	%>
	<h1>View Crops Info</h1>
	<%
		}
	%>

	<%
		if (!role.equals("admin")) {
	%>
		<table style="width: 100%; border-spacing: 0;">
			<tr>
				<th>Name</th>
				<th>Address</th>
				<th>View Crops</th>
			</tr>
	
			<%
				for (Market market : HibernateDAO.getMarkets()) {
			%>
	
			<tr>
				<td><%=market.getName()%></td>
				<td><%=market.getAddress()%></td>
				<td><a
					href="viewmarketcrops.jsp?marketid=<%=market.getMarketId()%>">view Crops Info</a></td>
	
	
			</tr>

		<%
			}
		%>
		</table>
	<%
		}
	%>
	
	
	<%
		if (role.equals("admin")) {
	%>
		<table style="width: 100%; border-spacing: 0;">
			<tr>
				<th>Name</th>
				<th>Address</th>
				<th>View Crops</th>
				<th>Add Crops</th>
				<th>Delete</th>
			</tr>
	
			<%
				for (Market market : HibernateDAO.getMarkets()) {
			%>
	
			<tr>
				<td><%=market.getName()%></td>
				<td><%=market.getAddress()%></td>
				<td><a href="viewmarketcrops.jsp?marketid=<%=market.getMarketId()%>">view Crops Info</a></td>
				<td><a href="addmarketcrops.jsp?marketid=<%=market.getMarketId()%>">Add Crop Info</a></td>
				<td><a href="viewmarket.jsp?id=<%=market.getMarketId()%>">delete</a></td>
			</tr>

		<%
			}
		%>
		</table>
	<%
		}
	%>

	<%
		String id = request.getParameter("id");

		if (id != null) {
			if (HibernateTemplate.deleteObject(Market.class, Integer.parseInt(id)) == 1) {
				response.sendRedirect("viewmarket.jsp?status=success");
			} else {
				response.sendRedirect("viewmarket.jsp?status=failed");
			}
		}
	%>


</div>
<%@include file="footer.jsp"%>