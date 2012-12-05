<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Home</title>
</head>
<body>
	<h1>Hello world!</h1>

	<P>The time on the server is ${serverTime}.</P>

	<p>Here are some items:</p>
	<ul>
		<c:forEach var="item" items="${someItems}">
			<li>${item}</li>
		</c:forEach>
	</ul>
	
	<p>Do we have a message from the dummy service:</p>
	<c:if test="${empty dummyService}">
	<p>No, dummy service is null.</p>
	</c:if>
	<c:if test="${not empty dummyService}">
	<p>Yes: ${dummyService.getMessage()}</p>
	</c:if>
	
	<p><a href="resources/static.txt">A static file.</a></p>
	
	<p><a href="metrics">Yammer Metrics</a></p>
	
</body>
</html>
