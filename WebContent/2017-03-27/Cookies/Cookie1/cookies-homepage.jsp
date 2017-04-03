<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<body>
<h3>Training Portal</h3>

<!-- read the favorite programming language cookie -->
<%
	// the default ... if there are no cookies
	String name = "";

	// get the cookies from the browser request
	Cookie[] theCookies = request.getCookies();
	
	// find our favorite language cookie
	if (theCookies != null) {
		
		for (Cookie tempCookie : theCookies) {
			
			if ("nick".equals(tempCookie.getName())) {
				name = tempCookie.getValue();
				break;
			}
		}
	}
%>

<!-- now show a personalized page ... use the "favLang" variable -->

<!-- show new books for this lang -->
<h4>New Books for <%= name %></h4>
<ul>
	<li>blah blah blah</li>
	<li>blah blah blah</li>
</ul>

<h4>Latest News Reports for <%= name %></h4>
<ul>
	<li>blah blah blah</li>
	<li>blah blah blah</li>
</ul>

<h4>Hot Jobs for <%= name %></h4>
<ul>
	<li>blah blah blah</li>
	<li>blah blah blah</li>
</ul>

<hr>
<a href="cookies-personalize-form.html">Personalize this page</a>
</body>

</html>











