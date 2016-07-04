require_relative 'simulator'

simulator = Simulator.new
puts "Enter the commands for Toy Robot to move. Type quit anytime to quit the program."
puts ""

command = STDIN.gets
while command
	output = simulator.execute(command)
	puts output if output
	command = STDIN.gets
end