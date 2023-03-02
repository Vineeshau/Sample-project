#2.Problem: Alice is a programmer who is working on a project that involves creating a new class called Vehicle. The Vehicle class has several public methods, such as start_engine and stop_engine. 
#Alice's colleague, Bob, is working on a subclass of Vehicle called Car. Car inherits all of the public methods from Vehicle, but Bob needs to add some new functionality to the start_engine method. 
#How can Bob access the start_engine method in the Vehicle class so he can use it in his Car subclass?

class Vehicle
	def start_engine
		puts "Engine Started"
	end
	def stop_engine
		puts "Engine Stoped"
	end
end
class Car < Vehicle
	def start_engine
		super()
		puts "Engine modified"
	end
end
vehi = Vehicle.new()
vehi.start_engine
vehi.stop_engine
cr = Car.new()
cr.start_engine 