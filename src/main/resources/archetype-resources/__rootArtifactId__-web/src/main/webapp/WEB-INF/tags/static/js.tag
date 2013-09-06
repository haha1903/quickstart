<%@ tag language="java" pageEncoding="UTF-8" import="org.springframework.web.context.support.WebApplicationContextUtils,${package}.DatayesConstants"%><%@ attribute name="src" required="true" type="java.lang.String" %>
<%String staticPath = WebApplicationContextUtils.getWebApplicationContext(application).getMessage(DatayesConstants.STATIC_PATH, null, null);
String commonJs = (String)request.getAttribute(DatayesConstants.COMMON_JS);
if(commonJs == null) {
    request.setAttribute(DatayesConstants.COMMON_JS, "true");
out.print("<script>var staticPath = \"" + staticPath + "\";</script>");
}
out.print("<script src=\"" + staticPath + src + "\"></script>");
%>