% Sam Gregg
% ME 438L Lab #8

clc
clear

syms s x theta F F1 X1 X2 X3 X4 X1D X2D X3D X4D DC K zeta beta

M = 0.5;    % Mass of the cart
m = 0.1;    % Mass of the pendulum
b = 0.1;    % friction constant
I = 0.006;  % Mass moment of inertia
g = 9.8;    % gravity
l = 0.3;    % length of pendulum

%--------------------------------------------------------------------------
SSEReq  = 0.05  % Steady State Error Requirement [percent, decimal]
PMReq   = 45    % Phase margin requirement [degrees]  
%--------------------------------------------------------------------------

% Obtain Transfer Function
    EOM1 = ((m*l^2*s^2)*theta) + ((m*g*l)*theta) + ((m*l*s^2)*x) == 0;
    x = solve(EOM1,x); % Solve EOM1 for x’’
    EOM2 = ((M*s^2)*x) + ((m*s^2)*x) + ((m*l*s^2)*theta) == F1; %Substitute x''
    theta = solve(EOM2,theta);
    
    xfer = theta/F1;
    CartPend = char(collect(xfer));
    s = tf('s');
    OpenLoop = eval(CartPend)

    % Time vector
    t = linspace(0,2,100*100);

% Find Gain + Phase margin of open loop pendulum system
    [Gm,Pm] = margin(OpenLoop)