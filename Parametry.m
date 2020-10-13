
%Parametry symulacji 

Un=170;             % Nominal voltage
Psi_pm = 0.27;      % Permanent magnet flux
Ld = 3.488e-3;      % Stator inductance d axis
Lq = Ld;            % Stator inductance q axis
Rs = 0.266;         % Stator resistance
J = 0.4224;         % Moment of inertia
p = 17;             % Number of pole pairs
Kconv=1.2*Un;       % DC-link voltage
nn = 330;           
w = nn*pi/30;       % nominal speed
Te = 145.67;        % Rated torque
Pm = 5034.04;       % Rated power
Tp = 1e-4;          % Samping time   100us
fp = 1/Tp;          
Tdel=0.25*Tp;
Tpwm=0.5*Tp;

% Modulus optimum
Tc=Ld/Rs;
Tc_sum=Tpwm+Tdel;
Kc=Kconv/Rs;
kPi=Tc/2/Kc/Tc_sum;
kIi=1/2/Kc/Tc_sum;

% Naslin
Tv_sum=2*Tc_sum+Tdel;
Kv=1.5*p*Psi_pm/J;
alfa=3;
kPw=1/(alfa*Kv*Tv_sum);
kIw=1/(alfa^3)/Kv/(Tv_sum^2);


kPp=211.2; 
kIp=1250;