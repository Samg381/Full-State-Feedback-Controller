# -Full-State-Feedback-Controller
 Create a Full State Feedback Controller based on Cart-Pendulum-System Equations of Motion

The purpose of this laboratory assignment is to utilize the existing equations of motion from the 
cart-pendulum system and create a Full State Feedback Controller. More specifically, two 
approaches will be used in order to create the controller. First, poles will be placed in specified 
areas and the corresponding gains recorded. Second, a Linear-Quadratic Regulator will be 
implemented in order to solve for needed gains. The ultimate goal of this experiment is a 
functional Full State Feedback Controller for the inverted pendulum system.

**Results**
Utilizing the built-in MATLAB stepinfo command after converting the above systems into closed 
loops, the following settling times were calculated for both the Pole Placement and LinearQuadratic Regulator methods:
Settling time:
Pole placement: 6.1 Seconds
LQR Method: 2.5 Seconds
The above results are extremely important, and will influence the conclusion reached in the 
below section.

**Conclusion**
After obtaining both State Space equations, finding gains at the specified locations using the 
pole placement and Linear/Quadratic Regulator methods, plotting the results and determining 
the settling times of both approaches, it is now possible to draw a conclusion and determine 
which system should be applied to the self-balancing robot. Based upon the above results and 
analysis, the Linear-Quadratic Regulator method would be the superior choice for 
implementation onboard the robot as a result of the faster settling time. In summation, this 
experiment was successful in comparing the two aforementioned approaches, especially in light 
of the unique challenge posed by a system such as this robot.

![Screenshot_4](https://user-images.githubusercontent.com/3127698/143277229-67c2383c-1299-4059-a465-1a47933aaf7a.png)
