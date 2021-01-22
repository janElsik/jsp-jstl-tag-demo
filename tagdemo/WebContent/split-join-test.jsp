<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>





<html>
<head>
<title>Split Join Test</title>
</head>
<body>


<c:set var="data" value="Singapure,Tokyo,Mumbai,London" />

<h3>Split Demo</h3>

<c:set var="citiesArray" value="${fn:split(data, ',')}" />


<c:forEach var="tempCity" items="${citiesArray}">

	${tempCity} <br/>

</c:forEach>

<h3>Join Demo</h3>

<c:set var="citiesString" value="${fn:join(citiesArray, '*')}" />

 Result of joining: ${citiesString}

</body>
</html>