clear
clc
%% variables motor todas las variables tienen una presicion del 10%
Ke=13.8;% kg/rpm
Ke=Ke*60/(2*pi);%kg/(rad/s)
Kt=13.3;%Ncm/A
Kt=Kt/100;%Nm/A
Jl=4802.2;%g/cm2
Jl=Jl/100^2/1000%kg/m2
Ra=0.4;%Ohm
La=1.4%mH
La=1.4/1000%mH
b=1.5e-5;
Va=60;%V
