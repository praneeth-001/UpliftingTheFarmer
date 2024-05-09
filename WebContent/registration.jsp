<!DOCTYPE HTML>
<html>

<head>
<title>Voidmain</title>
<meta name="description" content="website description" />
<meta name="keywords" content="website keywords, website keywords" />
<meta http-equiv="content-type"
	content="text/html; charset=windows-1252" />
<link rel="stylesheet" type="text/css" href="style/style.css"
	title="style" />

<script type="text/javascript">
	
	function validate()
	{
		var name=document.appform.name.value;
		var userName=document.appform.userName.value;
		var email=document.appform.email.value;
		var mobile=document.appform.mobile.value;
		var address=document.appform.address.value;
		var password=document.appform.password.value;
		
		if(name=="" || name==null)
		{
			alert("please enter name");
			return false;
		}
		if(userName=="" || userName==null)
		{
			alert("please enter user name");
			return false;
		}
		if(email=="" || email==null)
		{
			alert("please enter email");
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
		if(password=="" || password==null)
		{
			alert("please enter password");
			return false;
		}
	}
	
</script>
	
</head>

<body>
	<div id="main">
		<div id="header">
			<div id="logo">
				<div id="logo_text">
					<!-- class="logo_colour", allows you to change the colour of the text -->
					<h1><a href="#">Uplifting the Farmer Through <span class="logo_colour">Connected Ecosystem</span></a></h1>
				</div>
			</div>
			<div id="menubar">
				<ul id="menu">
					<!-- put class="selected" in the li tag for the selected page - to highlight which page you're on -->
					<li><a href="index.html">Home</a></li>
					<li><a href="registration.jsp">Registration</a></li>
					<li><a href="login.jsp">Login</a></li>
				</ul>
			</div>
		</div>
		<div id="content_header"></div>
		<div id="site_content">
			<div id="content">
				<!-- insert the page content here -->
				<%
					String status=request.getParameter("status");
							
					if(status!=null)
					{
				%>
						<h1><%=status%></h1>
				<%		
					}
					else
					{
				%>
						<h1>Register Here</h1>
				<%		
					}
				%>

				<form action="VoidmainServlet" method="post" name="appform">

					<input
						type="hidden" name="type" value="com.voidmain.pojo.User">
					<input type="hidden" name="operation" value="add"> <input
						type="hidden" name="redirect" value="registration.jsp">

					<div class="form_settings">
						<p>
							<span>Name</span><input class="contact" type="text" name="name"
								value="" />
						</p>
						<p>
							<span>User Name</span><input class="contact" type="text"
								name="userName" value="" />
						</p>
						<p>
							<span>Password</span><input class="contact" type="password"
								name="password" value="" />
						</p>
						<p>
							<span>Mobile</span><input class="contact" type="text"
								name="mobile" value="" />
						</p>
						<p>
							<span>Select Role</span>
							
							<select name="userType">
								<option value="user">General User</option>
								<option value="former">Farmer</option>
								<option value="">--select--</option>
							</select>
						</p>
						<p>
							<span>Address</span>
							<textarea class="contact textarea" rows="8" cols="50"
								name="address"></textarea>
						</p>
						<p style="padding-top: 15px">
							<span>&nbsp;</span><input class="submit" type="submit"
								name="contact_submitted" value="Register" onclick="return validate()"/>
						</p>
					</div>
				</form>
			</div>
		</div>
		<div id="content_footer"></div>
		<div id="footer">
			
		</div>
	</div>
</body>
</html>
