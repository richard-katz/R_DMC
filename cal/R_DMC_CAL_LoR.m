%**************************************************************************
%*****  R_DMC CALIBRATION FILE  *******************************************
%**************************************************************************

% set number of components for R_DMC method  [USER SPEC]
PAR.nc  =  4;

% set string with component name to appear in figure legends
PAR.CompStr  =  {'dunite~','morb~','hmorb~','cmorb~'};

% specify calibration parameters for all components below [USER SPEC]

% set pure component melting points T_m^i at P=0
PAR.T0(1)  =  1780;                  
PAR.T0(2)  =  1027;
PAR.T0(3)  =  785;
PAR.T0(4)  =  725;

% set coeff. for linear P-dependence of T_m^i [K/GPa]
PAR.A(1)   =   45;
PAR.A(2)   =  117.4;
PAR.A(3)   =   54.5;
PAR.A(4)   =   43.3;

% set coeff. for quadratic P-dependence of T_m^i [K/GPa^2]
PAR.B(1)   =  -2;
PAR.B(2)   =  -3.94;
PAR.B(3)   =  -2.20;
PAR.B(4)   =  -2.70;

% set latent heat of pure components L^i [J/kg]
PAR.L(1)   =  600e3;
PAR.L(2)   =  450e3;
PAR.L(3)   =  350e3;
PAR.L(4)   =  350e3;

% set coeff. for T-dependence of distribution coefficients K^i
PAR.r(1)   =  50;
PAR.r(2)   =  20;
PAR.r(3)   =  20;
PAR.r(4)   =  20;


