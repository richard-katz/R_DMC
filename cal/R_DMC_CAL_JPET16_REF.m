%**************************************************************************
%*****  R_DMC CALIBRATION EXAMPLE FILE  ***********************************
%**************************************************************************
%
% COPIRIGHT (C) 2015
% 	  Tobias Keller [tobias.keller@earth.ox.ac.uk] 
% 	  University of Oxford
% 	  FOALAB
% 	  Earth Sciences
% 	  South Parks Road
% 	  Oxford, OX1 3AN
% 	  United Kingdom
%
% PROJECT   R_DMC
% FILENAME  R_DMC_Cal_HydrCarbMantle.m
% 
% LICENSE:  R_DMC is free software: you can redistribute it and/or modify 
% it under the terms of the GNU General Public License as published by
% the Free Software Foundation, version 3.
% 
% R_DMC is distributed in the hope that it will be useful, 
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU General Public License for more details.
% 
% You should have received a copy of the GNU General Public License
% along with this program.  If not, see <http://www.gnu.org/licenses/>.
% 
%
% HELP:  This file contains an example calibration for hydrated and carbonated
% mantel melting in a four-component compositional space of dunite, MORB,
% hydrated MORB-type silicate with 5 wt % H2O, and carbonated MORB-type
% silicate with 20 wt % CO2.

% set number of components for R_DMC method  [USER SPEC]
PAR.nc  =  4;

% set string with component name to appear in figure legends
PAR.CompStr  =  {'dunite~','morb~','hmorb~','cmorb~'};

% specify calibration parameters for all components below [USER SPEC]

% set pure component melting points T_m^i at P=0
PAR.T0(1)  =  1780;                  
PAR.T0(2)  =  1000;
PAR.T0(3)  =  710;
PAR.T0(4)  =  640;

% choose type of parameterisation for T_m^i(P)
PAR.Tm_P_mode  = 'quadratic';

% set coeff. for linear P-dependence of T_m^i [K/GPa]
PAR.A(1)   =   45;
PAR.A(2)   =  112;
PAR.A(3)   =   40.8;
PAR.A(4)   =   30.1;

% set coeff. for quadratic P-dependence of T_m^i [K/GPa^2]
PAR.B(1)   =  -2;
PAR.B(2)   =  -3.37;
PAR.B(3)   =  -1.54;
PAR.B(4)   =  -1.88;

% set latent heat of pure components L^i [J/kg]
PAR.L(1)   =  600e3;
PAR.L(2)   =  450e3;
PAR.L(3)   =  350e3;
PAR.L(4)   =  350e3;

% set coeff. for T-dependence of distribution coefficients K^i
PAR.r(1)   =  60;
PAR.r(2)   =  30;
PAR.r(3)   =  30;
PAR.r(4)   =  30;


