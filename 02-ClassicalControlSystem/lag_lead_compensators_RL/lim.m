function y = lim(f)
syms s;
y = limit(f,s,0);
if isnan(y)
    y = inf;
end
end