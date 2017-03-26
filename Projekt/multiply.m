function [result]=multiply(p,q)
%% MNOZENIE QWATERNIONOW

%% Sciaganie danych
    
% Kwatyrion p
p_skalar=p(1);
p_wektor=p(2:4);

% Kwatyrion q
q_skalar=q(1);
q_wektor=q(2:4);

%% Obliczanie
wynik_Skalar=p_skalar*q_skalar-dot(p_wektor,q_wektor);
wynik_Wektor=p_skalar.*q_wektor+q_skalar.*p_wektor+cross(p_wektor,q_wektor);

%% Wynik
result=[wynik_Skalar; wynik_Wektor];

end

