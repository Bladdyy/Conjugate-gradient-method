
% Creates A matrix.
function A = matrix(N, c)
  size = N - 1;          % Size of small matrix
  main_size = size ^ 2;  % Size of whole matrix
  N2 = N ^ 2;            % 1/h^2 = N^2
  main_diag = 1:main_size;  % Main diagonal indexes.

  % Indexes of diagonals under and above main diagonal.
  t_diag_1 = 1:(main_size - 1);
  t_diag_2 = 2:main_size;

  % Cutting values from these diagonals.
  t_diag_1(size:size:end) = [];
  t_diag_2(size:size:end) = [];


  % Indexes of diagonals from -I.
  diag_1 = 1:(main_size - size);
  diag_2 = (size + 1):main_size;

  rows = [main_diag, t_diag_1 ,t_diag_2, diag_1, diag_2];  % Row indexes.
  cols = [main_diag, t_diag_2, t_diag_1, diag_2, diag_1];  % Column indexes.

  % Corresponding values.
  values = [(4 * N2 + c) * ones(1, main_size), -N2 * ones(1, (2 * (size - 1) * size) + (2 * (main_size - size)))];

  % Parsing the matrix.
  A = sparse(rows, cols, values, main_size, main_size);
end
