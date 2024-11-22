
% Plots vector x of size (N - 1)^2 as a mesh.
function show (N, x)
  size = N - 1;  % Size.
  x = reshape(x', size, size);  % Reshaping results to get mesh.
  x = [zeros(size, 1), x, zeros(size, 1)];  % Adding zeros at the sides.
  x = [zeros(1, size + 2); x; zeros(1, size + 2)];  % Adding zeros at the top and the bottom.
  mesh(x);  % Plot.

  % Naming.
  xlabel('X-axis');
  ylabel('Y-axis');
  zlabel('u - values');
  title('result plot');
end
