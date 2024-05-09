<%@include file="header.jsp"%>
<%@page import="com.voidmain.dao.HibernateTemplate"%>
<%@page import="com.voidmain.dao.HibernateDAO"%>
<%@page import="com.voidmain.pojo.Fertilizer"%>
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
		<h1> For BIO Fertilizers Contact NO: 8897779990 <br/>
			 For Artificial Contact NO: 976626456	
		</h1>
		<%
			}
		%>
		
		<table style="width: 100%; border-spacing: 0;">
			<tr>
				<th>Name</th>
				<th>Owner</th>
				<th>Description</th>
				<th>Price</th>
				<th>Quantity</th>
				<th>Delete</th>
			</tr>

			<%
				for (Fertilizer fertilizer : HibernateDAO.getFertilizers()) {
				
			%>

			<tr>
				<td><%=fertilizer.getName()%></td>
				<td><%=fertilizer.getOwner()%></td>
				<td><%=fertilizer.getDescription()%></td>
				<td><%=fertilizer.getMobile()%></td>
				<td><%=fertilizer.getQuantity()%></td>
				<%
					if(fertilizer.getOwner().equals(username))
					{
				%>
						<td> <a href="viewfertilizer.jsp?id=<%=fertilizer.getFertilizerId()%>">delete</a></td>
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
				if(HibernateTemplate.deleteObject(Fertilizer.class,Integer.parseInt(id))==1)
				{
					response.sendRedirect("viewfertilizer.jsp?status=success");
				}
				else
				{
					response.sendRedirect("viewfertilizer.jsp?status=failed");
				}
			}
		%>

	</div>
<%@include file="footer.jsp"%>