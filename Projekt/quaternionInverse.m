function [p_inv]=quaternionInverse(p)

    if (p(1)==0 && p(2)==0 && p(3)==0 && p(4)==0)
        
        p_inv=[0;0;0;0];
        
    else
        mianownik=(p(1)^2+p(2)^2+p(3)^2+p(4)^2);
        p_inv=[p(1)/mianownik; -p(2)/mianownik;...
            -p(3)/mianownik;-p(4)/mianownik];
    end
    p_inv;
end