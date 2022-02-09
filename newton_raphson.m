function [newton_table, execution_time, root, ea, tolerance_reached] = newton_raphson(Xr_old, es, fn, max_iterations)
tic;
newton_table = [];
abs_error = nan;
syms x;
diff_of_function = matlabFunction(diff(fn(x)));
for i = 1:1:max_iterations
    
  Xr = Xr_old - (fn(Xr_old)/diff_of_function(Xr_old));
  
 if(fn(Xr) == 0)
      newton_table = [newton_table; {i, Xr_old, Xr, fn(Xr_old), fn(Xr), 0}];
      Xr_old = Xr;
      abs_error = 0;
      tolerance_reached = 0;
  break;
 end
 
  if(i~=1)
     if (Xr~=0)
       abs_error = (abs(Xr - Xr_old) / abs(Xr));    
     end
  end
  newton_table = [newton_table; {i, Xr_old, Xr, fn(Xr_old), fn(Xr), abs_error}];
   Xr_old = Xr;
   if (abs_error <= es)
       tolerance_reached = 0;
      break;
   end
 
end  
if(i >= max_iterations)
  tolerance_reached = 1;
end
root = Xr_old;
ea = double(abs_error);
execution_time = toc;
end