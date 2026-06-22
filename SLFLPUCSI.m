function y = fcn(u)
sine = u(1);
c1 = u(2);
c2 = u(3);
c3 = u(4);
c4 = u(5);

s1 = 0;
s2 = 0;
s3 = 0;

if(sine >= c1)
    s1=1;
end
if(sine < c1 && sine >= c2)
    s1=1;s3=1; 
end
if(sine >= 0 && (sine < c2 && sine >= c3))
    s1=1;s2=1;s3=1;
end
if(sine < 0 && (sine < c2 && sine >= c3))
    s1=0;s2=0;s3=0;
end
if(sine < c3 && sine >= c4)
    s3=1;
end
if(sine < c4)
    s2=1;s3=1;
end

y = [s1;s2;s3];