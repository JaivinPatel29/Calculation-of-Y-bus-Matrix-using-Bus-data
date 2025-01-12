% DONE BY 22BEE051 JAIVIN PATEL
% bus-shunt 
% 1-bus number
% 2- capacitive admittance shunt (only magnitude)

% line data 
% 1-start bus 
% 2-end bus
% 3- impedance (series)(r+jx)
% 4-admittance shunt 
bus_shunt = [3 0.04]
line_data = [1 2 0.042+0.168j  0.082j ;
             2 3 0.031+0.126j  0.062j ;
             3 1 0.031+0.126j  0.062j ]