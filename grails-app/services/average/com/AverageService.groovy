package average.com

import grails.transaction.Transactional

@Transactional
class AverageService {
	
	double math
	double science
	double english

	def	average( double a, double b, double c) {
		
		math = a
		science = b
		english = c
	}

	def averagecalculator(Average avg){

		def avg1 = (avg.math + avg.science + avg.english)
		
		def avg2 =(avg1)/3.0
		
		
		return avg2
		
	}

	
}
