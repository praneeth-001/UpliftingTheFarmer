<%@include file="header.jsp"%>

<script type="text/javascript">
	
	function validate()
	{
		var name=document.appform.name.value;
		var surity=document.appform.surity.value;
		var ammount=document.appform.ammount.value;
		var interest=document.appform.interest.value;
		
		if(name=="" || name==null)
		{
			alert("please enter name");
			return false;
		}
		if(surity=="" || surity==null)
		{
			alert("please enter surity");
			return false;
		}
		if(ammount=="" || ammount==null || isNaN(ammount))
		{
			alert("please enter amount");
			return false;
		}
		if(interest=="" || interest==null || isNaN(interest))
		{
			alert("please enter interest");
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
		<h1>Add Loan Details</h1>
		<%
			}
		%>

		<form action="VoidmainServlet" method="post" name="appform">

			<input type="hidden" name="type" value="com.voidmain.pojo.Loans"> 
			<input type="hidden" name="operation" value="add"> 
			<input type="hidden" name="redirect" value="addloans.jsp">

			<div class="form_settings">
				<p>
					<span>Name</span><input class="contact" type="text" name="name"
						value="" />
				</p>
				<p>
					<span>Surity</span><input class="contact" type="text" name="surity"
						value="" />
				</p>
				<p>
					<span>Amount</span><input class="contact" type="text" name="ammount"
						value="" />
				</p>
				<p>
					<span>Interest</span><input class="contact" type="text" name="interest"
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