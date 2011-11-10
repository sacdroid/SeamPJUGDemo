<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://jboss.com/products/seam/taglib" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Successfully Registered!</title>
<link href="styles.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<f:view>
		New Member added with registration Number:  <h:outputText
			value="#{member.registrationNumber}" />
    	<div />
		<div />
		<s:link id="memberRegister" value="Add Member"
				action="#{meetingRegistration.createMember}" />
			
		<div />
		<s:link id="memberList" value="Member List" view="/pjugmembers.seam" />
	</f:view>

</body>
</html>