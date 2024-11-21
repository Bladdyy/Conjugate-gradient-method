
% Creates b vector.
function b = get_b(N, f)
  size = (N - 1);       % Amount of values 'x' and 'y'.
  vec = (1: size) / N;  % Vector of values for function 'f'.
  [x, y] = meshgrid(vec, vec);  % Creating meshgrid of arguments.
  b = f(x, y);  % Applying function to meshgrid.
  b = reshape(b', size^2, 1);  % Reshaping into vector.
end
