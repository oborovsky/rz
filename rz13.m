% a = 1;
% si2 = 0.5;
% eps = 0.13;
% N= 50;
% X11 = [0.159, -0.085, 0.067, 2.318, 1.636, 0.336, 1.652, 0.552, 1.188, 0.364];
% X12 = [0.395, -0.076, 0.653, 1.223, 1.501, 0.739, 0.642, 0.770, 0.987, 0.243];
% X13 = [0.545,  1.148, 0.693, 1.496, 0.973, 2.051, 1.230, 1.743, 0.700, 1.030];
% X14 = [0.761,  2.822, 0.953, 0.534, 1.430, 0.751, 0.813, 1.788, 0.480, 0.430];
% X15 = [1.810,  0.811, 1.280, 1.859, 0.882, 0.665, 1.381, 1.670, 0.173, 0.432];
% X1 = [X11;X12;X13;X14;X15];

% X = [X11 X12 X13 X14 X15];
% sum = nansum(X);
% Xavg = mean(X);
% 
% n = size(X,2);
% S = 0;
% % for i = 1:n
% %   S = S + (X(i) - Xavg)^2;
% % end
% S20 = var(X);
% S0 = std(X);
% S2 = (n-1)*var(X)/n;
% X1 = [X11 X12];
% X2 = [X13 X14 X15];
% s1 = var(X1);
% s2 = var(X2);
N = 30;
Y11 = [0.196, 0.004, 0.891, 0.431, 0.248, 0.141, 0.079, 0.503, 0.361, 0.990];
Y12 = [0.274, 0.792, 0.241, 0.881, 0.837, 0.420, 0.829, 0.968, 0.554, 0.137];
Y13 = [0.733, 0.345, 0.896, 0.069, 0.160, 0.627, 0.616, 0.116, 0.068, 0.666];
Y = [Y11 Y12 Y13];
Y1 = [Y11;Y12;Y13];
% fid = fopen('z13.txt','w');
% [n,m] = size(Y1);
% for i = 1:n
%    for j=1:m
%         fprintf(fid,"%1.3f\t",Y1(i,j));
%     end
%     fprintf(fid,"\n");
% end
% fclose(fid);
[f,x] = ecdf(Y);
% stairs(x,f);
% grid('on');
xx = sort(Y);
k = 5;
[f1,x1] = hist(xx,k);
h = 1/k;
for i=1:k
    p(i) = h;
end
np = length(Y)*p;
z = 0;
for i = 1:length(f1)
    z = z + (f1(i) - np(i))^2/np(i);
end
