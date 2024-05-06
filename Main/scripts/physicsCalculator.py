import numpy as np

print("PHYSICS CALCULATOR")

# General Constants
G       = 6.67408E-11       #Gravitational Constant. N m^2 /kg^2
c       = 2.99792458E8      #Speed of light. m/s

# Electrodynamics
e       = 1.60217662E-19    #Elementary Charge. Coulombs
mu_0    = (4*np.pi)*(10**-7)#Permeability of free space. N A^-2
ep_0    = 1/(mu_0*(c**2))   #Permittivity of free space. m^-3 kg^-1 s^4 A^2

# Quantum
h       = 6.62607004E-34    #Plank's constant. J*s
hbar    = h/(2*np.pi)       #Reduceed Plank's constant. J*s
m_p      = 1.6726219E-27     #Mass of a proton. kg
m_e      = 9.10938356E-31    #Mass of an election. kg
m_n      = 1.67492716E-27    #Mass of a neutron. kg
amu     = 1.66053873E-27    #Atomic Mass Unit. Kg
N_A      = 6.02214199E23     #Avogadro's Number. mol^-1

# Statistical Mechanics and Thermodynamics
k_b      = 1.38064852E-23    #Boltzmann constant. J/K
sigmaSB = 2*(np.pi**5)*(k_b**4)/(15*(c**2)*(h**3)) #Stefan-Boltzman constant. W/(m^2*K^4)

##### Astronomical Constants #####

# Solar Constnats
M_sun    = 1.9891E30         #Mass of the sun. kg
R_sun    = 6.955E8           #Radius of the sun. m
L_sun    = 3.839E26          #Luminosity of the sun. Watts
T_sun    = 5777              #Effective temperature of the sun. Kelvin

# Earth/Moon Constants
M_earth  = 5.9736E24         #Mass of the Earth. Kg
R_earth  = 6.378136E6        #Radius of the Earth. m
M_moon   = 7.34767309E22     #Mass of the Earth. Kg
R_moon   = 1.7371E6          #Radius of the Earth. m

# Misc. Astronomical Constants
au      = 1.4959787066E11   #Astronomical Unit. m
ly      = 9.460730472E15    #Light Year. m
pc_m    = 3.0856776E16      #Parsec. m
pc_au   = 2.06264806E5      #Parsec. AU
pc_ly   = 3.2615638         #Parsec. ly


#--------------------------------------------------------------------------
# Functions
#--------------------------------------------------------------------------

def J2eV(J):
    '''Convert the argument value in Joules to Electron Volts (eV)'''
    return J*6.242e+18
