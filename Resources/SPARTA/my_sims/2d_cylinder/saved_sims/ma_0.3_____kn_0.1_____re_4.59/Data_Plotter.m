clc;
clear all;
close all;

data = csvread("data.csv");

lift = data(:,7);
drag = data(:,8);

time_step = 3.0e-7;
step_size = 5.0e3;
total_steps = 1.0e6;
time = [0 : time_step * step_size : time_step * total_steps];
avg_lift = mean(lift) .* ones(length(time));
avg_drag = mean(drag) .* ones(length(time));

figure(1);
set(gcf,'visible','off');
set(gcf,'position',[10,10,700,700]);
hold on;
box on;
plot(time,lift,LineWidth=1.5);
plot(time,avg_lift,'r',LineWidth=1.5);
ylim([(min(lift) - max(lift)), (max(lift) + max(lift))]);
xlabel('Time (in s) $\longrightarrow$',Interpreter='latex',FontSize=15);
ylabel('Lift (in N) $\longrightarrow$',Interpreter='latex',FontSize=15);
title('Lift Variation',Interpreter='latex',FontSize=18);
legend({'Lift','Average Lift'},Interpreter='latex',FontSize=12);
hold off;
saveas(gcf,'Plots/Lift.svg','svg');

figure(2);
set(gcf,'visible','off');
set(gcf,'position',[10,10,700,700]);
hold on;
box on;
plot(time,drag,LineWidth=1.5);
plot(time,avg_drag,'r',LineWidth=1.5);
ylim([(min(drag) - max(drag)), (max(drag) + max(drag))]);
xlabel('Time (in s) $\longrightarrow$',Interpreter='latex',FontSize=15);
ylabel('Drag (in N) $\longrightarrow$',Interpreter='latex',FontSize=15);
title('Drag Variation',Interpreter='latex',FontSize=18);
legend({'Drag','Average Drag'},Interpreter='latex',FontSize=12);
hold off;
saveas(gcf,'Plots/Drag.svg','svg');