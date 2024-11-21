
% Plots vector x of size (N - 1)^2 as a mesh.
function show (N, x)
  size = N - 1;  % Size.
  x = reshape(x', size, size);  % Reshaping results to get mesh.
  mesh(x);  % Plot.

  % Naming.
  xlabel('X-axis');
  ylabel('Y-axis');
  zlabel('u - values');
  title('result plot');
end
