 <%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<!-- You should use this page to get the content of file xx3MZ.txt in /usr/local/etc -->
 <x:parse var="doc" xml="${param.xml}" />
-You requested a quote for: <x:out select="$doc/stock/symbol" />
