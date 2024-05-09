<%@include file="header.jsp"%>

<script type="text/javascript">
	
	function validate()
	{
		var squareFeets=document.appform.squareFeets.value;
		var leaseAmount=document.appform.leaseAmount.value;
		var mobile=document.appform.mobileNumber.value;
		var address=document.appform.address.value;
		
		if(squareFeets=="" || squareFeets==null || isNaN(squareFeets))
		{
			alert("please enter squareFeets");
			return false;
		}
		if(leaseAmount=="" || leaseAmount==null || isNaN(leaseAmount))
		{
			alert("please enter leaseAmount");
			return false;
		}
		
		if(mobile=="" || mobile==null || isNaN(mobile) || mobile.length!=10)
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
		<h1>Add Your Land Details</h1>
		<%
			}
		%>
		
		<form action="VoidmainServlet" method="post" name="appform">

			<input type="hidden" name="type" value="com.voidmain.pojo.LandRental"> 
			<input type="hidden" name="operation" value="add"> 
			<input type="hidden" name="redirect" value="addlandrental.jsp">

			<input type="hidden" name="owner" value="<%=userName%>">
			

			<div class="form_settings">
				<p>
					<span>Squarefeets</span><input class="contact" type="text" name="squareFeets"
						value="" />
				</p>
				<p>
					<span>Lease Amount</span><input class="contact" type="text" name="leaseAmount"
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
						name="contact_submitted" value="Add" onclick="return validate()"/>
				</p>
			</div>
		</form>
	</div>
<%@include file="footer.jsp"%>