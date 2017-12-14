package average.com

import grails.converters.JSON

class AverageController{
	def averageService
	def sendMailService

	static scope ="session"
	static defaultAction = "average"

	def average (){

		render view:"average";
	}

	def averagecal() {

		Average avg = new Average()
		avg.properties = params
				
		def result = averageService.averagecalculator(avg)
		 
		sendMailService.sendEmails(result)
		
		render view:"/averageCal/averageCal",model:[avgs:avg,results:result]
	}
}