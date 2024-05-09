<%@page import="com.voidmain.dao.HibernateTemplate"%>
<%@page import="com.voidmain.dao.HibernateDAO"%>
<%@page import="com.voidmain.pojo.CropSale"%>
<%@page import="java.util.List"%>
<%@include file="header.jsp"%>
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
				<th>Owner</th>
				<th>Quality</th>
				<th>Address</th>
				<th>Mobile Number</th>
				<th>Delete</th>
			</tr>

			<%
				for (CropSale cropSale : HibernateDAO.getCropSales()) {
					
			%>

			<tr>
				<td><%=cropSale.getName()%></td>
				<td><%=cropSale.getOwner()%></td>
				<td><%=cropSale.getQuality()%></td>
				<td><%=cropSale.getAddress()%></td>
				<td><%=cropSale.getMobileNumber()%></td>
				<%
					if(cropSale.getOwner().equals(username))
					{
				%>
						<td> <a href="viewcropsale.jsp?id=<%=cropSale.getCropSaleId()%>">delete</a></td>
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
				if(HibernateTemplate.deleteObject(CropSale.class,Integer.parseInt(id))==1)
				{
					response.sendRedirect("viewcropsale.jsp?status=success");
				}
				else
				{
					response.sendRedirect("viewcropsale.jsp?status=failed");
				}
			}
		%>

	</div>
<%@include file="footer.jsp"%>