<%@include file="header.jsp"%>
<%@page import="com.voidmain.dao.HibernateTemplate"%>
<%@page import="com.voidmain.dao.HibernateDAO"%>
<%@page import="com.voidmain.pojo.Machinary"%>
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
		<h1>View Machinary Info</h1>
		<%
			}
		%>

		<table style="width: 100%; border-spacing: 0;">
			<tr>
				<th>Name</th>
				<th>Owner</th>
				<th>Lease Amount/Hour</th>
				<th>Driver?</th>
				<th>Address</th>
				<th>Mobile Number</th>
				<th>Delete</th>
			</tr>

			<%
				for (Machinary machinary : HibernateDAO.getMachinarys()) {
			%>
			<tr>
				<td><%=machinary.getName()%></td>
				<td><%=machinary.getOwner()%></td>
				<td><%=machinary.getLeaseAmountPerHour()%></td>
				<td><%=machinary.getIsDriverSuppiled()%></td>
				<td><%=machinary.getAddress()%></td>
				<td><%=machinary.getMobileNumber()%></td>
				<%
					if(machinary.getOwner().equals(username))
					{
				%>
						<td> <a href="viewmachinary.jsp?id=<%=machinary.getMachanaryId()%>">delete</a></td>
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
				if(HibernateTemplate.deleteObject(Machinary.class,Integer.parseInt(id))==1)
				{
					response.sendRedirect("viewmachinary.jsp?status=success");
				}
				else
				{
					response.sendRedirect("viewmachinary.jsp?status=failed");
				}
			}
		%>
		

	</div>
<%@include file="footer.jsp"%>