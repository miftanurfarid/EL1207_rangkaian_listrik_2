function [vt, vt1, vt2] = myFun(vm, omega, t, theta, sigma)
%myFun - Description
%
% Syntax: vt = myFun(vm, omega, t, theta, sigma)
%
% Melakukan perhitungan frekuensi kompleks kemudian
% melakukan plotting grafik responnya.
% 
% Input : 
% vm    : Tegangan Maksimum (volt)
% omega : Frekuensi sudut (rad / s)
% t     : Waktu (s)
% theta : Fasa (rad)
% sigma : Frekuensi neper (np/s)
    
% Fungsi Sinusoidal
    vt1 = vm * cos(omega * t + theta);

    vt2 = exp(-sigma * t);

    vt = vt1 .* vt2;
end