<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://jboss.com/products/seam/taglib" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Meeting Registration</title>
<link href="styles.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<f:view>
		<h:form>
			<h:messages />
			<s:validateAll>
				<h:panelGrid columns="2">
				First Name :
						<h:inputText label="First Name" value="#{person.firstName}" required="true" />

				Last Name: 
						<h:inputText   label="Last Name"  value="#{person.lastName}" required="true" />

				</h:panelGrid>
				<h:commandButton value="Register"
					action="#{meetingRegistration.register}" />
			</s:validateAll>
		</h:form>
	</f:view>
</body>
</html>