<html>
<head>
	<title>Confirmation</title>
</head>

<body>
<%
	//read form data
	String favLang = request.getParameter("favoriteLanguage");
	//create the cookie
	Cookie theCookie = new Cookie("myApp.favoriteLanguage", favLang);
	//set the life span ... total number of seconds 
	theCookie.setMaxAge(60*60*24*365);
	//send cookie to brwoser
	response.addCookie(theCookie);
%>
</body>
Thanks, We set your favorite langauge to: ${param.favoriteLangauge}
<br/><br/>
<a href="cookies-homepage.jsp">Return to Homepage</a>

</html>