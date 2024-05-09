<%@include file="header.jsp"%>
<%@page import="com.voidmain.dao.HibernateTemplate"%>
<%@page import="com.voidmain.dao.HibernateDAO"%>
<%@page import="com.voidmain.pojo.LandRental"%>
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

		<table style="width: 100%; border-spacing: 0;">
			<tr>
				<th>Owner</th>
				<th>Address</th>
				<th>Lease Amount</th>
				<th>Square Feet</th>
				<th>Mobile Number</th>
				<th>Delete</th>
			</tr>

			<%
				for (LandRental landRental : HibernateDAO.getLandRentals()) {
			%>

			<tr>
				<td><%=landRental.getOwner()%></td>
				<td><%=landRental.getAddress()%></td>
				<td><%=landRental.getLeaseAmount()%></td>
				<td><%=landRental.getSquareFeets()%></td>
				<td><%=landRental.getMobileNumber()%></td>
				<%
					if(landRental.getOwner().equals(username))
					{
				%>
						<td> <a href="viewlandrental.jsp?id=<%=landRental.getLandRentalId()%>">delete</a></td>
				<%		
					}
					else
					{
				%>
						<td>No Access</td>
				<%		
					}
				%>
			</tr>

			<%
				}
			%>
		</table>
		
		<%
			String id=request.getParameter("id");
		
			if(id!=null)
			{
				if(HibernateTemplate.deleteObject(LandRental.class,Integer.parseInt(id))==1)
				{
					response.sendRedirect("viewlandrental.jsp?status=success");
				}
				else
				{
					response.sendRedirect("viewlandrental.jsp?status=failed");
				}
			}
		%>
		

	</div>
<%@include file="footer.jsp"%>