<%@ page import="employee.com.Employees" %>



<div class="fieldcontain ${hasErrors(bean: employeesInstance, field: 'adress', 'error')} required">
	<label for="adress">
		<g:message code="employees.adress.label" default="Adress" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="adress" required="" value="${employeesInstance?.adress}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: employeesInstance, field: 'age', 'error')} required">
	<label for="age">
		<g:message code="employees.age.label" default="Age" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="age" value="${fieldValue(bean: employeesInstance, field: 'age')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: employeesInstance, field: 'employeeNumber', 'error')} required">
	<label for="employeeNumber">
		<g:message code="employees.employeeNumber.label" default="Employee Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="employeeNumber" required="" value="${employeesInstance?.employeeNumber}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: employeesInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="employees.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" required="" value="${employeesInstance?.firstName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: employeesInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="employees.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" required="" value="${employeesInstance?.lastName}"/>

</div>

