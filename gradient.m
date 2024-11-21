
% Conjugate gradient method.
function x = gradient(A, b, del, eps, N)
  size = (N-1) ^ 2;
  x = zeros(size, 1);  % Initializing result with zeros.

  res = b - A * x;  % Residue.
  v = res;  % Gradient direction.
  c = res' * res;  % Euclidean norm of initial residue.
  for i = 1:size  % Number of iterations in the algorithm <= size.
    if v' * v < del^2  % Check if direction isn't too small.
      return
    endif
    z = A * v;          % Value necessary to calculate the other.
    t = c / (v'*z);     % New value where t has the lowest value.
    x = x + t * v;      % Updating value of the result.
    res = res - t * z;  % Updated residue.
    printf("Iteration %d | norm: %d\n", i, norm(b - A * x, 2))
    d = res' * res;  % Euclidean norm of new residue.
    if d < eps^2     % Checks if the real result is far.
      return
    endif
    v = res + (d / c) * v;  % New direction based on old directions and lenghts of last residues.
    c = d;  % New residue turns into old one.
  endfor
end
