function [bisection_table,execution_time, root, ea, tolerance_reached] = bisection(fn,Xl, Xu, es, max_iterations) 
tic;
bisection_table = [];
%Xr_old = 0; %i dont understand why 
abs_error = nan;
for i=1:1:max_iterations
     Xr = (Xl + Xu)/2;
     
   if(fn(Xr) == 0)
      bisection_table = [bisection_table; {i , Xl, fn(Xl), Xu, fn(Xu), Xr, fn(Xr),0}];
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
   
  
   
bisection_table = [bisection_table; {i , Xl, fn(Xl), Xu, fn(Xu), Xr, fn(Xr), abs_error}];
 
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
execution_time=toc;
end



