import pandas as pd
import matplotlib.pyplot as plt
import numpy as np

columns = ['Time', 'Radial Distance from CoM of Mass', 'Height', 'Latitude', 'Longitude', 'Density', 'Uncertainty in Density', 'Pressure', 'Uncertainty in Pressure', 'Temperature', 'Uncertainty in Temperature', 'Reconstruction']
data = pd.read_csv('Cur_Data.csv', names = columns)

plt.figure(figsize = (10, 7.5))
plt.scatter(data.Height, data.Temperature, s = 2, label = "Temperature (in K)")
plt.ylabel('Atmospheric Temperature (in K) $\\longrightarrow$', fontsize = 15)
plt.xlabel('Height Above CoM of Mars (in km) $\\longrightarrow$', fontsize = 15)
plt.grid()
plt.title("Descent Characteristics of Temperature", fontsize = 21)
plt.legend(fontsize = 15)
plt.savefig("Graphs/Temperature_Plot.png")

plt.figure(figsize = (10, 7.5))
plt.scatter(data.Height, data.Temperature, s = 2, label = "Temperature (in K)")
plt.ylabel('Atmospheric Temperature (in K) $\\longrightarrow$', fontsize = 15)
plt.xlabel('Height Above CoM of Mars (in km) $\\longrightarrow$', fontsize = 15)
plt.grid()
plt.ylim(0, 500)
plt.title("Descent Characteristics of Temperature", fontsize = 21)
plt.legend(fontsize = 15)
plt.savefig("Graphs/Cleaned_Temperature_Plot.png")

plt.figure(figsize = (10, 7.5))
plt.scatter(data.Height, data.Pressure, s = 2, label = "Pressure (in Pa)")
plt.ylabel('Atmospheric Pressure (in Pa) $\\longrightarrow$', fontsize = 15)
plt.xlabel('Height Above CoM of Mars (in km) $\\longrightarrow$', fontsize = 15)
plt.grid()
plt.title("Descent Characteristics of Pressure", fontsize = 21)
plt.legend(fontsize = 15)
plt.savefig("Graphs/Pressure_Plot.png")

m, c = np.polyfit(data.Height, np.log(data.Pressure), 1)

plt.figure(figsize = (10, 7.5))
plt.scatter(data.Height, np.log(data.Pressure), s = 2, label = "Logarithmic Pressure (in Pa)")
plt.plot(data.Height, m * data.Height + c, label = "Fitted Logarithmic Pressure (in Pa)", color = 'r')
plt.ylabel('Logarithm of Atmospheric Pressure (in Pa) $\\longrightarrow$', fontsize = 15)
plt.xlabel('Height Above CoM of Mars (in km) $\\longrightarrow$', fontsize = 15)
plt.grid()
plt.title("Descent Characteristics of Pressure", fontsize = 21)
plt.legend(fontsize = 15)
plt.savefig("Graphs/Log_Pressure_Plot.png")

plt.figure(figsize = (10, 7.5))
plt.scatter(data.Height, data.Density, s = 2, label = "Density (in $kg/m^3$)")
plt.ylabel('Atmospheric Density (in $kg/m^3$) $\\longrightarrow$', fontsize = 15)
plt.xlabel('Height Above CoM of Mars (in km) $\\longrightarrow$', fontsize = 15)
plt.grid()
plt.title("Descent Characteristics of Density", fontsize = 21)
plt.legend(fontsize = 15)
plt.savefig("Graphs/Density_Plot.png")

m, c = np.polyfit(data.Height, np.log(data.Density), 1)

plt.figure(figsize = (10, 7.5))
plt.scatter(data.Height, np.log(data.Density), s = 2, label = "Logarithmic Density (in $kg/m^3$)")
plt.plot(data.Height, m * data.Height + c, color = 'r', label = "Fitted Logarithmic Density (in $kg/m^3$)")
plt.ylabel('Logarithm of Atmospheric Density (in $kg/m^3$) $\\longrightarrow$', fontsize = 15)
plt.xlabel('Height Above CoM of Mars (in km) $\\longrightarrow$', fontsize = 15)
plt.grid()
plt.title("Descent Characteristics of Density", fontsize = 21)
plt.legend(fontsize = 15)
plt.savefig("Graphs/Log_Density_Plot.png")