<%@ page language="java" %>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<%@ page import="ServidorApresentacao.Action.sop.utils.SessionConstants" %>

<bean:define id="infoExecutionDegreesNamesList" name="<%= SessionConstants.DEGREE_LIST %>"/>

<center>
<h2><bean:message key="title.student.enrolment.without.rules"/></h2>
</center>
<b><bean:message key="label.second.step"/></b>
<center>
<p>&nbsp;</p>
<html:form action="/prepareEnrolmentContext.do">
	<table border="0">
		<tr>
			<td align="left"><bean:message key="label.choose.degree"/>&nbsp;</td>
			<td align="left">
				<html:select property="infoExecutionDegreeName" size="1">
					<html:options collection="infoExecutionDegreesNamesList" property="value" labelProperty="label"/>
				</html:select>
			</td>
		</tr>
		<tr>
			<td align="left"><bean:message key="label.choose.semester"/>&nbsp;</td>
			<td align="left">
				<html:select property="semester" size="1">
<%--
					<html:option bundle="DEGREE_ADMIN_OFFICE_RESOURCES" key="label.first.semester" value="1"/>
					<html:option bundle="DEGREE_ADMIN_OFFICE_RESOURCES" key="label.second.semester" value="2"/>
--%>
					<html:option value="1"><bean:message key="label.first.semester"/></html:option>
					<html:option value="2"><bean:message key="label.second.semester"/></html:option>
				</html:select>
			</td>
		</tr>
		<tr>
			<td align="left"><bean:message key="label.choose.year"/>&nbsp;</td>
			<td align="left">
				<html:select property="year" size="1">
					<html:option value="1"><bean:message key="label.first.year"/></html:option>
					<html:option value="2"><bean:message key="label.second.year"/></html:option>
					<html:option value="3"><bean:message key="label.third.year"/></html:option>
					<html:option value="4"><bean:message key="label.fourth.year"/></html:option>
					<html:option value="5"><bean:message key="label.fiveth.year"/></html:option>
<%--
					<html:option bundle="DEGREE_ADMIN_OFFICE_RESOURCES" key="label.first.year" value="1"/>
					<html:option bundle="DEGREE_ADMIN_OFFICE_RESOURCES" key="label.second.year" value="2"/>
					<html:option bundle="DEGREE_ADMIN_OFFICE_RESOURCES" key="label.third.year" value="3"/>
					<html:option bundle="DEGREE_ADMIN_OFFICE_RESOURCES" key="label.fourth.year" value="4"/>
					<html:option bundle="DEGREE_ADMIN_OFFICE_RESOURCES" key="label.fiveth.year" value="5"/>
--%>
				</html:select>
			</td>
		</tr>
	</table>
	<p>&nbsp;</p>
	<html:submit styleClass="inputbutton">
		<bean:message key="button.submit.degree.type.and.student"/>
	</html:submit>
</html:form>
</center>