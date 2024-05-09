<%@include file="header.jsp"%>

<script type="text/javascript">
	
	function validate()
	{
		var crop=document.appform.crop.value;
		var price=document.appform.price.value;
		
		if(crop=="" || crop==null)
		{
			alert("please enter crop");
			return false;
		}
		if(price=="" || price==null || isNaN(price))
		{
			alert("please enter price");
			return false;
		}
	}
	
</script>

	<div id="content">
		<!-- insert the page content here -->
		<%
			String status = request.getParameter("status");
			String userName=(String)request.getSession().getAttribute("username");

			if (status != null) {
		%>
		<h1><%=status%></h1>
		<%
			} else {
		%>
		<h1>Add Crops Available in Market</h1>
		<%
			}
		%>
		
		<%
			String marketid=request.getParameter("marketid");
		
			if(marketid!=null)
			{
			
		%>
		<form action="VoidmainServlet" method="post" name="appform">

			<input type="hidden" name="type" value="com.voidmain.pojo.MarketCrops"> 
			<input type="hidden" name="operation" value="add"> 
			<input type="hidden" name="redirect" value="addmarketcrops.jsp">

			<input type="hidden" name="market" value="<%=marketid%>">
			
			<div class="form_settings">
				<p>
					<span>Crop</span><input class="contact" type="text" name="crop"
						value="" />
				</p>
				<p>
					<span>Price</span><input class="contact" type="text" name="price"
						value="" />
				</p>
				<p>
					<span>Quality</span><input class="contact" type="text" name="quality"
						value="" />
				</p>
				<p style="padding-top: 15px">
					<span>&nbsp;</span><input class="submit" type="submit"
						name="contact_submitted" value="Add" onclick="return validate()"/>
				</p>
			</div>
		</form>
		
		<%
			}
		%>
	</div>
<%@include file="footer.jsp"%>