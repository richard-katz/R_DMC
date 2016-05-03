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
% HELP:  This file contains a test calibration for idealised, linearised 
% mantle melting in a five-component compositional space, with components 
% c1,...,c5 sorter in order of increasing incompatibility and decreasing 
% concentration.

% set number of components for R_DMC method  [USER SPEC]
PAR.nc  =  5;

% set string with component name to appear in figure legends
PAR.CompStr  =  {'c1','c2','c3','c4','c5'};

% specify calibration parameters for all components below [USER SPEC]

% set pure component melting points T_m^i at P=0
PAR.T0(1)  =  1500;                  
PAR.T0(2)  =  1300;
PAR.T0(3)  =  1100;
PAR.T0(4)  =   900;
PAR.T0(5)  =   700;

% choose type of parameterisation for T_m^i(P)
PAR.Tm_P_mode  = 'quadratic';

% set first coeff. for P-dependence of T_m^i [GPa]
PAR.A(1)   =   80;
PAR.A(2)   =   80;
PAR.A(3)   =   80;
PAR.A(4)   =   80;
PAR.A(5)   =   80;

% set second coeff. for P-dependence of T_m^i [1]
PAR.B(1)   =  0;
PAR.B(2)   =  0;
PAR.B(3)   =  0;
PAR.B(4)   =  0;
PAR.B(5)   =  0;

% set entropy gain of fusion DeltaS [J/K]
PAR.dS     =  350;

% get component latent heat of fusion L^i = dS*T_0^i
PAR.L(1)   =  (PAR.T0(1)+273.15)*PAR.dS;
PAR.L(2)   =  (PAR.T0(2)+273.15)*PAR.dS;
PAR.L(3)   =  (PAR.T0(3)+273.15)*PAR.dS;
PAR.L(4)   =  (PAR.T0(4)+273.15)*PAR.dS;
PAR.L(5)   =  (PAR.T0(5)+273.15)*PAR.dS;

% choose type of parameterisation for K^i(T)
PAR.K_T_mode  = 'linear_exp';

% set coeff. for T-dependence of distribution coefficients K^i [1/K]
PAR.r(1)   =  1.46e-2;
PAR.r(2)   =  1.46e-2;
PAR.r(3)   =  1.46e-2;
PAR.r(4)   =  1.46e-2;
PAR.r(5)   =  1.46e-2;



