function result = myFunctionSolution(x)
  if isa(x, 'sym')
    % Handle symbolic input
    result = conditional(x > 10, x^2, x + 5);
  elseif x > 10
    % Handle numeric input
    result = x^2;
  else
    result = x + 5;
  end
end

%This improved version explicitly checks the data type of x using isa().
%If x is a symbolic variable it uses the 'conditional' function to correctly perform the comparison and calculation.
%If x is numeric it proceeds as before.