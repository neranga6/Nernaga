
<%@ page import="employee.com.Employees" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'employees.label', default: 'Employees')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-employees" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-employees" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="adress" title="${message(code: 'employees.adress.label', default: 'Adress')}" />
					
						<g:sortableColumn property="age" title="${message(code: 'employees.age.label', default: 'Age')}" />
					
						<g:sortableColumn property="employeeNumber" title="${message(code: 'employees.employeeNumber.label', default: 'Employee Number')}" />
					
						<g:sortableColumn property="firstName" title="${message(code: 'employees.firstName.label', default: 'First Name')}" />
					
						<g:sortableColumn property="lastName" title="${message(code: 'employees.lastName.label', default: 'Last Name')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${employeesInstanceList}" status="i" var="employeesInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${employeesInstance.id}">${fieldValue(bean: employeesInstance, field: "adress")}</g:link></td>
					
						<td>${fieldValue(bean: employeesInstance, field: "age")}</td>
					
						<td>${fieldValue(bean: employeesInstance, field: "employeeNumber")}</td>
					
						<td>${fieldValue(bean: employeesInstance, field: "firstName")}</td>
					
						<td>${fieldValue(bean: employeesInstance, field: "lastName")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${employeesInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
