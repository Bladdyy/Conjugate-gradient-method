
% Calculates matrix and vector. Uses Conjugate gradient method. Plots the result.
function calc_show(N, c, f, del, eps)
  A = matrix(N, c);  % Get matrix A.
  b = get_b(N, f);   % Get vector b.
  result = gradient(A, b, del, eps, N);  % Conjugate gradient method.
  show(N, result)  % Plot the results.
end


% fun = @(x, y) x
% fun = @(x, y) x + y
