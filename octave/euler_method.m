function ret = euler_method(f, xrange, y0, h)
  
    % euler method says: y1 = y0 + h*f(x0, y0);
    % x0 -> y0, x1->y1 ....
    % let a = xrange(1)
    % then x = a, a+h, a+2h ....
    
    x = [xrange(1):h:xrange(2)]; % explore the x array from xrange
    y(1) = y0; % y(1) for x1 formally y0 for x0
    
    % loop through all remaining x and for find out their corresponding y
    for i=2: length(x)
        
        % apply euler for next y
        y(i) = y(i-1)+h*f(x(i-1), y(i-1)); 
    endfor
    
    ret = [x',y']; % convert horizontal array to vertical
    return;
endfunction