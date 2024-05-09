<%@include file="header.jsp"%>

<script type="text/javascript">
	
	function validate()
	{
		var name=document.appform.name.value;
		var quality=document.appform.quality.value;
		var mobileNumber=document.appform.mobileNumber.value;
		var address=document.appform.address.value;
		
		if(name=="" || name==null)
		{
			alert("please enter name");
			return false;
		}
		if(quality=="" || quality==null)
		{
			alert("please enter quality");
			return false;
		}
		if(mobileNumber=="" || mobileNumber==null || isNaN(mobileNumber) || mobileNumber.length!=10)
		{
			alert("please enter valid mobile");
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
			String userName=(String)request.getSession().getAttribute("username");

			if (status != null) {
		%>
		<h1><%=status%></h1>
		<%
			} else {
		%>
		<h1>Add Crop Sale Details</h1>
		<%
			}
		%>
	
		<form action="VoidmainServlet" method="post" name="appform">

			<input type="hidden" name="type" value="com.voidmain.pojo.CropSale"> 
			<input type="hidden" name="operation" value="add"> 
			<input type="hidden" name="redirect" value="addcropsale.jsp">

			<input type="hidden" name="owner" value="<%=userName%>">
			

			<div class="form_settings">
				<p>
					<span>Name</span><input class="contact" type="text" name="name"
						value="" />
				</p>
				<p>
					<span>Quality</span><input class="contact" type="text" name="quality"
						value="" />
				</p>
				<p>
					<span>Address</span><input class="contact" type="text" name="address"
						value="" />
				</p>
				<p>
					<span>Mobile Number</span><input class="contact" type="text" name="mobileNumber"
						value="" />
				</p>
				<p style="padding-top: 15px">
					<span>&nbsp;</span><input class="submit" type="submit"
						name="contact_submitted" value="Add" onclick="return validate()" />
				</p>
			</div>
		</form>
	</div>
<%@include file="footer.jsp"%>