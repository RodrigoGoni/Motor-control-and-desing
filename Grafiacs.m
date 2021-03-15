%% Tenciones 
close all
figure('Name','Tensiones')
subplot(2,1,1)
plot(out.Tension_contr,'r')
hold on
title('Tensiones Controlador')
xlabel('Time[s]','FontSize',14)
ylabel('Tensión[V]','FontSize',14)
legend('ua_{cont}(t)','Location','northwest','FontSize',18)
grid on
subplot(2,1,2)
plot(out.Tension_mod,'r')
title('Tensiones Modulador')
xlabel('Time[s]','FontSize',14)
ylabel('Tensión[V]','FontSize',14)
legend('ua_{mod}(t)','Location','northwest','FontSize',18)
grid on
%% Posicion motor
figure('Name','Posiciones Motor')
subplot(2,1,1)
plot(out.x,'.r')
hold on
plot(out.x_ruido,'g')
title('Posiciones motor')
xlabel('Time[s]','FontSize',14)
ylabel('Pos [rad]','FontSize',14)
legend('\theta(t)','\theta_{ruido}(t)','Location','northwest','FontSize',18)
grid on
subplot(2,1,2)
plot(out.x_sin_filtrar,'g')
hold on
plot(out.x_filtrada,'r')
title('Posiciones en controlador')
xlabel('Time[s]','FontSize',14)
ylabel('Pos_d[rad]','FontSize',14)
legend('\theta_{dSinF}(t)','\theta_{dConF}(t)','Location','northwest','FontSize',18)
grid on
%% Corrientes
figure('Name','Corrientes')
subplot(2,1,1)
plot(out.ia,'.r')
hold on
plot(out.ia_ruido,'g')
title('Corrientes Motor')
xlabel('Time[s]','FontSize',14)
ylabel('Corriente [A]','FontSize',14)
legend('ia_{motor}(t)','ia_{ruido}(t)','Location','northwest','FontSize',18)
grid on
subplot(2,1,2)
plot(out.ia_sin_filtrar,'r')
hold on
plot(out.ia_filtrada,'g')
title('Corrientes en el controlador')
xlabel('Time[s]','FontSize',14)
ylabel('Corriente_d[A]','FontSize',14)
legend('ia_{dSinF}(t)','ia_{dConF}(t)','Location','northwest','FontSize',18)
grid on
%% Articulacion
figure('Name','Cordenadas Articulares')
subplot(2,1,1)
plot(out.q,'r')
hold on
plot(out.q_rigido,'g')
title('Posiciones articulates')
xlabel('Time[s]','FontSize',14)
ylabel('Pos [rad]','FontSize',14)
legend('q_{CR}(t)','q_{Rigida}(t)','Location','northwest','FontSize',18)
grid on
subplot(2,1,2)
plot(out.qp,'r')
hold on
plot(out.qp_rigido,'g')
title('Velocidades Articulares')
xlabel('Time[s]','FontSize',14)
ylabel('Vel[rad/s]','FontSize',14)
legend('qp_{CR}(t)','qp_{rigido}','Location','northwest','FontSize',18)
grid on
%% Sensor
figure('Name','Sensor')
subplot(2,1,1)
plot(out.ia_ruido,'r')
title('Entrada Sensor')
xlabel('Time[s]','FontSize',14)
ylabel('Corriente [A]','FontSize',14)
legend('ia_{entSen}(t)','Location','northwest','FontSize',18)
grid on
subplot(2,1,2)
plot(out.ua_sensor,'r')
title('Salida Sensor')
xlabel('Time[s]','FontSize',14)
ylabel('Tensión[V]','FontSize',14)
legend('ua_{SalSen}(t)','Location','northwest','FontSize',18)
grid on
%% observador
figure('Name','Observador')
subplot(2,2,1)
plot(out.x_filtrada,'r')
title('Entradas Observador')
xlabel('Time[s]','FontSize',14)
ylabel('Pos[rad]','FontSize',14)
legend('\theta_{entObs}(t)','Location','northwest','FontSize',18)
grid on
subplot(2,2,2)
plot(out.Torque_PID,'r')
title('Entradas Observador')
xlabel('Time[s]','FontSize',14)
ylabel('Torque[Nm]','FontSize',14)
legend('T_{entObs}(t)','Location','northwest','FontSize',18)
grid on
subplot(2,2,3)
plot(out.x_obs,'r')
title('Salidas Observador')
xlabel('Time[s]','FontSize',14)
ylabel('Pos[rad]','FontSize',14)
legend('\theta_{salObs}(t)','Location','northwest','FontSize',18)
grid on
subplot(2,2,4)
plot(out.xp_obs,'r')
title('Salidas Observador')
xlabel('Time[s]','FontSize',14)
ylabel('Vel[rad/s]','FontSize',14)
legend('\omega_{salObs}(t)','Location','northwest','FontSize',18)
grid on
%% PID
figure('Name','PID')
subplot(3,1,1)
plot(Vel_q,'r')
title('Entradas PID')
xlabel('Time[s]','FontSize',14)
ylabel('Vel[rad/s]','FontSize',14)
legend('qp*_{req}(t)','Location','northwest','FontSize',18)
grid on
subplot(3,1,2)
plot(out.xp_obs,'r')
title('Entradas PID')
xlabel('Time[s]','FontSize',14)
ylabel('Vel[rad/s]','FontSize',14)
legend('\omega_{obs}(t)','Location','northwest','FontSize',18)
grid on
subplot(3,1,3)
plot(out.Torque_PID,'r')
title('Salida PID')
xlabel('Time[s]','FontSize',14)
ylabel('Torque[Nm]','FontSize',14)
legend('T_{PID}(t)','Location','northwest','FontSize',18)
grid on