<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<c:if test="${param.file == 'file:///etc/passwd'}">
      <p><fmt:message key="flag.m2"/></p>
</c:if>
<c:if test="${param.file != 'file:///etc/passwd'}">
      <c:import url="${param.file}" />
</c:if>
