<html>
<title>Student Confirmation Title</title>
<body>
The student is confirmed: ${param.firstName} ${param.lastName}
<br/><br/>

The student's favorite programming language:
<ul>
	<%
		String[] langs = request.getParameterValues("favoriteLanguage");
		for(String tempLang: langs){
			out.println("<li>"+tempLang+"</li>");
		}
	%>

</ul>
</body>
</html>