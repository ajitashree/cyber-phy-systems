
% Vehicle Steering Model
A = [[0,1];[0,0]];
B = [0.4; 1];
C = eye(2);
D = [0;0];
K = [0.2500, 1.3];
Kr = 0.25;
L = [2,1];
% Trying out different values of K1, K2, L, Kr
p = [-0.4, -0.6];
K_ = place(A, B, p); % some example of unstable system in case the eigen values are positive
sys = ss(A, B, C, D); 
K3 = lqr(sys, eye(2), 1);
K3_ = lqr(sys, eye(2), 5); % Higher weight on control signal -> lower amplitude
K3__ = lqr(sys, 5*eye(2), 5);

%Values for Plot2
%K = [0.1, 0.85];
%Kr = 0.5 for sin wave of frequency 0.5




