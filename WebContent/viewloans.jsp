<%@include file="header.jsp"%>
<%@page import="com.voidmain.dao.HibernateTemplate"%>
<%@page import="com.voidmain.dao.HibernateDAO"%>
<%@page import="com.voidmain.pojo.Loans"%>
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
				<th>Name</th>
				<th>Surety</th>
				<th>Amount</th>
				<th>Interest</th>
				<th>Delete</th>
			</tr>

			<%
				for (Loans loan : HibernateDAO.getLoanss()) {
			%>

			<tr>
				<td><%=loan.getName()%></td>
				<td><%=loan.getSurity()%></td>
				<td><%=loan.getAmmount()%></td>
				<td><%=loan.getInterest()%></td>
				<%
					if(role.equals("admin"))
					{
				%>
						<td> <a href="viewloans.jsp?id=<%=loan.getLoanId()%>">delete</a></td>
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
				if(HibernateTemplate.deleteObject(Loans.class,Integer.parseInt(id))==1)
				{
					response.sendRedirect("viewloans.jsp?status=success");
				}
				else
				{
					response.sendRedirect("viewloans.jsp?status=failed");
				}
			}
		%>
		

	</div>
<%@include file="footer.jsp"%>