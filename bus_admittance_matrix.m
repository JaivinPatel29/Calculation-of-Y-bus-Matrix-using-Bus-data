% DONE BY 22BEE051 JAIVIN PATEL

lfdata 

[ybuses]=ybus(line_data,bus_shunt)
bus_shunt(:,2) = complex(0, bus_shunt(:,2))
n_lines = length(line_data (:,1))
n_buses = max(max(line_data(:,1:2)))
ybuses = zeros(n_buses,n_buses)


for l=1 : n_lines
i = line_data(l,1);
j = line_data(l,2);
ybuses(i,i) = ybuses(i,i) + (1/line_data(l,3)) + (line_data(l,4))/2 ;
ybuses(j,j) = ybuses(j,j) + (1/line_data(l,3)) + (line_data(l,4))/2 ;
ybuses(i,j) = ybuses(i,j) + (-1/line_data(l,3)) ;
ybuses(j,i) = ybuses(j,i) + (-1/line_data(l,3)) ;
end
for k = 1:length(bus_shunt(:,1)) 
i= bus_shunt(k,1);
ybuses(i,i) = ybuses(i,i) + bus_shunt(k,2) ;
end
ybuses