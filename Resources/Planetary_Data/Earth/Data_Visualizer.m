clear all;
clc;
close all;

data = csvread("Earth_Data.csv");

height = data(:, 1) .* 0.3048 ./ 1000; % Converting to km
temperature = ((data(:, 2) -  32) .* (5/9)) + 273.15; % Converting to kelvin
pressure = data(:, 4) .* 6894.76; % Converting to pascals
density = data(:, 5) .* 515.379 ./ 10000; % Converting to kg/m^3

figure(1);
plot(height(2:end), temperature(2:end), '-o', 'LineWidth', 1, 'MarkerFaceColor', 'r', 'DisplayName', 'Temperature') % First entry is at negative height
grid on;
xlabel('Height in km $\longrightarrow$', 'Interpreter', 'latex', 'FontSize', 15);
ylabel('Temperature in K $\longrightarrow$', 'Interpreter', 'latex', 'FontSize', 15);
legend('FontSize', 12);
saveas(1, 'Temperature', 'svg')

figure(2);
plot(height(2:end), pressure(2:end), '-o', 'LineWidth', 1, 'MarkerFaceColor', 'r', 'DisplayName', 'Pressure') % First entry is at negative height
grid on;
xlabel('Height in km $\longrightarrow$', 'Interpreter', 'latex', 'FontSize', 15);
ylabel('Pressure in Pa $\longrightarrow$', 'Interpreter', 'latex', 'FontSize', 15);
legend('FontSize', 12);
saveas(2, 'Pressure', 'svg')

figure(3);
plot(height(2:end), log(pressure(2:end)), '-o', 'LineWidth', 1, 'MarkerFaceColor', 'r', 'DisplayName', 'Logarithm of Pressure') % First entry is at negative height
grid on;
xlabel('Height in km $\longrightarrow$', 'Interpreter', 'latex', 'FontSize', 15);
ylabel('Logarithm of Pressure in Pa $\longrightarrow$', 'Interpreter', 'latex', 'FontSize', 15);
legend('FontSize', 12);
saveas(3, 'Log_Pressure', 'svg')

figure(4);
plot(height(2:end), density(2:end), '-o', 'LineWidth', 1, 'MarkerFaceColor', 'r', 'DisplayName', 'Density') % First entry is at negative height
grid on;
xlabel('Height in km $\longrightarrow$', 'Interpreter', 'latex', 'FontSize', 15);
ylabel('Density in $kg/m^3 \longrightarrow$', 'Interpreter', 'latex', 'FontSize', 15);
legend('FontSize', 12);
saveas(4, 'Density', 'svg')

figure(5);
plot(height(2:end), log(density(2:end)), '-o', 'LineWidth', 1, 'MarkerFaceColor', 'r', 'DisplayName', 'Logarithm of Density') % First entry is at negative height
grid on;
xlabel('Height in km $\longrightarrow$', 'Interpreter', 'latex', 'FontSize', 15);
ylabel('Logarithm of Density in $kg/m^3 \longrightarrow$', 'Interpreter', 'latex', 'FontSize', 15);
legend('FontSize', 12);
saveas(5, 'Log_Density', 'svg')