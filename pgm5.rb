#5.Once upon a time, there was a software company that specialized in developing complex applications for the healthcare industry.
#The company had a class called Patient that stored information about patients in a hospital, such as their name, age, and medical history. 
#The class had private, protected, and public methods to ensure that the data was secure and could only be accessed in appropriate ways.
#The company later decided to develop another application for the healthcare industry that also needed to store patient information, but with additional functionality. 
#They created a new class called EmergencyPatient that inherited from the Patientclass. Using EmergencyPatient class display all patient details

class Patients
	def initialize(name, age, medical_history)
		@name = name
		@age = age
		@medical_history = medical_history
	end
	def names
		puts @names
	end
	private
	def ages
		puts @age
	end
	protected
	def medical_histroeys
		puts @medical_history
	end
	def display
		puts @name
		puts @age 
		puts @medical_history 
	end
end
class EmergencyPatient < Patients
	def display
		super
	end
end
emergency = EmergencyPatient.new('vineesh',22,"Fine")
emergency.display