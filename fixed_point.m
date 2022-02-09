function [fixedp_table, execution_time, root, ea, tolerance_reached] = fixed_point(g, Xr_old, es, max_iterations)
tic;
fixedp_table = [];
abs_error = nan;
for i = 1:1:max_iterations
  Xr = g(Xr_old);
  if(g(Xr) == 0)
    fixedp_table = [fixedp_table; {i, double(Xr_old), double(Xr), double(g(Xr_old)), double(g(Xr)), 0}];
    Xr_old = Xr;
    abs_error = 0;
    tolerance_reached = 0;
   break;
  end
  if(i~=1)
    if(Xr ~= 0)
     abs_error = abs(Xr - Xr_old) / abs(Xr);
    end
  end  

  fixedp_table = [fixedp_table; {i, double(Xr_old), double(Xr), double(g(Xr_old)), double(g(Xr)), double(abs_error)}];
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