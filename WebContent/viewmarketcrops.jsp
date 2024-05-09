<%@include file="header.jsp"%>
<%@page import="com.voidmain.dao.HibernateTemplate"%>
<%@page import="com.voidmain.dao.HibernateDAO"%>
<%@page import="com.voidmain.pojo.MarketCrops"%>
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
				<th>Crop</th>
				<th>Price</th>
				<th>Quality</th>
				<th>Delete</th>
			</tr>

			<%
				String marketid=request.getParameter("marketid");
			
				if(marketid!=null)
				{
			
				for (MarketCrops marketCrops : HibernateDAO.getMarketCropss()) {
					
					if(marketCrops.getMarket()==Integer.parseInt(marketid))
					{
			%>

			<tr>
				<td><%=marketCrops.getCrop()%></td>
				<td><%=marketCrops.getPrice()%></td>
				<td><%=marketCrops.getQuality()%></td>
				<%
					if(role.equals("admin"))
					{
				%>
						<td> <a href="viewmarketcrops.jsp?id=<%=marketCrops.getMarketCropId()%>">delete</a></td>
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
				}
				}
			%>
		</table>
		
		<%
			String id=request.getParameter("id");
		
			if(id!=null)
			{
				if(HibernateTemplate.deleteObject(MarketCrops.class,Integer.parseInt(id))==1)
				{
					response.sendRedirect("viewmarketcrops.jsp?status=success");
				}
				else
				{
					response.sendRedirect("viewmarketcrops.jsp?status=failed");
				}
			}
		%>
		

	</div>
<%@include file="footer.jsp"%>