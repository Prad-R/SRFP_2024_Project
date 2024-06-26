clc;
clear all;
close all;

particles = csvread("Particles.csv");
temperature = csvread("Temperature.csv");
time_step = 1.0e-8;
step_freq = 1.0e5;
time = 0;

index = [1 : 1 : 100];

for i = 1 : size(particles,1)
    time = step_freq * time_step * (i - 1);

    figure();
    set(gcf,'visible','off');
    set(gcf,'position',[10,10,700,700]);
    hold on;
    box on;
    bar(index,particles(i,:),0.4);
    ylim([0,50]);
    xlabel('Grid Cell $\longrightarrow$',Interpreter='latex',FontSize=15);
    ylabel('Number of Simulated Particles $\longrightarrow$',Interpreter='latex',FontSize=15);
    title(sprintf('\\textbf{Number of Simulated Particles at \\boldmath$t = %f$ s}',time),Interpreter='latex',FontSize=18);
    legend({'Number of Simulated Particles'},Interpreter='latex',FontSize=12);
    hold off;
    saveas(gcf,sprintf('Plots/Particles/Particle_%f_sec.svg',time),'svg');

    figure();
    set(gcf,'visible','off');
    set(gcf,'position',[10,10,700,700]);
    hold on;
    box on;
    bar(index,temperature(i,:),0.4);
    ylim([200,400]);
    xlabel('Grid Cell $\longrightarrow$',Interpreter='latex',FontSize=15);
    ylabel('Temperature (in K) $\longrightarrow$',Interpreter='latex',FontSize=15);
    title(sprintf('\\textbf{Temperature (in K) at \\boldmath$t = %f$ s}',time),Interpreter='latex',FontSize=18);
    legend({'Temperature'},Interpreter='latex',FontSize=12);
    hold off;
    saveas(gcf,sprintf('Plots/Temperature/Temperature_%f_sec.svg',time),'svg');
end