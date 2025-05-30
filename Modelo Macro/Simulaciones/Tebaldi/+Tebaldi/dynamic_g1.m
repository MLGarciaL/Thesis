function g1 = dynamic_g1(T, y, x, params, steady_state, it_, T_flag)
% function g1 = dynamic_g1(T, y, x, params, steady_state, it_, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T             [#temp variables by 1]     double   vector of temporary terms to be filled by function
%   y             [#dynamic variables by 1]  double   vector of endogenous variables in the order stored
%                                                     in M_.lead_lag_incidence; see the Manual
%   x             [nperiods by M_.exo_nbr]   double   matrix of exogenous variables (in declaration order)
%                                                     for all simulation periods
%   steady_state  [M_.endo_nbr by 1]         double   vector of steady state values
%   params        [M_.param_nbr by 1]        double   vector of parameter values in declaration order
%   it_           scalar                     double   time period for exogenous variables for which
%                                                     to evaluate the model
%   T_flag        boolean                    boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   g1
%

if T_flag
    T = Tebaldi.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(14, 19);
g1(1,4)=1;
g1(1,6)=(-(T(4)*y(17)*y(9)*getPowerDeriv(y(6),params(1),1)));
g1(1,8)=(-(T(3)*getPowerDeriv(y(8),1-params(1),1)));
g1(1,9)=(-(T(4)*y(17)*T(2)));
g1(1,17)=(-(T(4)*y(9)*T(2)));
g1(2,4)=(-((1-params(1))/y(13)));
g1(2,11)=1;
g1(2,13)=(-((-(y(4)*(1-params(1))))/(y(13)*y(13))));
g1(3,6)=(-(T(5)*getPowerDeriv(y(6),params(1)-1,1)));
g1(3,13)=(-(T(6)*params(1)*getPowerDeriv(y(13),1-params(1),1)));
g1(3,16)=1;
g1(4,6)=1;
g1(4,10)=(-(y(13)*(-T(7))/(y(10)*y(10))*getPowerDeriv(T(7)/y(10),1/(1-params(1)),1)));
g1(4,13)=(-T(8));
g1(5,6)=(-(y(17)*y(9)));
g1(5,7)=1;
g1(5,9)=(-(y(17)*y(6)));
g1(5,17)=(-(y(9)*y(6)));
g1(6,6)=(-T(9));
g1(6,10)=(-(y(6)*(1-params(1))*getPowerDeriv(1+y(10),1-params(8),1)/params(1)));
g1(6,15)=1;
g1(7,2)=(-(1+params(9)*T(10)));
g1(7,9)=1;
g1(7,17)=(-(y(2)*params(9)*T(14)));
g1(8,9)=(-(T(10)*y(15)*params(9)));
g1(8,11)=1;
g1(8,15)=(-(T(10)*y(9)*params(9)));
g1(8,17)=(-(y(9)*y(15)*params(9)*T(14)));
g1(9,8)=1;
g1(9,13)=(-1);
g1(9,14)=(-1);
g1(10,1)=(-(1-params(3)));
g1(10,7)=1;
g1(10,12)=(-1);
g1(11,5)=T(13);
g1(11,18)=(-((y(10)+1-params(3))*params(2)*params(4)*getPowerDeriv(y(18),(-params(6)),1)));
g1(11,10)=(-T(11));
g1(12,5)=(-((-(T(12)*T(13)))/(T(1)*T(1))));
g1(12,8)=(-((-((-params(5))*(-(getPowerDeriv(1-y(8),(-params(7)),1)))))/T(1)));
g1(12,11)=1;
g1(13,4)=1;
g1(13,5)=(-1);
g1(13,12)=(-1);
g1(14,3)=(-(params(11)*1/y(3)));
g1(14,17)=1/y(17);
g1(14,19)=(-1);

end
