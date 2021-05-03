function nd = days(mo, da, leap)

M = [31,28,31,30,31,30,31,31,30,31,30,31];
ML  = [31,29,31,30,31,30,31,31,30,31,30,31];


if leap == 0
    if mo == 1
        nd = da;
    elseif mo > 1 && mo <=12
        nd = da + sum(M(1:mo-1));
    elseif mo > 12 || mo <=0
        error("Not a valid month number")
    end
    if da > M(mo) || da < 1
        error("invalid day input")
    end
elseif leap == 1
    if leap > 1 || leap < 0
        error("invalid leap year")
    end
    if mo == 1
        nd = da;
    elseif mo > 1 && mo <=12
        nd = da + sum(ML(1:mo-1));
    end
    if da > ML(mo) || da < 1
        error("invalid day input")
    end
elseif leap < 0 || leap >1
    error("Not a valid leap number")
    
end
end
