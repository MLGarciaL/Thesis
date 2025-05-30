function [g1, T_order, T] = static_g1(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T_order, T)
if nargin < 8
    T_order = -1;
    T = NaN(13, 1);
end
[T_order, T] = Tebaldi.sparse.static_g1_tt(y, x, params, T_order, T);
g1_v = NaN(41, 1);
g1_v(1)=1;
g1_v(2)=(-((1-params(1))/y(10)));
g1_v(3)=1;
g1_v(4)=T(12)-(y(7)+1-params(3))*params(2)*T(12);
g1_v(5)=(-((-(T(11)*T(12)))/(T(1)*T(1))));
g1_v(6)=(-1);
g1_v(7)=(-(T(4)*y(14)*y(6)*getPowerDeriv(y(3),params(1),1)));
g1_v(8)=(-(T(5)*getPowerDeriv(y(3),params(1)-1,1)));
g1_v(9)=1;
g1_v(10)=(-(y(14)*y(6)));
g1_v(11)=(-T(9));
g1_v(12)=1;
g1_v(13)=1-(1-params(3));
g1_v(14)=(-(T(3)*getPowerDeriv(y(5),1-params(1),1)));
g1_v(15)=1;
g1_v(16)=(-((-((-params(5))*(-(getPowerDeriv(1-y(5),(-params(7)),1)))))/T(1)));
g1_v(17)=(-(T(4)*y(14)*T(2)));
g1_v(18)=(-(y(14)*y(3)));
g1_v(19)=1-(1+params(9)*T(10));
g1_v(20)=(-(T(10)*y(12)*params(9)));
g1_v(21)=(-(y(10)*(-T(7))/(y(7)*y(7))*getPowerDeriv(T(7)/y(7),1/(1-params(1)),1)));
g1_v(22)=(-(y(3)*(1-params(1))*getPowerDeriv(1+y(7),1-params(8),1)/params(1)));
g1_v(23)=(-(T(1)*params(2)));
g1_v(24)=1;
g1_v(25)=1;
g1_v(26)=1;
g1_v(27)=(-1);
g1_v(28)=(-1);
g1_v(29)=(-((-(y(1)*(1-params(1))))/(y(10)*y(10))));
g1_v(30)=(-(T(6)*params(1)*getPowerDeriv(y(10),1-params(1),1)));
g1_v(31)=(-T(8));
g1_v(32)=(-1);
g1_v(33)=(-1);
g1_v(34)=1;
g1_v(35)=(-(T(10)*y(6)*params(9)));
g1_v(36)=1;
g1_v(37)=(-(T(4)*y(6)*T(2)));
g1_v(38)=(-(y(6)*y(3)));
g1_v(39)=(-(y(6)*params(9)*T(13)));
g1_v(40)=(-(y(6)*y(12)*params(9)*T(13)));
g1_v(41)=1/y(14)-params(11)*1/y(14);
if ~isoctave && matlab_ver_less_than('9.8')
    sparse_rowval = double(sparse_rowval);
    sparse_colval = double(sparse_colval);
end
g1 = sparse(sparse_rowval, sparse_colval, g1_v, 14, 14);
end
