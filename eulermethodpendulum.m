%Set up variables
g = 9.8;      % Grav. acceleration, m/s^2
l = 1;        % Length of pendulum, m
theta0 = 0.2; % Initial angle, radians

n = 1000;     % Number of points (calculations) 
dt = 0.01;    % step size, s

%Initialize arrays (to be calculated)
ang_f = zeros(1,n); % angular frequency
theta = zeros(1,n); % angular position
theta(1) = theta0;  % insert initial angle
time = zeros(1,n);  % time

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
for i=1:n-1
    ang_f(i+1)=ang_f(i)-((g/l)*theta(i)*dt);
    theta(i+1)=theta(i)+(ang_f(i)*dt);
    time(i+1)=time(i)+dt; 
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(1)
plot(time,theta)
title("Euler's method pendulum")
xlabel('time')
ylabel('theta')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(2)
plot(ang_f,theta)
title("Euler's method pendulum")
xlabel('angular frequency')
ylabel('theta')
