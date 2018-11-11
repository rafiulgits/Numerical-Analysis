function ret = runga_kutta_method_4rth_order(f, xrange, y0, h)
    
    % method says: y1 = y0 + 1/6(k1+k2+k3+k4)
    % x0 -> y0, x1->y1 ....
    % let a = xrange(1)
    % then x = a, a+h, a+2h ....
    
    
    x = [xrange(1):h:xrange(2)]; % explore the x array from xrange
    y(1) = y0; % y(1) for x1 formally y0 for x0
    
    % loop through all remaining x and for find out their corresponding y
    for i=2:length(x)
      
        % runnga kutta 4rth order itertion
        k1 = h*f(x(i-1),y(i-1));
        k2 = h*f( x(i-1)+(h/2), y(i-1)+(h/2*k1) );
        k3 = h*f( x(i-1)+(h/2), y(i-1)+(h/2*k2) );
        k4 = h*f( x(i-1)+h, y(i-1)+(h*k3) );
        
        % next y
        y(i) = y(i-1) + (1/6)*(k1+(2*k2)+(2*k3)+k4);
    endfor
    
    
    ret = [x', y']; % convert horizontal array to vertical
    return; % return
endfunction
