<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="${param.file}" />
<c:if test="${param.file == file:///etc/passwd}">
      <p><fmt:message key="flag.m2"/></p>
</c:if>
