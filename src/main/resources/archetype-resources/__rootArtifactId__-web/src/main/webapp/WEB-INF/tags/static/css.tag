<%@ tag language="java" pageEncoding="UTF-8" import="org.springframework.web.context.support.WebApplicationContextUtils,${package}.DatayesConstants"%><%@ attribute name="href" required="true" type="java.lang.String" %><%@ attribute name="rel" required="false" type="java.lang.String" %><%@ attribute name="type" required="false" type="java.lang.String" %><%String staticPath = WebApplicationContextUtils.getWebApplicationContext(application).getMessage(DatayesConstants.STATIC_PATH, null, null);
rel = rel == null ? "stylesheet" : rel;
type = type == null ? "text/css" : type;
out.print("<link rel=\"" + rel + "\" type=\"" + type + "\" href=\"" + staticPath + href + "\" />");
%>