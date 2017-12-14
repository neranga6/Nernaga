package employee.com



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EmployeesController {
	
	static Scaffold= Employees
}
