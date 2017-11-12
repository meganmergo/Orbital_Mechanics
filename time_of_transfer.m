function time = time_of_transfer(R1, R2, mu)
    %% Calculate the wait time after Hohmann transfer for return transfer
    %
    % Jeremy Penn
    % 06/11/17
    %
    % Output:   otime - transfer flight time [s]
    %
    clc;
    
    %% constants
    if nargin == 2
        mu = 132.71e9; % [km^3/s^2]
    end
    
    %% calculate the transfer time
    time = (pi/sqrt(mu)) * ( (R1 + R2)/2 )^1.5; %[s]
    
    %% convert to days and print
    t = time / 86400;
    fprintf('The transfer will take %.2f days\n', t)
end