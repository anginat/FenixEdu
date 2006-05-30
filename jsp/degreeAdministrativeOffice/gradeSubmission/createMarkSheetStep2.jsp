<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<%@ taglib uri="/WEB-INF/fenix-renderers.tld" prefix="fr" %>

<h2><bean:message key="label.createMarkSheet"/></h2>

<br/>

<h3><bean:message key="label.createMarkSheet.step.one"/> &gt; <u><bean:message key="label.createMarkSheet.step.two"/></u></h3>

<fr:view name="edit" 
		schema="markSheet.view.step2">
		<fr:layout name="tabular" >
			<fr:property name="classes" value="style1"/>
	        <fr:property name="columnClasses" value="listClasses,,"/>
		</fr:layout>
</fr:view>

<br/><br/>

<logic:messagesPresent message="true">
	<ul>
	<html:messages id="messages" message="true">
		<li><span class="error0"><bean:write name="messages" /></span></li>
	</html:messages>
	</ul>
	<br/>
</logic:messagesPresent>

<fr:hasMessages for="edit-enrolments">
	<ul>
	<fr:messages>
		<li><fr:message/></li>
	</fr:messages>
	</ul>
</fr:hasMessages>

<fr:form action="/createMarkSheet.do">

	<html:hidden name="markSheetManagementForm" property="method" value="createMarkSheetStepTwo" />
	<html:hidden name="markSheetManagementForm" property="epID" />
	<html:hidden name="markSheetManagementForm" property="dID" />
	<html:hidden name="markSheetManagementForm" property="dcpID" />
	<html:hidden name="markSheetManagementForm" property="ccID"  />	
	<html:hidden name="markSheetManagementForm" property="msID" />
	<html:hidden name="markSheetManagementForm" property="tn" />
	<html:hidden name="markSheetManagementForm" property="ed"/>
	<html:hidden name="markSheetManagementForm" property="mss" />
	<html:hidden name="markSheetManagementForm" property="mst" />

	<fr:edit id="edit-invisible" name="edit" visible="false"/>

	<fr:edit id="edit-enrolments" name="edit" property="enrolmentEvaluationBeans" 
			 schema="markSheet.create.step.two" layout="tabular-editable">
		<fr:layout>
			<fr:property name="sortBy" value="enrolment.studentCurricularPlan.student.number"/>
			<fr:property name="classes" value="style1"/>
	        <fr:property name="columnClasses" value="listClasses,,"/>
		</fr:layout>
		<fr:destination name="invalid" path="/createMarkSheet.do?method=createMarkSheetStepTwoInvalid"/>
	</fr:edit>
	<br/>
	<html:submit styleClass="inputbutton"><bean:message key="label.markSheet.submit" /></html:submit>
	<html:cancel styleClass="inputbutton" onclick="this.form.method.value='backSearchMarkSheet';"><bean:message key="button.cancel"/></html:cancel>
</fr:form>