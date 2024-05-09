<%@include file="header.jsp"%>

<script type="text/javascript">
	
	function validate()
	{
		var name=document.appform.name.value;
		var address=document.appform.address.value;
		
		if(name=="" || name==null)
		{
			alert("please enter name");
			return false;
		}
		if(address=="" || address==null)
		{
			alert("please enter address");
			return false;
		}
	}
	
</script>
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
		<h1>Add Market</h1>
		<%
			}
		%>

		<form action="VoidmainServlet" method="post" name="appform">

		<input type="hidden" name="type" value="com.voidmain.pojo.Market"> 
		<input type="hidden" name="operation" value="add"> 
		<input type="hidden" name="redirect" value="addmarket.jsp">

			<div class="form_settings">
				<p>
					<span>Name</span><input class="contact" type="text" name="name"
						value="" />
				</p>
				<p>
					<span>Address</span><input class="contact" type="text" name="address"
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