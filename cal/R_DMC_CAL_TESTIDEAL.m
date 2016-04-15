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
PAR.T0(1)  =  1700;                  
PAR.T0(2)  =  1300;
PAR.T0(3)  =  1100;
PAR.T0(4)  =   900;
PAR.T0(5)  =   700;

% choose type of parameterisation for T_m^i(P)
PAR.Tm_P_mode  = 'quadratic';

% set first coeff. for P-dependence of T_m^i [GPa]
PAR.A(1)   =   75;
PAR.A(2)   =   75;
PAR.A(3)   =   75;
PAR.A(4)   =   75;
PAR.A(5)   =   75;

% set second coeff. for P-dependence of T_m^i [1]
PAR.B(1)   =  1;
PAR.B(2)   =  1;
PAR.B(3)   =  1;
PAR.B(4)   =  1;
PAR.B(5)   =  1;

% set latent heat of pure components L^i [J/kg]
PAR.L(1)   =  600e3;
PAR.L(2)   =  450e3;
PAR.L(3)   =  400e3;
PAR.L(4)   =  350e3;
PAR.L(5)   =  300e3;

% choose type of parameterisation for K^i(T)
PAR.K_T_mode  = 'direct_exponential';

% set coeff. for T-dependence of distribution coefficients K^i
PAR.r(1)   =  80;
PAR.r(2)   =  80;
PAR.r(3)   =  80;
PAR.r(4)   =  80;
PAR.r(5)   =  80;



