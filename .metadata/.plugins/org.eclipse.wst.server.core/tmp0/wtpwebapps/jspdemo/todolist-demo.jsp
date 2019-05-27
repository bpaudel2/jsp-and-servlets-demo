<%@ page import="java.util.*" %>
<html>
<body>
<!-- Step1: Create HTML form -->
<form action="todolist-demo.jsp">
Add new item: <input type="text" name="theItem" />
<input type="submit" value="Submit" />

</form>
<!-- Step2: Add new item to "To Do" list -->

<%
	List<String> items = (List<String>) session.getAttribute("myToDoList");
	if(items == null){
		items = new ArrayList<String>();
		session.setAttribute("myToDoList", items);
	}
	String theItem = request.getParameter("theItem");
	if(theItem!=null){
		items.add(theItem);
	}
%>
<!-- Step3: Display all "To Do" items from session -->
<hr>
<b>To Do List Items:</b>
<ol>
<%
	for(String temp: items){
		out.println("<li>"+temp+"</li>");
	}

%>
</ol>
<br>




</body>


</html>