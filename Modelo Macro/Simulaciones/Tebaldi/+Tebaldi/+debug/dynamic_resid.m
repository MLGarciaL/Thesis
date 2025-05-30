function [lhs, rhs] = dynamic_resid(y, x, params, steady_state)
T = NaN(12, 1);
lhs = NaN(14, 1);
rhs = NaN(14, 1);
T(1) = params(4)*y(16)^(-params(6));
T(2) = y(17)^params(1);
T(3) = y(28)*y(20)*T(2);
T(4) = y(19)^(1-params(1));
T(5) = params(1)*y(24)^(1-params(1));
T(6) = y(17)^(params(1)-1);
T(7) = params(1)^2;
T(8) = (T(7)/y(21))^(1/(1-params(1)));
T(9) = (1-params(1))*(1+y(21))^(1-params(8))/params(1);
T(10) = y(28)^params(2);
T(11) = params(4)*y(30)^(-params(6))*params(2);
T(12) = (-((-params(5))*(1-y(19))^(-params(7))));
lhs(1) = y(15);
rhs(1) = T(3)*T(4);
lhs(2) = y(22);
rhs(2) = y(15)*(1-params(1))/y(24);
lhs(3) = y(27);
rhs(3) = T(5)*T(6);
lhs(4) = y(17);
rhs(4) = y(24)*T(8);
lhs(5) = y(18);
rhs(5) = y(28)*y(20)*y(17);
lhs(6) = y(26);
rhs(6) = y(17)*T(9);
lhs(7) = y(20);
rhs(7) = (1+params(9)*T(10))*y(6);
lhs(8) = y(22);
rhs(8) = T(10)*y(20)*y(26)*params(9);
lhs(9) = y(19);
rhs(9) = y(24)+y(25);
lhs(10) = y(18);
rhs(10) = (1-params(3))*y(4)+y(23);
lhs(11) = T(1);
rhs(11) = (y(21)+1-params(3))*T(11);
lhs(12) = y(22);
rhs(12) = T(12)/T(1);
lhs(13) = y(15);
rhs(13) = y(16)+y(23);
lhs(14) = log(y(28));
rhs(14) = (1-params(11))*log(params(10))+params(11)*log(y(14))+x(1);
end
