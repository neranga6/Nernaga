package employee.com

import grails.transaction.Transactional

@Transactional
class SendMailService {
	def mailService

	def sendEmails(result){

		mailService.sendMail {
			to "neranga65@gmail.com"
			from "noreply@gmail.com"
			subject "Hello"
			body "how are you?"
		}
	}
}
