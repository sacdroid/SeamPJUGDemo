<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://jboss.com/products/seam/taglib" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>PJUG Members</title>
<link href="styles.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<f:view>
		<h:panelGrid>
			<h:outputText id="NoMembersFoundMessage" value="No Members Found"
				rendered="#{members != null and members.rowCount==0}" />
			<h:dataTable id="members" value="#{members}" var="member" border="1"
				rendered="#{members.rowCount>0}">
				<f:facet name="header">
					<h:outputText value="PJUG Members" />
				</f:facet>
				<h:column>
					<f:facet name="header">
						<h:outputText value="Registration Number" />
					</f:facet>
					<h:outputText value="#{member.registrationNumber}" />
				</h:column>
				<h:column>
					<f:facet name="header">
						<h:outputText value="First Name" />
					</f:facet>
					<h:outputText value="#{member.firstName}" />
				</h:column>
				<h:column>
					<f:facet name="header">
						<h:outputText value="Last Name" />
					</f:facet>
					<h:outputText value="#{member.lastName}" />
				</h:column>
			</h:dataTable>
		</h:panelGrid>

		<s:link id="memberRegister" value="Add Member"
			action="#{meetingRegistration.createMember}" />
	</f:view>
</body>
</html>