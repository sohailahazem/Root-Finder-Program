function [secant_table, execution_time, root, ea, tolerance_reached] = secant(fn, x0, x1, es, max_iterations)
tic;
secant_table = [];
abs_error = nan;
for i = 1:1:max_iterations
  x = x1 - (fn(x1) * (x0 - x1))/(fn(x0) - fn(x1)); 
  
  if(fn(x) == 0)
   secant_table = [secant_table; {i, x0, x1, fn(x0), fn(x1), x, fn(x), 0}];
   x1 = x;
   abs_error = 0;
   tolerance_reached = 0;
   break;
  end
  
  if(i~=1)
    if(x ~= 0)
     abs_error = abs(x - x1) / abs(x);
    end
  end

  secant_table = [secant_table; {i, x0, x1, fn(x0), fn(x1), x, fn(x), abs_error}];
  x0 = x1;
  x1 = x;
  
  if (abs_error <= es)
    tolerance_reached = 0;
    break;
  end
end
if(i >= max_iterations)
  tolerance_reached = 1;
end
root = x1;
ea = double(abs_error);
execution_time = toc;
end

