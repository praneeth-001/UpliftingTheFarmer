<%@include file="header.jsp"%>

<script type="text/javascript">
	
	function validate()
	{
		var name=document.appform.name.value;
		var quantity=document.appform.quantity.value;
		var price=document.appform.price.value;
		
		if(name=="" || name==null)
		{
			alert("please enter name");
			return false;
		}
		if(quantity=="" || quantity==null)
		{
			alert("please enter quantity");
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
		<h1>Add Fertilizer Details</h1>
		<%
			}
		%>
	
	
		<form action="VoidmainServlet" method="post" name="appform">

			<input type="hidden" name="type" value="com.voidmain.pojo.Fertilizer"> 
			<input type="hidden" name="operation" value="add"> 
			<input type="hidden" name="redirect" value="addfertilizer.jsp">

			<input type="hidden" name="owner" value="<%=userName%>">
			

			<div class="form_settings">
				<p>
					<span>Name</span><input class="contact" type="text" name="name"
						value="" />
				</p>
				<p>
					<span>Price</span><input class="contact" type="text" name="mobile"
						value="" />
				</p>
				<p>
					<span>Quantity</span><input class="contact" type="text" name="quantity"
						value="" />
				</p>
				<p>
					<span>Description</span><input class="contact" type="text" name="description"
						value="" />
				</p>
				<p style="padding-top: 15px">
					<span>&nbsp;</span><input class="submit" type="submit"
						name="contact_submitted" value="Add" onclick="return validate()"/>
				</p>
			</div>
		</form>
	</div>
<%@include file="footer.jsp"%>