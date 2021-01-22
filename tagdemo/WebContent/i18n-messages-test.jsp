<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>


<c:set var="theLocale" value="${not empty param.theLocale ? param.theLocale : pageContext.request.locale}" scope="session" />

<fmt:setLocale value="${theLocale}" />

<fmt:setBundle basename="com.jsp.tagdemo.i18n.resources.mylabels" />



<html>
<head>
<title>i18n Messages Test</title>
</head>
<body>

<a href="i18n-messages-test.jsp?theLocale=en_US">English (US)</a>
|
<a href="i18n-messages-test.jsp?theLocale=es_ES">Spanish (ES)</a>
|
<a href="i18n-messages-test.jsp?theLocale=de_DE">German (DE)</a>

<br>
<hr>

<b>
<fmt:message key="label.greeting" /> <br/> <br/>
</b>
<fmt:message key="label.firstname" /> <i>John</i> <br/>
<fmt:message key="label.lastname" /> <i>Doe</i> <br/><br/>
<fmt:message key="label.welcome" /> <br/> 


<hr>

Selected locale: ${theLocale}

</body>
</html>