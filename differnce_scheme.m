N = 13;
x = linspace(0, 2*pi, N);

f = sin(x);

for i = 1:length(x)
    fprintf('x[%i] = %.3f ', i, x(i));
    fprintf('f = %.3f ', f(i));
    fprintf('\n');
end

dfdx = zeros(1,N);
% forward difference scheme
for i = 1:length(x)
    if i == length(x)
        dfdx(i) = (f(2) - f(1)) / (x(2) - x(1));
    else
        dfdx(i) = (f(i+1) - f(i)) / (x(i+1) - x(i));
    end
end

% backward difference scheme
for i = 1:length(x)
    if i == 1
        dfdx(i) = (f(length(x)) - f(length(x)-1)) / (x(length(x)) - x(length(x)-1));
    else
        dfdx(i) = (f(i) - f(i-1)) / (x(i) - x(i-1));
    end
end



plot(x, dfdx)