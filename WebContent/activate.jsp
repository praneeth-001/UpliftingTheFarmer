<!DOCTYPE HTML>
<%@page import="com.voidmain.dao.HibernateTemplate"%>
<%@page import="com.voidmain.pojo.User"%>
<%@page import="com.voidmain.dao.HibernateDAO"%>
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
		var otp=document.appform.otp.value;
		
		if(otp=="" || otp==null)
		{
			alert("please enter otp");
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
						<h1>Activate Your Account</h1>
				<%		
					}
				%>

				<form action="activate.jsp" name="appform">

					<div class="form_settings">
						<p>
							<span>Otp</span><input class="contact" type="text" name="otp"
								value="" />
						</p>
						<p style="padding-top: 15px">
							<span>&nbsp;</span><input class="submit" type="submit"
								name="contact_submitted" value="Activate" onclick="return validate()"/>
						</p>
					</div>
				</form>
				
				<%
					String otp=request.getParameter("otp");
				
					if(otp!=null)
					{
						String userid=(String)request.getSession().getAttribute("user");
						
						if(userid!=null)
						{
							User user=HibernateDAO.getUserById(userid);
							
							if(otp.equals(user.getOtp()))
							{
								user.setStatus("yes");
								HibernateTemplate.updateObject(user);
								
								response.sendRedirect("login.jsp");
							}
							else
							{
								HibernateTemplate.deleteObject(User.class,userid);
								
								response.sendRedirect("registration.jsp?status=failed");
							}
						}
					}
				%>
			</div>
		</div>
		<div id="content_footer"></div>
		<div id="footer">
			
		</div>
	</div>
</body>
</html>
