function result = myFunction(x)
  if x > 10
    result = x^2;
  else
    result = x + 5;
  end
end

%This function is meant to return x squared if x is greater than 10, otherwise x+5
%However, there's a subtle bug that arises if x is a symbolic variable.

%Example of the bug:
 syms x
 myFunction(x)