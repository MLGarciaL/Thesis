function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
% function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
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
%   residual
%

if T_flag
    T = Tebaldi.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(14, 1);
    residual(1) = (y(4)) - (T(3)*T(4));
    residual(2) = (y(11)) - (y(4)*(1-params(1))/y(13));
    residual(3) = (y(16)) - (T(5)*T(6));
    residual(4) = (y(6)) - (y(13)*T(8));
    residual(5) = (y(7)) - (y(17)*y(9)*y(6));
    residual(6) = (y(15)) - (y(6)*T(9));
    residual(7) = (y(9)) - ((1+params(9)*T(10))*y(2));
    residual(8) = (y(11)) - (T(10)*y(9)*y(15)*params(9));
    residual(9) = (y(8)) - (y(13)+y(14));
    residual(10) = (y(7)) - ((1-params(3))*y(1)+y(12));
    residual(11) = (T(1)) - ((y(10)+1-params(3))*T(11));
    residual(12) = (y(11)) - (T(12)/T(1));
    residual(13) = (y(4)) - (y(5)+y(12));
    residual(14) = (log(y(17))) - ((1-params(11))*log(params(10))+params(11)*log(y(3))+x(it_, 1));

end
