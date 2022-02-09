function [Falseposition_table,execution_time, root, ea, tolerance_reached] = false_position(fn,Xl, Xu, es, max_iterations) 
tic;
Falseposition_table = [];
Xr_old = 0;
abs_error = nan;

for i=1:1:max_iterations
     Xr =(Xl*fn(Xu) - Xu*fn(Xl)) / (fn(Xu) - fn(Xl));
     
   if(fn(Xr) == 0)
      Falseposition_table = [Falseposition_table; {i , Xl, fn(Xl), Xu, fn(Xu), Xr, fn(Xr), 0}];
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
    
   
   Falseposition_table = [Falseposition_table; {i , Xl, fn(Xl), Xu, fn(Xu), Xr, fn(Xr), abs_error}];
   
   
if fn(Xl)*fn(Xr) < 0 
           Xu = Xr;
        else 
          Xl = Xr;          
end
        Xr_old = Xr;
   
    
   if(abs_error <= es)
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