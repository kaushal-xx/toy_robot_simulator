# Toy Robot Simulator

### Description:
The application is a simulation of a toy robot moving on a square tabletop, of dimensions 5
units x 5 units. There are no other obstructions on the table surface. The robot is free to roam around the surface of the table, but must be prevented from falling to destruction. Any movement that would result in the robot falling from the table must be prevented, however further valid movement commands must still be allowed.

**Create an application that can read in commands of the following form**

PLACE X,Y,F
MOVE
LEFT
RIGHT
REPORT

- PLACE will put the toy robot on the table in position X,Y and facing NORTH, SOUTH, EAST or
WEST.
- The origin (0,0) can be considered to be the SOUTH WEST most corner.
- The first valid command to the robot is a PLACE command, after that, any sequence of
commands may be issued, in any order, including another PLACE command. The application
should discard all commands in the sequence until a valid PLACE command has been
executed.
- MOVE will move the toy robot one unit forward in the direction it is currently facing.
- LEFT and RIGHT will rotate the robot 90 degrees in the specified direction without changing
the position of the robot.
- REPORT will announce the X,Y and F of the robot. This can be in any form, but standard
output is sufficient.
- A robot that is not on the table can choose the ignore the MOVE, LEFT, RIGHT and REPORT
commands.
- Input can be from a file, or from standard input, as the developer chooses.
- Provide test data to exercise the application.

### Installation:
Ensure you have [Git](http://git-scm.com/downloads) and [Ruby 2.3.1](http://www.ruby-lang.org/en/downloads/) installed.  Optionally, install [rvm](https://rvm.io/rvm/install) to manage Ruby versions.

Then, in a console execute:

    git clone git@github.com:Optimal-Transnational/toy_robot_simulator.git
    cd toy_robot_simulator
    gem install bundler
    bundle install

To run everything:

	$ rake

	/usr/bin/ruby2.3 -I/usr/share/rubygems-integration/all/gems/rspec-support-3.4.1/lib:/var/lib/gems/2.3.0/gems/rspec-core-3.4.4/lib /var/lib/gems/2.3.0/gems/rspec-core-3.4.4/exe/rspec --pattern spec/\*_spec.rb --backtrace
	.......................................................

	Finished in 0.04369 seconds (files took 0.11338 seconds to load)
	55 examples, 0 failures


### Constraints:
The toy robot must not fall off the table during movement. This also includes the initial
placement of the toy robot.
Any move that would cause the robot to fall must be ignored.

### Example Input and Output:

### Using Input from an instructions text file

### Example a

		cat instructions/instructions_1.txt | ruby toy_robot/toy_robot.rb

Expected output:

		0,0,WEST

### Example b

		cat instructions/instructions_2.txt | ruby toy_robot/toy_robot.rb

Expected output:

		0,1,NORTH

### Example c

		cat instructions/instructions_3.txt | ruby toy_robot/toy_robot.rb

Expected output:

		3,3,NORTH


### For manual Input:

### Example a

		PLACE 0,0,NORTH
		MOVE
		REPORT

Expected output:

		0,1,NORTH

### Example b

		PLACE 0,0,NORTH
		LEFT
		REPORT

Expected output:

		0,0,WEST

### Example c

		PLACE 1,2,EAST
		MOVE
		MOVE
		LEFT
		MOVE
		REPORT

Expected output

		3,3,NORTH

### Deliverables:
The Ruby source files, the test data and any test code.
It is not required to provide any graphical output showing the movement of the toy robot.